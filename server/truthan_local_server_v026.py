#!/usr/bin/env python3
import socket, threading, time, pathlib, struct, traceback, zipfile, os, json, math

PORTS = [1888, 8089, 19000, 2888, 29000]
LOGDIR = pathlib.Path("truthan_packet_logs")
LOGDIR.mkdir(exist_ok=True)

# Lightweight machine-readable world state for the local AI/automation layer.
# The file lives under truthan_packet_logs/ (already gitignored) and is derived
# only from server-known scene state, cmd133 movement, and entities this server
# actually sent with cmd132.  It is telemetry; it does not alter game protocol.
STATE_PATH = pathlib.Path(
    os.environ.get("TRUTHAN_STATE_FILE", str(LOGDIR / "runtime_state.json"))
)
STATE_LOCK = threading.Lock()


def _runtime_npc_rows(visible_npcs):
    px = int(ROLE.get("x", SPAWN_X))
    py = int(ROLE.get("y", SPAWN_Y))
    rows = []
    for npc_id in sorted(visible_npcs):
        ent = visible_npcs[npc_id]
        x = int(ent.get("x", 0))
        y = int(ent.get("y", 0))
        row = {
            "id": int(npc_id),
            "name": str(ent.get("name", "")),
            "x": x,
            "y": y,
            "dx": x - px,
            "dy": y - py,
            "distance": round(math.hypot(x - px, y - py), 3),
            "can_select": bool(ent.get("can_select", 0)),
            "can_hit": bool(ent.get("can_hit", 0)),
            "source": "server_probe_cmd132",
        }
        if ent.get("object_data_id") is not None:
            row["object_data_id"] = int(ent["object_data_id"])
        rows.append(row)
    return rows


def write_runtime_state(visible_npcs=None, movement=None,
                        last_npc_request=None, game_connected=False):
    """Atomically publish the server-known local world state as JSON."""
    visible_npcs = visible_npcs or {}
    movement = movement or {}
    state = {
        "schema_version": 1,
        "updated_unix_ms": int(time.time() * 1000),
        "game_connected": bool(game_connected),
        "scene": {
            "id": int(current_scene_id()),
            "name": current_scene_name(),
        },
        "player": {
            "id": int(ROLE.get("id", 0)),
            "name": str(ROLE.get("name", "")),
            "x": int(ROLE.get("x", SPAWN_X)),
            "y": int(ROLE.get("y", SPAWN_Y)),
            "direction": movement.get("direction"),
            "control": movement.get("control"),
            "action_low": movement.get("action_low"),
            "position_source": (
                "cmd133" if movement else "server_scene_state"
            ),
        },
        "npcs": _runtime_npc_rows(visible_npcs),
        "last_npc_request": last_npc_request,
        "evidence": {
            "player_position": (
                "decoded client cmd133" if movement
                else "server scene-ready/current role state"
            ),
            "npc_rows": (
                "only entities sent by this server with diagnostic/probe cmd132"
            ),
        },
    }

    STATE_PATH.parent.mkdir(parents=True, exist_ok=True)
    tmp = STATE_PATH.with_suffix(STATE_PATH.suffix + ".tmp")
    payload = json.dumps(state, ensure_ascii=False, indent=2)
    with STATE_LOCK:
        tmp.write_text(payload, encoding="utf-8")
        os.replace(tmp, STATE_PATH)
    return state

RESOURCE_APK = pathlib.Path(__file__).with_name("truthan_resources_v1.17.apk")

# Client DATATYPE values recovered from GDataManager.<clinit>:
# 0=img, 1=obj, 2=scn, 3=pgg, 4=wmp
# sendUpdateResMessage writes getDataType() directly (no wire remapping).
RESOURCE_EXT = {
    0: "img",
    1: "obj",
    2: "scn",
    3: "pgg",
    4: "wmp",
}


def get_local_resource(dtype, rid):
    """
    Return the exact resource bytes bundled in the APK when available.
    For the known missing img/0 request, return a tiny valid image placeholder.
    """
    # img/0 does not exist in this APK. Earlier versions sent a 7-byte
    # fake GImageData, but Android's image decoder rejected it. Let the normal
    # missing-resource path clear the pending entry instead.
    ext = RESOURCE_EXT.get(int(dtype))
    if ext is None:
        return None, f"unknown datatype {dtype}"

    name = f"data/{ext}/{int(rid)}.{ext}"
    if not RESOURCE_APK.exists():
        return None, f"resource APK missing: {RESOURCE_APK}"

    try:
        with zipfile.ZipFile(RESOURCE_APK, "r") as z:
            return z.read(name), name
    except KeyError:
        return None, f"{name} not found"

def parse_update_resource_request(body):
    """
    Client cmd11 request format from GameWorld.sendUpdateResMessage():
      byte count
      repeat count:
        byte datatype
        short id
    """
    if not body:
        return []
    count = body[0]
    pos = 1
    out = []
    for _ in range(count):
        if pos + 3 > len(body):
            break
        dtype = body[pos]
        rid = struct.unpack(">h", body[pos+1:pos+3])[0]
        pos += 3
        out.append((dtype, rid))
    return out

