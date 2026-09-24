# VERIFIED — zsNpc_language.dat / zsMonters_language.dat load & decode (ZhuShen-1.0.0.jar)

Status: VERIFIED (bytecode via javap + runtime execution of the real client jar code).
Evidence date: 2026-09-24.
Source jar: `C:\Users\Mech\Desktop\TTpc\ZhuShen-1.0.0.jar`
SHA256: `E94F41EE433CA3B62D7C8F2D31151077A920C1D3AEB37B2BCBEBCF85B25EC4E8`

This document records only what was proven from the jar bytecode and from running that
jar's own loader classes. No field/ID/position assumptions beyond the decoded header row.

## 1. Load chain (VERIFIED)

| Role | Class.method | Evidence |
|---|---|---|
| NPC table loader | `main.b.a.a.y.a(String lang)` | javap + runtime call |
| Monster table loader | `main.b.a.a.v.a(String lang)` | javap + runtime call |
| File reader | `main.b.a.a.e.a(String name)` | javap + runtime call |
| Path resolve | `main.b.a.a.e.b(String)` | javap |
| Decrypt / passthrough | `main.b.a.a.f.a(byte[])` | javap + runtime (files decrypt) |
| Line clean / split | `main.b.a.a.H.a`, `H.b`, `H.c` | javap + runtime parse |

### 1.1 `e.b` path resolution (VERIFIED, javap)
Input e.g. `zsNpc_language.dat` (no prefix):
1. strip leading `/`
2. if starts with `conf/` or `assets/`, strip that prefix
3. try `conf/<name>` via `Gdx.files.internal`, then `assets/<name>`, then `<name>`
4. fallback: `conf/<name>`

Both dat files in the jar live under `conf/` and exist under `assets/conf/` in the
working asset tree, so step 3 resolves.

### 1.2 `e.a` post-read (VERIFIED, javap)
- `FileHandle.readAllBytes()` → `f.a(bytes)` → if non-null/non-empty use result, else original bytes
- `new String(bytes, UTF_8)`
- if string starts with U+FEFF (constant-pool `'\ufeff'`), drop first char

### 1.3 `f.a` decrypt (VERIFIED, javap)
Pre-checks on raw bytes — if any plaintext marker is present (`ver_vn`, `ver_cn`,
`ver_e`, `name_vn`, `MountID`), return bytes unchanged (already-CSV path).

Otherwise AES:
- transformation: `AES/ECB/PKCS5Padding`, fallback `AES/ECB/PKCS7Padding`
- key bytes: `49,50,...,56,49,...,56` = ASCII `"1234567812345678"`
- `SecretKeySpec(key,"AES")`, `Cipher.getInstance`, `init(DECRYPT_MODE)`, `doFinal`

If decrypt throws: CSV heuristic — in the first `min(len,2048)` bytes require
`','` count ≥ 3 and (`'\n'` or `'\r'`) count ≥ 1; if heuristic passes return original
plaintext bytes, else return null.

Both target files take the AES path (raw files do not contain the markers; they do
decrypt successfully at runtime).

### 1.4 `H` line utilities (VERIFIED, javap)
- `H.a(String)`: strip leading U+FEFF; strip one trailing CR
- `H.b(String)`: split on char 44 `,` → `String[]`
- `H.c(String)`: replace char 59 `;` and char 124 `|` with `,` (used on hello/chat fields)

## 2. Row formats (VERIFIED — decoded header row from runtime)

Both loaders skip the first line (header). Rows are comma-split; each required field
is `.trim()`ed.

### 2.1 `zsNpc_language.dat` → `y`
- require parts length ≥ 13
- key = `parts[0]` (ModelID string, e.g. `n420001`)
- value = `String[12]` = trimmed `parts[1..12]`

Decoded header (runtime, exact):

```
ModelID,name_vn,name_cn,name_e,title_vn,title_cn,title_e,hello_vn,hello_cn,hello_e,chat_vn,chat_cn,chat_en
```

