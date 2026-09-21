"""Offline evidence extraction; never imports/runs the server or sends packets.

Run after JADX 1.5.6 --no-res and Apktool 3.0.3 d -r into build/research.
Uses only Python's standard library. Output is reproducible from the bundled APK.
"""
from pathlib import Path
import hashlib
import gzip
import json
import re
import struct
import zipfile
import zlib

ROOT = Path(__file__).resolve().parents[2]
OUT = Path(__file__).resolve().parent
APK = ROOT / "server/truthan_resources_v1.17.apk"
SMALI = ROOT / "build/research/apktool/smali/com/t4game"
METHODS = {
    "GameWorld": ["processViewSpriteMessage", "readSpriteView", "readSpriteView1",
                  "ReadNpcFlagFuction", "readOutfitSpecialEffectDataList",
                  "processNpcLeadListInSceneMessage", "setNPCFunctionFlag",
                  "processChangeNpcFlag", "refreshNpcList", "sendNpcTransportMessage"],
    "IoBuffer": ["getByte", "getUnsignedByte", "getShort", "getInt", "getString"],
    "GSprite": ["setAction", "drawSelected", "setObjectDataId", "initImageDataList"],
    "GObjectData": ["init", "getActionAnimDataIndex"],
    "ForceGuide": ["<init>", "isNpcInUserView", "getUnitDynamic", "isActionDynamicDone"],
    "GScene": ["init", "initFromJar", "initFromBytes", "getSpriteFromHash", "addSprite"],
    "GNPC": ["<init>"],
    "GDataManager": ["<clinit>", "getFromPool", "getObjectData", "initObjectData"],
    "GDoodadObject": ["init"],
}


def sha(data):
    return hashlib.sha256(data).hexdigest()


class Reader:
    def __init__(self, data):
        self.data, self.pos = data, 0

    def take(self, n):
        assert n >= 0 and self.pos + n <= len(self.data), (self.pos, n)
        result = self.data[self.pos:self.pos + n]
        self.pos += n
        return result

    def u8(self):
        return self.take(1)[0]

    def i16(self):
        return struct.unpack('>h', self.take(2))[0]


def inspect_obj(z, oid):
    path = f'data/obj/{oid}.obj'
    data = z.read(path)
    r = Reader(data)
    image_type, object_type, slots = r.u8(), r.u8(), r.u8()
    refs = [(r.i16(), r.u8()) for _ in range(slots)]
    bounds = [r.i16() for _ in range(4)]
    frame_count = r.u8()
    frames, frame_offsets = b'', []
    if frame_count:
        size = r.i16()
        frame_offsets = [r.i16() for _ in range(frame_count)]
        frames = r.take(size)
    anim_count = r.u8()
    anims, anim_offsets = b'', []
    if anim_count:
        size = r.i16()
        anim_offsets = [r.i16() for _ in range(anim_count)]
        anims = r.take(size)
    actions = b''
    if object_type == 1:
        r.u8()  # consumed, unused in GObjectData.init
        actions = r.take(3 * 20 * 4)
    standing = []
    for direction in range(4):
        idx = actions[direction] if actions else 255
        valid_index = idx != 255 and idx < len(anim_offsets)
        off = anim_offsets[idx] if valid_index else -1
        count = anims[off + 2] if valid_index and 0 <= off < len(anims) - 2 else 0
        valid_count = 0 < count <= 127 and off + 3 + count * 4 <= len(anims)
        frame_ids = list(anims[off + 3:off + 3 + count * 4:4]) if valid_count else []
        standing.append(dict(direction=direction, animation=idx, frame_count=count,
                             frame_ids=frame_ids,
                             valid=valid_count and all(i < frame_count for i in frame_ids)))
    return dict(path=path, sha256=sha(data), image_type=image_type,
                object_type=object_type, image_refs=refs, bounds=bounds,
                frame_count=frame_count, animation_count=anim_count,
                standing_action_0=standing, bytes_consumed=r.pos, size=len(data),
                images=[inspect_image(z, i) for i, _ in refs if i != -1])


def inspect_image(z, iid):
    """Read GImageData's container and validate PNG structure, not Android rendering."""
    data = z.read(f'data/img/{iid}.img')
    r = Reader(data)
    image_type = r.u8()
    meta = {}
    if image_type == 0:
        x, y = r.u8(), r.u8()
        assert 0 < x <= 127 and 0 < y <= 127
        r.take(x * y)
        meta.update(xnum=x, ynum=y)
    elif image_type == 1:
        for _ in range(r.u8()):
            r.take(3)
            count = r.u8()
            assert count <= 127
            r.take(count * 2)
        clips = r.u8()
        r.take(clips * 7)
        meta['clip_count'] = clips
    else:
        x, y = r.u8(), r.u8()
        assert 0 < x <= 127 and 0 < y <= 127
        meta.update(xnum=x, ynum=y)
    size = struct.unpack('>i', r.take(4))[0]
    png = r.take(size)
    assert png[:8] == b'\x89PNG\r\n\x1a\n'
    p = Reader(png)
    p.take(8)
    chunks, compressed = [], b''
    while p.pos < len(png):
        length = struct.unpack('>I', p.take(4))[0]
        kind, payload = p.take(4), p.take(length)
        crc = struct.unpack('>I', p.take(4))[0]
        assert zlib.crc32(kind + payload) == crc
        chunks.append(kind.decode('ascii'))
        if kind == b'IHDR':
            meta['png_dimensions'] = list(struct.unpack('>II', payload[:8]))
        if kind == b'IDAT':
            compressed += payload
    assert chunks[0] == 'IHDR' and chunks[-1] == 'IEND'
    meta['inflated_bytes'] = len(zlib.decompress(compressed))
    return dict(id=iid, exists=True, sha256=sha(data), image_type=image_type,
                bytes_consumed=r.pos, size=len(data), png_crc_and_zlib_valid=True, **meta)