def resource_chunk_bodies(dtype, rid, data, chunk_size=28000):
    """
    Incoming cmd11 format consumed by GameWorld.processUpdateResMessage():

      first chunk:
        byte 1
        byte datatype
        short id
        int TOTAL_SIZE
        short chunk_size
        bytes chunk

      following chunks:
        byte 1
        byte datatype
        short id
        int OFFSET
        short chunk_size
        bytes chunk

    All normal resources in the APK are small enough for this protocol;
    28 KB keeps the signed-short chunk length safe.
    """
    data = bytes(data)
    total = len(data)

    # A zero-byte response still clears the pending map entry correctly.
    if total == 0:
        yield (
            bytes([1, dtype & 0xff])
            + struct.pack(">h", int(rid))
            + struct.pack(">i", 0)
            + struct.pack(">h", 0)
        )
        return

    off = 0
    first = True
    while off < total:
        chunk = data[off:off + chunk_size]
        int_field = total if first else off
        yield (
            bytes([1, dtype & 0xff])
            + struct.pack(">h", int(rid))
            + struct.pack(">i", int_field)
            + struct.pack(">h", len(chunk))
            + chunk
        )
        off += len(chunk)
        first = False

def missing_resource_clear_body(dtype, rid):
    """
    Fallback understood by the client's cmd11 error/removal branch:
      byte 0
      byte count
      byte datatype
      short id

    This removes the pending DataIndexInfo from updatingDataIndexInfoMap.
    It can display the original client's resource-version warning, so it is
    used only if no local/placeholder bytes are available.
    """
    return bytes([0, 1, dtype & 0xff]) + struct.pack(">h", int(rid))

MAGIC = 0x2425

# Auth server
AUTH_LOGIN = 42
AUTH_LOGIN_RSP = -42
MY_PLATFORM = 23
MY_PLATFORM_RSP = -23

# Game-server verification / role / world protocol
LOGIN_GAME = 277
JOIN_GAME = 6
JOIN_GAME_RSP = 7
ENTER_SCENE_READY = 10
CREATE_ROLE = 16
CREATE_ROLE_RSP = 16
GET_ROLE_ORIGINAL = 18
GET_ROLE_ORIGINAL_RSP = 18
GET_ROLE_LIST = 20
GET_ROLE_LIST_RSP = 20
ROLE_ENTER_SCENE = 32
ROLE_ENTER_SCENE_REQUEST = 45
UPDATE_RES_MESSAGE = 11
GETUI_CLIENTID_MSG = 614
SPRITE_VIEW_MESSAGE = 132
SPRITE_MOVE_MESSAGE = 133
NPC_FUNCTION_LIST = 120
NPC_FUNCTION_TALK = 73

RES_VERSION = "2009-12-18-00"

# Correct newbie area recovered from the bundled .scn data:
#   country 0 / East  -> 9068  (轩辕奇境)
#   country 1 / South -> 8068  (轩辕奇境)
#   country 2 / North -> 10046 (轩辕奇境)
#
# The three files all use the snow-themed back-layer IMG 16021 that is present
# in the APK.  Scene 7000 was only a technical test map.
STARTER_SCENES = {
    0: 9068,
    1: 8068,
    2: 10046,
}
SCENE_OVERRIDE = os.environ.get("TRUTHAN_SCENE")
SPAWN_X = int(os.environ.get("TRUTHAN_X", "180"))
SPAWN_Y = int(os.environ.get("TRUTHAN_Y", "230"))
PLAYER_SPEED = int(os.environ.get("TRUTHAN_PLAYER_SPEED", "40"))
if not 1 <= PLAYER_SPEED <= 255:
    raise ValueError("TRUTHAN_PLAYER_SPEED must be in 1..255")

# Server-driven populations stay OFF by default until authoritative server
# spawn metadata is recovered.  v0.26 adds controlled *asset probes*: every
# probed object id is first verified to exist in the bundled APK, but the probe
# is NOT presented as the original server spawn table.
EXPERIMENTAL_SPAWN = os.environ.get("TRUTHAN_EXPERIMENTAL_SPAWN", "0") == "1"
NPC_ASSET_PROBE = os.environ.get("TRUTHAN_NPC_ASSET_PROBE", "0") == "1"
SINGLE_NPC_PROBE = os.environ.get("TRUTHAN_SINGLE_NPC_PROBE", "0") == "1"
MOB_ASSET_PROBE = os.environ.get("TRUTHAN_MOB_ASSET_PROBE", "0") == "1"
CAIYUN_OBJ_OVERRIDE = os.environ.get("TRUTHAN_CAIYUN_OBJ")
HUOHUYAO_OBJ_OVERRIDE = os.environ.get("TRUTHAN_HUOHUYAO_OBJ")
BIND_HOST = os.environ.get("TRUTHAN_BIND", "127.0.0.1")

def current_scene_id():
    if SCENE_OVERRIDE:
        return int(SCENE_OVERRIDE)
    return STARTER_SCENES.get(int(ROLE.get("country", 0)), 9068)

def current_scene_name():
    sid = current_scene_id()
    if sid in (9068, 8068, 10046):
        return "轩辕奇境"
    return f"Local Scene {sid}"

ROLE = {
    "created": False,
    "id": 100001,
    "name": "LocalHero",
    "map": "轩辕奇境",
    "job": 0,
    "sex": 0,
    "country": 1,
    "grade": 1,
    "obj": 1,
    "hair": 0,
    "x": SPAWN_X,
    "y": SPAWN_Y,
}

def pstr(s):
    b = str(s).encode("utf-8")
    return struct.pack(">H", len(b)) + b

def read_pstr(data, pos):
    if pos + 2 > len(data):
        return "", pos
    n = struct.unpack(">H", data[pos:pos+2])[0]
    pos += 2
    raw = data[pos:pos+n]
    pos += n
    return raw.decode("utf-8", "replace"), pos

def mkframe(cmd, body=b"", sid=0, sess=0):
    # Incoming server -> client frames do NOT use the FE pre-auth marker.
    ln = len(body) + 9
    return (
        struct.pack(">HH", MAGIC, ln)
        + struct.pack(">B", sid & 0xff)
        + struct.pack(">I", sess & 0xffffffff)
        + struct.pack(">h", cmd)
        + body
    )