| Accessor | Indices into value[] | Fields | Extra |
|---|---|---|---|
| `y.b(key)` | 0,1,2 | name vn/cn/en | — |
| `y.c(key)` | 3,4,5 | title vn/cn/en | — |
| `y.d(key)` | 6,7,8 | hello vn/cn/en | `H.c` on result |
| `y.e(key)` | 9,10,11 | chat vn/cn/en | `H.c` on result |

Language selection inside accessors (VERIFIED): default VN `[base]`; if lang
`ver_cn` use `[cn]` when non-empty else `[base]`; if lang `ver_e` use `[en]` when
non-empty else `[base]`.

### 2.2 `zsMonters_language.dat` → `v`
- require parts length ≥ 4
- key = `parts[0]` (ModelID string, e.g. `m510101`)
- value = `String[3]` = trimmed `parts[1..3]`

Decoded header (runtime, exact):

```
ModelID,name_vn,name_cn,name_e
```

- `v.b(key)` → 0,1,2 = name vn/cn/en, same language-fallback pattern as `y`.
- `v.a(key, default)` also exists (javap) with default fallback.

### 2.3 Language selection entry points (VERIFIED, javap)
- `y.b()` / `v.b()` (no-arg): read config `d.a("blnLanguage","0")` →
  `"1"` → `ver_cn`, `"2"` → `ver_e`, else `ver_vn`; then call `a(lang)`.
- `y.a(lang)` / `v.a(lang)`: explicit language load/reload.
- Working config in this tree: `assets/conf/client_config.properties` → `blnLanguage=0` → `ver_vn`.

## 3. Callers (VERIFIED, javap)

| Caller | Offsets | Calls |
|---|---|---|
| `main.b.a.a.n` (startup / config apply) | 76–90 pick lang (`ver_cn`/`ver_e`/`ver_vn` from switch on `blnLanguage`); 94 `y.b()`; 97 `v.b()`; 131 `r.a(lang)`; 135 `y.a(lang)`; 139 `v.a(lang)` (also `j.a`, `t.a` alongside) | loads both tables at startup |
| `main.b.a.c.al` (language switch UI) | 864 `r.a`; 874 `y.a`; 878 `v.a`; 882 `j.a` — lang string in `aload_3` | reloads both tables on language change |
| `main.b.a.g.g` | lookups `y.b/c/d/e`, `v.b` | localized name/title/hello/chat for display |
| `main.b.a.g.i` | `readShort` then `y.b` / `y.c` | localized name/title by short id path |

`r`, `j`, `t` are sibling language tables loaded with the same lang string; not
investigated here.

## 4. Runtime results (VERIFIED — real jar classes, real files)

Harness: `DumpLang` compiled against the jar; sets `Gdx.files` to the assets root via
a dynamic `FileHandle` proxy; calls `e.a(...)`, `y.a(lang)`, `v.a(lang)`, then reflects
the private static `Hashtable b` of `y`/`v`.

Command (cwd outside repo):

```
java -cp "ZhuShen-1.0.0.jar;." DumpLang C:/Users/Mech/Desktop/TTpc/assets ver_vn 6 <out.txt>
```

Results (lang `ver_vn`, UTF-8 out file):

- `NPC_RAW_LEN=44903` chars after decrypt+UTF-8
- `MON_RAW_LEN=20564` chars after decrypt+UTF-8
- `zsNpc_language` rows = **512**
- `zsMonters_language` rows = **624**
- `Y_LANG=ver_vn`, `V_LANG=ver_vn`
- second run with `ver_e`: `Y_LANG=ver_e`, `V_LANG=ver_e`, same row counts (language
  only changes accessor selection, not row set)

### 4.1 Sample NPC records (first sorted keys, real decoded text)

