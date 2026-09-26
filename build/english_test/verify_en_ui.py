# -*- coding: utf-8 -*-
"""Post-apply verification for the English UI test build."""
import io, os, re, sys
sys.stdout.reconfigure(encoding="utf-8")

ROOT = os.path.dirname(os.path.abspath(__file__))
DECODED = os.path.join(ROOT, "decoded")
sys.path.insert(0, ROOT)
import build_en_ui as B  # noqa: E402

mapping = B.build_mapping()
CONST_RE = B.CONST_RE

still_cn = {zh: [] for zh in mapping}
for dp, dn, fn in os.walk(os.path.join(DECODED, "smali")):
    for name in sorted(fn):
        if not name.endswith(".smali"):
            continue
        path = os.path.join(dp, name)
        rel = os.path.relpath(path, DECODED)
        for idx, line in enumerate(io.open(path, encoding="utf-8", errors="surrogateescape").read().split("\n")):
            m = CONST_RE.match(line)
            if not m:
                continue
            v = B.decode_smali(m.group(2))
            if v in still_cn:
                still_cn[v].append("%s:%d" % (rel, idx + 1))

lang_dir = os.path.join(DECODED, "unknown", "Language")
for name in sorted(os.listdir(lang_dir)):
    if not name.endswith(".str"):
        continue
    _, entries = B.read_str_file(os.path.join(lang_dir, name))
    for i, v in enumerate(entries):
        if v in still_cn:
            still_cn[v].append("%s[%d]" % (name, i))

bad = {k: v for k, v in still_cn.items() if v}
print("mapping entries still present in Chinese: %d" % len(bad))
for k in sorted(bad):
    print("  %-20s -> %s | %s" % (k, mapping[k], ", ".join(bad[k][:5])))

print()
print("=== manifest ===")
mf = io.open(os.path.join(DECODED, "AndroidManifest.xml"), encoding="utf-8").read()
for line in mf.split("\n"):
    if re.search(r"package=|authorit|label", line):
        print("  " + line.strip()[:200])

print()
print("=== remaining Chinese const-strings per essential file ===")
for f in ["MainMenu", "AuthenticateCommon", "RoleLogin", "Language"]:
    p = os.path.join(DECODED, "smali", "com", "t4game", f + ".smali")
    cn = 0
    samples = []
    for idx, line in enumerate(io.open(p, encoding="utf-8", errors="surrogateescape").read().split("\n")):
        m = CONST_RE.match(line)
        if not m:
            continue
        v = B.decode_smali(m.group(2))
        if re.search(r"[\u4e00-\u9fff]", v):
            cn += 1
            if len(samples) < 8:
                samples.append("%d:%s" % (idx + 1, v[:40]))
    print("  %s: %d Chinese literals left" % (f, cn))
    for s in samples:
        print("      " + s)

print()
print("=== Language*.str remaining Chinese entries ===")
tot_cn = tot = 0
for name in sorted(os.listdir(lang_dir)):
    if not name.endswith(".str"):
        continue
    _, entries = B.read_str_file(os.path.join(lang_dir, name))
    tot += len(entries)
    tot_cn += sum(1 for v in entries if re.search(r"[\u4e00-\u9fff]", v))
print("  %d / %d entries still Chinese" % (tot_cn, tot))