def printable(b):
    return ''.join(chr(x) if 32 <= x < 127 else '.' for x in b)

def parse_frames(buf):
    """
    The old client has TWO outgoing wire headers.

    Normal:
      24 25 | len | serverId | sessionId | cmd | body

    Before game-server authentication:
      24 25 | len | FE | serverId | sessionId | cmd | body

    v0.13 treated FE as serverId, shifting everything and misreading
    LOGIN_GAME_MESSAGE 277 as cmd=1.
    """
    out = []
    while True:
        if len(buf) < 4:
            break

        if buf[:2] != b"\x24\x25":
            p = buf.find(b"\x24\x25", 1)
            if p < 0:
                if len(buf) > 1:
                    del buf[:-1]
                break
            del buf[:p]
            if len(buf) < 4:
                break

        ln = struct.unpack(">H", buf[2:4])[0]
        total = 2 + ln

        if ln < 9:
            del buf[:2]
            continue
        if len(buf) < total:
            break

        fr = bytes(buf[:total])
        del buf[:total]

        if len(fr) >= 12 and fr[4] == 0xFE:
            wire = "FE-PREAUTH"
            sid = fr[5]
            sess = struct.unpack(">I", fr[6:10])[0]
            cmd = struct.unpack(">h", fr[10:12])[0]
            body = fr[12:]
        else:
            wire = "NORMAL"
            sid = fr[4]
            sess = struct.unpack(">I", fr[5:9])[0]
            cmd = struct.unpack(">h", fr[9:11])[0]
            body = fr[11:]

        out.append((fr, wire, sid, sess, cmd, body))

    return out

def log_block(f, direction, data, port, cmd=None, wire=None):
    extra = ""
    if cmd is not None:
        extra += f" cmd={cmd}"
    if wire:
        extra += f" wire={wire}"
    s = (
        f"[{time.strftime('%H:%M:%S')}] {direction} {len(data)} bytes "
        f"port={port}{extra}\n"
        f"HEX {data.hex()}\n"
        f"ASCII {printable(data)}\n"
    )
    f.write(s.encode())
    f.flush()
    print(s.rstrip())

def send(c, f, port, cmd, body=b"", sid=0, sess=0, label=""):
    d = mkframe(cmd, body, sid, sess)
    c.sendall(d)
    log_block(f, "TX-FRAME", d, port, cmd, "SERVER-NORMAL")
    if label:
        print(label)

# ----------------------------------------------------------------------
# AUTH SERVER 29000
# ----------------------------------------------------------------------

def auth_body():
    b = bytearray([1, 0])              # login success, phoneBound=false
    b += struct.pack(">i", 10001)      # userId
    b += struct.pack(">i", 1)          # server count

    b += struct.pack(">i", 1)          # server id
    b += pstr("Local Test")
    b += pstr("127.0.0.1:19000")
    b += bytes([0, 0])                 # status=normal, role count=0
    b += pstr("")                      # MUST be empty; non-empty blocks Enter
    return bytes(b)

# ----------------------------------------------------------------------
# GAME SERVER LOGIN / ROLE
# ----------------------------------------------------------------------

def login_game_rsp():
    """
    GameWorld.processLoginGameMessage():
      byte result: 1 = success
      String resourceVersion
      byte updateMode: 1 = continue immediately
      byte curStateOfSecurityPW
    """
    return bytes([1]) + pstr(RES_VERSION) + bytes([1, 0])

def role_record():
    b = bytearray()
    b += struct.pack(">i", ROLE["id"])
    b += pstr(ROLE["map"])
    b += pstr(ROLE["name"])
    b += struct.pack(">bbb", ROLE["job"], ROLE["sex"], ROLE["country"])
    b += struct.pack(">h", ROLE["grade"])
    b += bytes([1])                    # supportChangeImage
    b += struct.pack(">h", ROLE["obj"])
    b += bytes([0])                    # imageData count
    b += bytes([0])                    # role-name-illegal false
    b += struct.pack(">i", ROLE["hair"])
    return bytes(b)

def role_list_rsp():
    b = bytearray([1])                 # result success
    if ROLE["created"]:
        b += struct.pack(">i", 1)
        b += role_record()
    else:
        b += struct.pack(">i", 0)
    return bytes(b)

def role_original_rsp():
    """
    Four profession templates. The APK contains data/obj/1.obj..4.obj.
    Two sex variants are supplied per profession.
    """
    b = bytearray([1, 4])              # success, professionCount=4
    for job in range(4):
        b += bytes([1])                # supportChangeImage=true
        for sex in range(2):
            b += struct.pack(">h", job + 1)
            b += bytes([0])            # imageData count=0
            b += struct.pack(">i", 0)  # hair id
    b += bytes([0, 0])                 # default menu indexes
    return bytes(b)

def capture_create_role(body):
    # sendCreatePlayerMessage:
    # int userId, String name, byte info0, byte info1, byte info2
    try:
        pos = 0
        if len(body) >= 4:
            _uid = struct.unpack(">i", body[:4])[0]
            pos = 4
        name, pos = read_pstr(body, pos)
        if name:
            ROLE["name"] = name

        vals = list(body[pos:pos+3])
        if len(vals) >= 1:
            ROLE["job"] = vals[0] & 0xff
        if len(vals) >= 2:
            ROLE["sex"] = vals[1] & 0xff
        if len(vals) >= 3:
            ROLE["country"] = vals[2] & 0xff

        # Match object template to selected job where possible.
        ROLE["obj"] = max(1, min(4, ROLE["job"] + 1))
        print(
            f"CREATE request parsed: name={ROLE['name']!r} "
            f"job={ROLE['job']} sex={ROLE['sex']} country={ROLE['country']}"
        )
    except Exception:
        traceback.print_exc()