def main():
    snippets = ['# Exact smali excerpts; generated, not hand edited.\n']
    for cls, names in METHODS.items():
        path = SMALI / (cls + '.smali')
        source = path.read_text(encoding='utf-8')
        for match in re.finditer(r'^\.method .*?^\.end method', source, re.M | re.S):
            block = match.group()
            signature = block.splitlines()[0]
            name = signature.split('(')[0].split()[-1]
            if name in names:
                line = source[:match.start()].count('\n') + 1
                snippets.append(f'\n# {cls}.smali:{line}\n{block}\n')
    (OUT / 'entity_spawn_smali.txt').write_text(''.join(snippets), encoding='utf-8')
    with zipfile.ZipFile(APK) as z:
        report = dict(apk=str(APK.relative_to(ROOT)), apk_sha256=sha(APK.read_bytes()),
                      dex_sha256=sha(z.read('classes.dex')), search_hits=[])
        terms = ['彩云仙子', '火狐妖']
        for name in z.namelist():
            if name.endswith('/'):
                continue
            data = z.read(name)
            for term in terms:
                for enc in ['utf-8', 'utf-16-be', 'utf-16-le', 'gbk']:
                    needle = term.encode(enc)
                    start = 0
                    while (offset := data.find(needle, start)) != -1:
                        report['search_hits'].append(dict(path=name, term=term, encoding=enc,
                                                         byte_offset=offset,
                                                         context=data[max(0, offset-100):offset+len(needle)+100].decode(enc, errors='replace')))
                        start = offset + len(needle)
        report['objects'] = [inspect_obj(z, oid) for oid in [1014, 1015, 1016]]
        report['language_rows'] = []
        for name in z.namelist():
            match = re.fullmatch(r'Language/Language(\d+)\.str', name)
            if not match:
                continue
            r = Reader(z.read(name))
            global_count = r.i16()
            row = 0
            while r.pos < len(r.data):
                size = struct.unpack('>H', r.take(2))[0]
                offset = r.pos
                value = r.take(size).decode('utf-8', errors='replace')
                if any(term in value for term in terms):
                    report['language_rows'].append(dict(path=name, global_count=global_count,
                        row=row, lookup_index=int(match[1])*100+row, byte_offset=offset, text=value))
                row += 1
        report['name_code_references'] = []
        java_root = ROOT / 'build/research/jadx/sources'
        for path in java_root.rglob('*.java'):
            for line_no, line in enumerate(path.read_text(encoding='utf-8').splitlines(), 1):
                if any(term in line for term in terms):
                    report['name_code_references'].append(dict(path=path.relative_to(java_root).as_posix(),
                        line=line_no, text=line.strip()))
        report['language_lookup_references'] = []
        indices = {row['lookup_index'] for row in report['language_rows']}
        for path in java_root.rglob('*.java'):
            for line_no, line in enumerate(path.read_text(encoding='utf-8').splitlines(), 1):
                if any(int(m[1]) in indices for m in re.finditer(r'Language\.getStr\(\(byte\) 1, (\d+)\)', line)):
                    report['language_lookup_references'].append(dict(path=path.relative_to(java_root).as_posix(),
                        line=line_no, text=line.strip()))
        report['gzip_search'] = dict(entries=[], hits=[], errors=[])
        for name in z.namelist():
            if name.endswith('/'):
                continue
            raw = z.read(name)
            if not raw.startswith(b'\x1f\x8b'):
                continue
            try:
                decoded = gzip.decompress(raw)
            except (OSError, EOFError, zlib.error) as error:
                report['gzip_search']['errors'].append(dict(path=name, error=str(error)))
                continue
            report['gzip_search']['entries'].append(dict(path=name, decoded_size=len(decoded),
                                                        decoded_sha256=sha(decoded)))
            for term in terms:
                for enc in ['utf-8', 'utf-16-be', 'utf-16-le', 'gbk']:
                    offset = decoded.find(term.encode(enc))
                    if offset != -1:
                        report['gzip_search']['hits'].append(dict(path=name, term=term,
                                                                 encoding=enc, byte_offset=offset))
        report['search_scope'] = dict(entries=len(z.namelist()),
                                      encodings=['utf-8', 'utf-16-be', 'utf-16-le', 'gbk'],
                                      limitation='Literal search only; no proof of absence in encoded/compressed tables.')
        (OUT / 'entity_asset_evidence.json').write_text(json.dumps(report, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print('Wrote exact smali excerpts and APK asset evidence; no server execution.')


if __name__ == '__main__':
    main()