```
key=[n420001] name_vn=[Hướng Dẫn Tân Thủ] name_cn=[新手指导] name_e=[Beginner Guide]
     title_*=[] hello_vn=[Nhấn vào ta để nhận nhiệm vụ.]
     hello_cn=[欢迎来到仙镜世界;需要什么帮助吗?] (after H.c: commas)
     hello_e=[Welcome to the world of Xianjing; do you need any help?]
     chat_vn=[Nhấn vào ta để nhận nhiệm vụ.] chat_cn=[点击我来接任务.]
     chat_e=[Click me to receive the quest.]
key=[n420002] name_vn=[Vân Trung Tiên] name_cn=[云中仙] rest empty
key=[n420003] name_vn=[Tiên Nữ Hướng Dăn] name_cn=[引导仙女] rest empty
key=[n420004] name_vn=[Trưởng Thôn] name_cn=[村长] rest empty
key=[n420005] name_vn=[Diêm Thợ Rèn] name_cn=[阎铁匠]
     title_vn=[Chế Tạo Trang Bị] title_cn=[装备打造]
key=[n420006] name_vn=[Tống Tiên] name_cn=[宋仙]
     title_vn=[Nhận Lương Hàng Tuần] title_cn=[领取每周工资]
```

### 4.2 Sample monster records

```
key=[m420192] name_vn=[Xe Tiêu]    name_cn=[镖车]  name_e=[]
key=[m420193] name_vn=[Tiêu Đạo]   name_cn=[镖道]  name_e=[]
key=[m510101] name_vn=[Thỏ Hoang]  name_cn=[野兔]  name_e=[]
key=[m510102] name_vn=[Chim sẻ]    name_cn=[麻雀]  name_e=[]
key=[m510103] name_vn=[Hồ Ly Lửa] name_cn=[火狐狸] name_e=[]
key=[m510104] name_vn=[Nấm Tinh]   name_cn=[蘑菇精] name_e=[]
```

Note: `m420192`/`m420193` are transport-style names (escort cart), not mobs — IDs are
taken verbatim from the file, no gameplay claim beyond the text.

## 5. File identity (VERIFIED, SHA256)

| File | SHA256 | Size |
|---|---|---|
| jar `conf/zsNpc_language.dat` == `assets/conf/zsNpc_language.dat` | `CB7198C66EF69D7124A448136BF9F89BD8BA4A09DE2D7B27BB13AE11BE75C1BF` | 60304 B |
| jar `conf/zsMonters_language.dat` == `assets/conf/zsMonters_language.dat` | `47B5DFC9EBF8014832A761C3B0B9416F486E743DA34D98F8B292141AEB865A37` | 29280 B |

Sizes divisible by 16 (AES-block consistent). Jar-internal copies are identical to
the asset-tree copies used for the runtime decode.

## 6. Reproduce

```
# extract (lowercase class names must go to a separate dir on case-insensitive FS)
jar xf ZhuShen-1.0.0.jar main/b/a/a/y.class main/b/a/a/v.class main/b/a/a/e.class main/b/a/a/f.class main/b/a/a/H.class
javap -c -p main/b/a/a/y.class   # and v, e, f, H, n, al, g/g, g/i

# runtime decode harness (DumpLang.java sets Gdx.files proxy, calls e.a/y.a/v.a)
javac -encoding UTF-8 -cp ZhuShen-1.0.0.jar DumpLang.java
java -cp "ZhuShen-1.0.0.jar;." DumpLang <assetsRoot> ver_vn 6 out.txt
```

Harness and extracted classes live under the system temp dir only; they are not part
of the BLRM repo.

## 7. Explicit non-claims

- Keys are **ModelID strings from this language file**, not server spawn/NPC/mob IDs.
- No spawn positions, stats, or map links inferred from these rows.
- `r`/`j`/`t` sibling tables: NOT investigated (UNKNOWN).
- `.obj`/`.scn` linkage of ModelID → appearance: NOT investigated (UNKNOWN).