def create_role_rsp():
    ROLE["created"] = True
    return bytes([1]) + struct.pack(">i", ROLE["id"]) + pstr(ROLE["map"])

# ----------------------------------------------------------------------
# JOIN GAME / SCENE
# ----------------------------------------------------------------------

def join_game_rsp():
    """
    Exact minimal body for GameWorld.processJoinGameRspMessage() success path.

    IMPORTANT:
    v0.13-v0.16 appended ~12 KB of zero padding. The client does NOT consume
    arbitrary padding inside cmd7; leftover zero bytes were later interpreted
    as new protocol commands, which is why processUpdateResMessage() and other
    unrelated handlers started throwing exceptions.

    This packet contains only the fields that the decompiled client actually
    reads when all optional outfit/image/fabao data are empty.
    """
    b = bytearray()

    # result: 0 == JOIN_GAME success
    b += struct.pack(">b", 0)

    # Basic role identity
    b += pstr(ROLE["name"])
    b += struct.pack(">b", 0)                    # VIP level
    b += struct.pack(">b", ROLE["job"] & 0xff)  # job
    b += struct.pack(">b", ROLE["sex"] & 0xff)  # sex
    b += struct.pack(">h", ROLE["obj"])          # objectDataId
    b += struct.pack(">b", ROLE["country"] & 0xff)
    b += pstr("")                                # title
    b += pstr("")                                # gang nickname

    # attr_baseHP / attr_baseMP
    b += struct.pack(">i", 100)
    b += struct.pack(">i", 100)

    # readSpriteUpdateProperty(user, 3)
    # int maxHP, int maxMP, unsigned-byte speed, byte wuxing,
    # byte attackSpeed/flags x3
    b += struct.pack(">i", 100)                  # maxHP
    b += struct.pack(">i", 100)                  # maxMP
    b += struct.pack(">B", PLAYER_SPEED)         # movement speed; GSprite default in client is 40
    b += struct.pack(">b", 0)                    # wuxingType
    b += struct.pack(">b", 10)                   # attack-speed-ish field
    b += struct.pack(">b", 0)
    b += struct.pack(">b", 0)

    # Level/economy
    b += struct.pack(">B", max(1, ROLE["grade"]))  # grade (unsigned byte)
    b += struct.pack(">i", 0)                    # exp
    b += struct.pack(">i", 100)                  # nextExp
    b += struct.pack(">q", 0)                    # money
    b += struct.pack(">h", 0)                    # canUsedPoint

    # 14 equipment/outfit slots.
    # A marker != 1 skips reading RoleGoods for that slot.
    b += bytes([0] * 14)

    b += struct.pack(">b", 0)                    # outlineFlag
    b += struct.pack(">b", 0)                    # imageData count

    # fabao marker: negative => no fabao, so no following short is read
    b += struct.pack(">b", -1)

    b += struct.pack(">i", ROLE.get("hair", 0))  # hair id
    b += pstr("")                                # hair/outfit name

    b += struct.pack(">b", 0)                    # legacy flag, read/ignored
    b += struct.pack(">h", 0)                    # tianImgId
    b += struct.pack(">i", 0)                    # vipExpireTime

    b += struct.pack(">h", 0)                    # QUEST_START_ALERT_LEVEL
    b += struct.pack(">h", 0)                    # QUEST_END_ALERT_LEVEL

    print(f"JOIN_GAME exact body length={len(b)} bytes")
    return bytes(b)

def scene_load_rsp():
    """
    Load the actual new-character area from the client APK.

    The client contains three country-specific scene files that all carry the
    internal scene name 轩辕奇境:
      East  = 9068
      South = 8068
      North = 10046
    """
    scene_id = current_scene_id()
    b = bytearray()
    b += struct.pack(">b", 1)             # 1 == LOAD scene
    b += struct.pack(">h", scene_id)
    b += struct.pack(">h", 1)             # lowLevel
    b += pstr(current_scene_name())
    b += pstr("")                         # gameTips
    b += struct.pack(">B", 0)             # bundled scene resources are local
    return bytes(b)

def get_obj_image_refs(object_data_id):
    """
    Read the image-reference table at the start of a bundled .obj file.

    Observed format in the v1.17 APK:
      byte version/type
      byte version/type
      byte imageRefCount
      repeated imageRefCount times:
          unsigned short imageId
          byte refFlag

    This helper is used only to validate/log probe assets.  It does not invent
    server-side NPC metadata.
    """
    data, source = get_local_resource(1, int(object_data_id))
    if data is None:
        return None, source
    if len(data) < 3:
        return [], f"{source}: short object file"
    count = data[2]
    pos = 3
    refs = []
    for _ in range(count):
        if pos + 3 > len(data):
            return refs, f"{source}: truncated image table"
        image_id = struct.unpack(">H", data[pos:pos+2])[0]
        ref_flag = data[pos+2]
        # 0xFFFF is a real empty/sentinel slot in some .obj tables, not an IMG id.
        if image_id != 0xFFFF:
            refs.append((image_id, ref_flag))
        pos += 3
    return refs, source


def verify_probe_object(object_data_id):
    refs, source = get_obj_image_refs(object_data_id)
    if refs is None:
        raise ValueError(f"probe object {object_data_id} missing: {source}")
    missing = []
    for image_id, _flag in refs:
        data, _ = get_local_resource(0, image_id)
        if data is None:
            missing.append(image_id)
    if missing:
        raise ValueError(
            f"probe object {object_data_id} references missing IMG(s): {missing}"
        )
    return refs


def npc_view_body(sprite_id, name, level, object_data_id, x, y,
                  hp=40, max_hp=None, mp=1, max_mp=None, country=0, speed=4,
                  can_select=1, can_hit=1, relation_state=0,
                  auto_control_type=0, initial_state=0, flags=b"",
                  trigger_event=0, image_ids=(), action_type=0, action_id=0,
                  direction=0, appearance_effect_gate=0):
    """
    Encode the GNPC add branch of cmd132 exactly as consumed by
    GameWorld.processViewSpriteMessage() in classes.dex.

    IMPORTANT findings from the client bytecode:
      * spriteType 2 == GNPC, spriteType 3 == GUser
      * after x/y the client reads autoControlType, then one byte passed to
        readSpriteView(sprite, state)
      * ReadNpcFlagFuction() reads a byte count followed by that many flag bytes
      * readSpriteView1() reads imageCount + image IDs, then 3 action bytes,
        horse marker, buff list, one ignored byte, wuxing marker, fabao marker
      * drawSelected() divides both HP/maxHP and MP/maxMP.  maxMP MUST NOT be 0
        for selectable NPCs, otherwise the render loop throws ArithmeticException.
    """
    if max_hp is None:
        max_hp = hp
    if max_mp is None:
        max_mp = mp
    if can_select and int(max_hp) <= 0:
        raise ValueError("selectable GNPC requires max_hp > 0")
    if can_select and int(max_mp) <= 0:
        raise ValueError("selectable GNPC requires max_mp > 0 (client drawSelected divides by it)")

    flags = bytes(flags)
    image_ids = tuple(int(v) for v in image_ids)
    if len(flags) > 127 or len(image_ids) > 127:
        raise ValueError("too many NPC flags/images for signed-byte count")

    b = bytearray()
    # processViewSpriteMessage header
    b += struct.pack(">i", int(sprite_id))
    b += struct.pack(">bbbb", 2, 0, int(appearance_effect_gate), 0)

    # GNPC branch
    b += struct.pack(">hh", int(x), int(y))
    b += struct.pack(">b", int(auto_control_type))
    b += struct.pack(">b", int(initial_state))

    # readSpriteView() common fields
    b += struct.pack(">bbb", int(can_select), int(can_hit), int(relation_state))
    b += struct.pack(">iiii", int(hp), int(max_hp), int(mp), int(max_mp))
    b += pstr(name)

    # One byte is consumed and ignored before ReadNpcFlagFuction().
    b += struct.pack(">b", 0)
    b += struct.pack(">b", len(flags)) + flags

    # Trigger-event extension.  Exact branch exists in classes.dex; we keep it
    # disabled until real trigger metadata is recovered.
    b += struct.pack(">b", int(trigger_event))
    if trigger_event == 1:
        # Safe neutral values that follow the exact field order.
        b += struct.pack(">b", 0)      # triggerActionId
        b += struct.pack(">h", -1)     # selfSEObjectId (no self SE)
        b += struct.pack(">h", -1)     # targetSEObjectId (no target SE)
        b += pstr("")                  # triggerWords

    b += struct.pack(">b", int(country) & 0x7f)
    b += struct.pack(">B", int(speed) & 0xff)
    b += struct.pack(">B", int(level) & 0xff)
    b += struct.pack(">h", int(object_data_id))

    # readSpriteView1()
    b += struct.pack(">b", len(image_ids))
    for image_id in image_ids:
        b += struct.pack(">h", image_id)
    b += struct.pack(">bbb", int(action_type), int(action_id), int(direction))
    b += struct.pack(">b", -1)          # no horse -> no horse short follows
    b += struct.pack(">b", 0)           # buffCount
    b += struct.pack(">b", 0)           # byte consumed/ignored
    b += struct.pack(">b", -1)          # wuxingType marker
    b += struct.pack(">b", -1)          # no fabao -> no fabao short follows
    return bytes(b)


def _validated_probe_entity(**ent):
    refs = verify_probe_object(ent["object_data_id"])
    ent = dict(ent)
    ent["_asset_refs"] = refs
    return ent


def starter_probe_entities():
    """
    Controlled v0.26 diagnostic population.

    Proven from classes.dex ForceGuide:
      * tutorial target names are 彩云仙子 and 火狐妖
      * the player is instructed to move left toward 彩云仙子

    NOT proven by APK/client data:
      * original server objectDataId for either entity
      * original runtime sprite ids / exact spawn coordinates

    Therefore default gameplay stays clean.  Probe IDs below are only APK-backed
    visual candidates and are labelled OBJxxxx unless the operator explicitly
    selects one with TRUTHAN_CAIYUN_OBJ / TRUTHAN_HUOHUYAO_OBJ.
    """
    cx, cy = SPAWN_X, SPAWN_Y
    out = []

    if SINGLE_NPC_PROBE:
        # Diagnostic identity ONLY. OBJ1014 is not identified as a tutorial NPC.
        # (203,253) was traversed by the real client in scene9068, run111505.
        # Action0/direction0 has eight frames in the APK asset (research JSON).
        if current_scene_id() != 9068:
            raise ValueError("single NPC probe requires evidence-backed scene 9068")
        return [_validated_probe_entity(
            sprite_id=220010, name="TEST OBJ1014", level=1, object_data_id=1014,
            x=203, y=253, hp=100, max_hp=100, mp=100, max_mp=100,
            can_select=1, can_hit=0, speed=40, auto_control_type=0,
            initial_state=0, action_type=0, action_id=0, direction=0,
            appearance_effect_gate=1, flags=bytes([3]),
        )]

    # Explicit override mode: spawn one exact-name tutorial NPC.  This lets us
    # test ForceGuide / selection / talk only after a candidate has been chosen.
    if CAIYUN_OBJ_OVERRIDE:
        oid = int(CAIYUN_OBJ_OVERRIDE)
        out.append(_validated_probe_entity(
            sprite_id=220001, name="彩云仙子", level=1, object_data_id=oid,
            x=cx - 38, y=cy, hp=100, max_hp=100, mp=100, max_mp=100,
            can_select=1, can_hit=0,
        ))
    elif NPC_ASSET_PROBE or EXPERIMENTAL_SPAWN:
        # APK-backed human/fairy-looking candidates.  Their object ids are real
        # client assets; their association with 彩云仙子 is deliberately NOT
        # asserted.  Names expose the object id for screenshot-based inspection.
        candidates = [1014, 1015, 1016]
        positions = [(cx - 42, cy - 28), (cx - 48, cy), (cx - 42, cy + 28)]
        for i, (oid, (x, y)) in enumerate(zip(candidates, positions)):
            out.append(_validated_probe_entity(
                sprite_id=220010 + i, name=f"OBJ{oid}", level=1,
                object_data_id=oid, x=x, y=y,
                hp=100, max_hp=100, mp=100, max_mp=100,
                can_select=1, can_hit=0,
            ))

    if HUOHUYAO_OBJ_OVERRIDE:
        oid = int(HUOHUYAO_OBJ_OVERRIDE)
        out.append(_validated_probe_entity(
            sprite_id=220101, name="火狐妖", level=1, object_data_id=oid,
            x=cx + 58, y=cy + 18, hp=60, max_hp=60, mp=20, max_mp=20,
            can_select=1, can_hit=1,
        ))
    elif MOB_ASSET_PROBE or EXPERIMENTAL_SPAWN:
        # 1155 and 2077 are real APK monster-like assets.  Probe both rather
        # than assigning the 火狐妖 name without evidence from the original server.
        mob_candidates = [1155, 2077]
        positions = [(cx + 52, cy + 6), (cx + 68, cy + 30)]
        for i, (oid, (x, y)) in enumerate(zip(mob_candidates, positions)):
            out.append(_validated_probe_entity(
                sprite_id=220110 + i, name=f"OBJ{oid}", level=1,
                object_data_id=oid, x=x, y=y,
                hp=60, max_hp=60, mp=20, max_mp=20,
                can_select=1, can_hit=1,
            ))

    return out


def send_starter_probe_entities(c, f, port, sid, sess):
    entities = starter_probe_entities()
    if not entities:
        print("SPAWN cmd132 -> clean mode; no unverified NPC/mob population injected")
        return {}

    country = int(ROLE.get("country", 0))
    for ent in entities:
        wire_ent = {k: v for k, v in ent.items() if not k.startswith("_")}
        wire_ent["country"] = country
        body = npc_view_body(**wire_ent)
        refs = ent.get("_asset_refs", [])
        send(
            c, f, port, SPRITE_VIEW_MESSAGE, body, sid, sess,
            f"PROBE SPAWN cmd132 -> {wire_ent['name']} id={wire_ent['sprite_id']} "
            f"obj={wire_ent['object_data_id']} imgRefs={refs} "
            f"pos=({wire_ent['x']},{wire_ent['y']})"
        )
        time.sleep(0.04)
    return {ent["sprite_id"]: ent for ent in entities}


def npc_function_list_body(greeting, functions=()):
    """Cmd120: greeting, four empty quest groups, then function records.

    GameWorld.processNpcFunctionListMessage; function 7 routes to talk (cmd73).
    No original quest data is supplied by this diagnostic encoder.
    """
    if len(functions) > 127:
        raise ValueError("function count exceeds signed byte")
    body = pstr(greeting) + bytes(4) + struct.pack(">b", len(functions))
    for flag_id, function, label in functions:
        body += struct.pack(">bh", flag_id, function) + pstr(label)
    return body


def npc_talk_body(topics):
    """Cmd73 successful response: zero status, signed count, string pairs."""
    if len(topics) > 127:
        raise ValueError("topic count exceeds signed byte")
    return bytes([0, len(topics)]) + b"".join(
        pstr(title) + pstr(text) for title, text in topics
    )


def summarize_unknown_body(body):
    """Small endian-safe diagnostic summary for newly observed client commands."""
    parts = [f"len={len(body)}", f"hex={body[:96].hex()}"]
    if len(body) >= 1:
        parts.append(f"u8={body[0]}")
    if len(body) >= 2:
        parts.append(f"i16={struct.unpack('>h', body[:2])[0]}")
    if len(body) >= 4:
        parts.append(f"i32={struct.unpack('>i', body[:4])[0]}")
    return " ".join(parts)


def decode_client_move133(body):
    """
    Decode the compact 4-byte body produced by GameWorld.sendSpriteMoveMessage().

      byte0: low nibble = X bits 8..11, high nibble = Y bits 8..11
      byte1: X bits 0..7
      byte2: Y bits 0..7
      byte3: direction/action control bits

    The coordinates here are WORLD coordinates.  They are useful for server
    state/AOI logging even though the single-player client already moves itself
    locally and does not require an echo packet.
    """
    if len(body) < 4:
        return None
    b0, bx, by, ctl = body[:4]
    world_x = ((b0 & 0x0F) << 8) | bx
    world_y = ((b0 & 0xF0) << 4) | by
    direction = (ctl >> 5) & 0x07
    action_low = ctl & 0x1F
    return {
        "world_x": world_x, "world_y": world_y,
        "direction": direction, "control": ctl, "action_low": action_low,
        "extra": body[4:],
    }


def scene_position_rsp():
    """
    ROLE_ENTERSCENE cmd32 position branch:
      first byte != 1
      short x
      short y
    """
    return struct.pack(">bhh", 0, SPAWN_X, SPAWN_Y)


def scene_ready_rsp():
    """
    Exact minimal normal/alive branch of processRoleEnterSceneReadyMessage().

    Client reads, in this order:
      byte success != 0
      boolean dead = false
      short x
      short y
      readRoleDeath():
          String deathTitle
          byte deathMenuCount
          [count x: byte menuId + String menuText]

    Even when the character is alive, readRoleDeath() is still called.
    v0.20 stopped after X/Y, so readRoleDeath() ran past the packet and the
    client stayed forever at "初始化场景... 读取中...100%".
    """
    b = bytearray()
    b += bytes([1, 0])                    # success, alive
    b += struct.pack(">hh", SPAWN_X, SPAWN_Y)
    b += pstr("")                         # deathTitle = empty
    b += struct.pack(">b", 0)             # no server-provided death menu entries
    return bytes(b)

# ----------------------------------------------------------------------

def handle(c, addr, port):
    ts = time.strftime("%Y%m%d_%H%M%S")
    path = LOGDIR / f"{ts}_p{port}_{addr[0].replace(':','_')}_{addr[1]}.log"

    with c, open(path, "ab") as f:
        m = f"CONNECTED {time.ctime()} port={port} peer={addr}\n"
        f.write(m.encode())
        f.flush()
        print(m.strip())

        c.settimeout(300)
        close_reason = "unknown"
        buf = bytearray()
        visible_npcs = {}
        last_move = None
        last_npc_request = None
        if port == 19000:
            write_runtime_state(
                visible_npcs,
                movement=last_move,
                last_npc_request=last_npc_request,
                game_connected=True,
            )

        while True:
            try:
                d = c.recv(65535)
            except socket.timeout:
                close_reason = "server_idle_300s"
                print(f"TIMEOUT port={port} peer={addr}")
                break
            except OSError as e:
                close_reason = f"socket_error_{type(e).__name__}"
                print(f"SOCKET ERROR port={port}: {e}")
                break

            if not d:
                close_reason = "peer_eof"
                break

            buf += d
            log_block(f, "RX-CHUNK", d, port)

            for fr, wire, sid, sess, cmd, body in parse_frames(buf):
                log_block(f, "RX-FRAME", fr, port, cmd, wire)

                try:
                    if port == 29000:
                        if cmd == AUTH_LOGIN:
                            send(
                                c, f, port, AUTH_LOGIN_RSP, auth_body(), sid, sess,
                                "AUTH OK -> Local Test"
                            )
                        elif cmd == MY_PLATFORM:
                            send(
                                c, f, port, MY_PLATFORM_RSP, pstr(""), sid, sess,
                                "PLATFORM OK"
                            )
                        else:
                            print(f"AUTH unhandled cmd={cmd}")

                    elif port == 19000:
                        if cmd == LOGIN_GAME:
                            send(
                                c, f, port, LOGIN_GAME, login_game_rsp(), sid, sess,
                                "GAME VERIFY 277 -> OK (success=1, no resource update)"
                            )

                        elif cmd == GET_ROLE_LIST:
                            send(
                                c, f, port, GET_ROLE_LIST_RSP, role_list_rsp(), sid, sess,
                                "ROLE LIST cmd20 -> " +
                                ("1 LOCAL ROLE" if ROLE["created"] else "EMPTY -> CREATE")
                            )

                        elif cmd == GET_ROLE_ORIGINAL:
                            send(
                                c, f, port, GET_ROLE_ORIGINAL_RSP, role_original_rsp(),
                                sid, sess,
                                "CREATE TEMPLATES cmd18 -> 4 classes"
                            )

                        elif cmd == CREATE_ROLE:
                            capture_create_role(body)
                            send(
                                c, f, port, CREATE_ROLE_RSP, create_role_rsp(), sid, sess,
                                f"CREATE ROLE cmd16 -> SUCCESS id={ROLE['id']} name={ROLE['name']}"
                            )

                        elif cmd == JOIN_GAME:
                            ROLE["created"] = True
                            join_body = join_game_rsp()
                            send(
                                c, f, port, JOIN_GAME_RSP, join_body, sid, sess,
                                f"JOIN GAME cmd7 -> EXACT bootstrap ({len(join_body)} body bytes), speed={PLAYER_SPEED}"
                            )
                            time.sleep(0.12)
                            send(
                                c, f, port, ROLE_ENTER_SCENE, scene_load_rsp(), sid, sess,
                                f"SCENE LOAD cmd32 -> scene {current_scene_id()} ({current_scene_name()}), resourceCount=0"
                            )

                        elif cmd == ENTER_SCENE_READY:
                            # Client sends cmd10 only after initScene() has completed.
                            ROLE["x"], ROLE["y"] = SPAWN_X, SPAWN_Y
                            send(
                                c, f, port, ENTER_SCENE_READY, scene_ready_rsp(),
                                sid, sess,
                                f"ENTER_SCENE_READY cmd10 -> alive at ({SPAWN_X},{SPAWN_Y}), death-data complete"
                            )
                            # Do NOT inject guessed live entities by default.
                            # v0.22 did so and a 0/0 MP pair caused GSprite.drawSelected()
                            # to divide by zero every frame.
                            time.sleep(0.15)
                            visible_npcs = send_starter_probe_entities(c, f, port, sid, sess)
                            write_runtime_state(
                                visible_npcs,
                                movement=last_move,
                                last_npc_request=last_npc_request,
                                game_connected=True,
                            )

                        elif cmd in (NPC_FUNCTION_LIST, NPC_FUNCTION_TALK):
                            # Restrict diagnostic dialogue to an entity spawned
                            # on this connection; do not fabricate quest records.
                            if len(body) != 4:
                                print(f"NPC cmd{cmd} malformed len={len(body)}")
                                continue
                            npc_id = struct.unpack(">i", body)[0]
                            npc = visible_npcs.get(npc_id)
                            available = SINGLE_NPC_PROBE and npc is not None
                            if cmd == NPC_FUNCTION_LIST:
                                reply = npc_function_list_body(
                                    "NPC thu nghiem. Chon Noi chuyen de kiem tra." if available else "NPC unavailable.",
                                    ((0, 7, "Noi chuyen"),) if available else (),
                                )
                            else:
                                reply = npc_talk_body(((
                                    "Kiem tra tuong tac",
                                    "Tuong tac NPC da hoat dong. Day la NPC thu nghiem, chua co nhiem vu.",
                                ),)) if available else bytes([1])
                            send(c, f, port, cmd, reply, sid, sess,
                                 f"NPC cmd{cmd} -> id={npc_id} diagnostic={available}")
                            last_npc_request = {
                                "cmd": int(cmd),
                                "npc_id": int(npc_id),
                                "diagnostic_available": bool(available),
                                "received_unix_ms": int(time.time() * 1000),
                            }
                            write_runtime_state(
                                visible_npcs,
                                movement=last_move,
                                last_npc_request=last_npc_request,
                                game_connected=True,
                            )

                        elif cmd == ROLE_ENTER_SCENE_REQUEST:
                            send(
                                c, f, port, ROLE_ENTER_SCENE, scene_load_rsp(),
                                sid, sess,
                                f"ROLE ENTER REQUEST cmd45 -> SCENE {current_scene_id()}"
                            )

                        elif cmd == UPDATE_RES_MESSAGE:
                            requests = parse_update_resource_request(body)
                            print(f"UPDATE_RES cmd11 request: {requests} raw={body.hex()}")

                            if not requests:
                                print("cmd11 request had no decodable resources.")
                            else:
                                for dtype, rid in requests:
                                    data, source = get_local_resource(dtype, rid)

                                    if data is None:
                                        # Last-resort: clear the stale pending entry so it
                                        # cannot block processUpdateSceneResourceList().
                                        clear = missing_resource_clear_body(dtype, rid)
                                        send(
                                            c, f, port, UPDATE_RES_MESSAGE, clear,
                                            sid, sess,
                                            f"RESOURCE cmd11 -> CLEAR missing type={dtype} id={rid} ({source})"
                                        )
                                        continue

                                    chunk_no = 0
                                    for rb in resource_chunk_bodies(dtype, rid, data):
                                        chunk_no += 1
                                        send(
                                            c, f, port, UPDATE_RES_MESSAGE, rb,
                                            sid, sess,
                                            f"RESOURCE cmd11 -> type={dtype} id={rid} "
                                            f"{source} bytes={len(data)} chunk={chunk_no}"
                                        )
                                        if len(data) > 28000:
                                            time.sleep(0.03)


                        elif cmd == SPRITE_MOVE_MESSAGE:
                            mv = decode_client_move133(body)
                            if mv is None:
                                print(f"MOVE cmd133 malformed len={len(body)} body={body.hex()}")
                            else:
                                ROLE["x"] = mv["world_x"]
                                ROLE["y"] = mv["world_y"]
                                last_move = mv
                                print(
                                    "MOVE cmd133 -> "
                                    f"world=({mv['world_x']},{mv['world_y']}) "
                                    f"dir={mv['direction']} ctl=0x{mv['control']:02x} "
                                    f"extra={mv['extra'].hex()}"
                                )
                                write_runtime_state(
                                    visible_npcs,
                                    movement=last_move,
                                    last_npc_request=last_npc_request,
                                    game_connected=True,
                                )
                            # No echo for the local player.  The client updates its own
                            # position before sending this compact movement notification.

                        elif cmd == GETUI_CLIENTID_MSG:
                            print(f"GETUI client-id cmd614 captured; ignored for local play.")

                        else:
                            print(
                                f"GAME unhandled cmd={cmd} wire={wire} "
                                + summarize_unknown_body(body)
                            )

                except Exception:
                    traceback.print_exc()

        if port == 19000:
            write_runtime_state(
                visible_npcs,
                movement=last_move,
                last_npc_request=last_npc_request,
                game_connected=False,
            )
        closed = f"CLOSED {time.ctime()} port={port} peer={addr} reason={close_reason}\n"
        f.write(closed.encode())
        f.flush()
        print(closed.strip())

def serve(p):
    s = socket.socket()
    s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    s.bind((BIND_HOST, p))
    s.listen(20)
    print(f"Listening {BIND_HOST}:{p}")

    while True:
        c, a = s.accept()
        threading.Thread(target=handle, args=(c, a, p), daemon=True).start()

for p in PORTS:
    threading.Thread(target=serve, args=(p,), daemon=True).start()

print("Tru Than LOCAL SERVER v0.26 ready")
print("FLOW:")
print("  29000 auth")
print("  19000 FE/277 game verify")
print("  role list -> create role -> join -> country starter scene")
print(f"  NPC asset probe: {'ON' if (NPC_ASSET_PROBE or CAIYUN_OBJ_OVERRIDE) else 'OFF'}")
print(f"  single diagnostic NPC: {'TEST OBJ1014' if SINGLE_NPC_PROBE else 'OFF'}")
print(f"  mob asset probe: {'ON' if (MOB_ASSET_PROBE or HUOHUYAO_OBJ_OVERRIDE) else 'OFF'}")
print("Ctrl+C to stop")

try:
    while True:
        time.sleep(3600)
except KeyboardInterrupt:
    pass
