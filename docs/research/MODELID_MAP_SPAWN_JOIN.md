# Evidence table — ModelID → appearance/object → map ID → spawn coordinates

Status labels: `VERIFIED` / `PARTIAL` / `CANDIDATE` / `UNKNOWN` / `REJECTED`.
Evidence date: 2026-09-24.
No server code was changed. No spawn coordinates were invented.

## 1. Three locations (identified by path + SHA-256)

| Role | Path | SHA-256 | Size / notes |
|---|---|---|---|
| PC reference (primary) | `C:\Users\Mech\Desktop\TTpc\ZhuShen-1.0.0.jar` | `E94F41EE433CA3B62D7C8F2D31151077A920C1D3AEB37B2BCBEBCF85B25EC4E8` | libGDX desktop client |
| Revived Android APK (read-only input) | `C:\Users\Mech\Desktop\BLRM-local-inputs\TruThan.apk` | `E5C96454DF43AB43F8C4CCA0D913552E9803E46F875A5B81A387FF3EC0B77B10` | 52,186,054 B; 7590 entries; libGDX (`lib/*/libgdx.so`); `classes.dex` `5ae809acf1b6545fdf1766ad958fa40517923073bead439aeff592eeca8efb90` |
| Original Android 1.17 APK | `C:\Users\Mech\Desktop\BLRM\server\truthan_resources_v1.17.apk` | `E76D1C735A40F36C382D1123585BBE8584B1A65463504D691EF5CC454807DDE8` | 11,245,564 B; 3471 entries; `com.t4game` + `Language/Language0-33.str` |

Architectural split (from structure, not assumed wire identity):

- Revived APK is the **libGDX/PC-like** build: `assets/conf/zs*_language.dat` (28 files), `assets/data/scn/map_id_remap.json`, `assets/data/{obj,img,scn}` with `assets/` prefix.
- Original 1.17 is the **legacy Java client**: no `conf/` zs tables, no `map_id_remap`, resources at `data/{obj,img,scn}` + `Language/*.str`.

## 2. Asset identity across the three trees

| Asset set | TTpc | Original 1.17 | Revived | Hash equality |
|---|---:|---:|---:|---|
| `*.obj` | 377 | 377 | 377 | **all 377 identical** across all three |
| `*.scn` | 440 | 437 | 440 | TTpc==revived **437/437**; TTpc==original **435/437** (differ: `8046`, `8051`); TTpc-only: `1001`, `1002`, `2004` |
| `*.img` | 2027 | 2022 | 2027 | TTpc==revived **2027/2027**; TTpc==original among common **2020/2022** |

Shared conf/language tables (TTpc vs revived, SHA-256 equal):

- `zsNpc_language.dat`, `zsMonters_language.dat`, `zsMap_language.dat`, `zsMapWorld_language.dat`, `zsDialogue_language.dat`, `map_id_remap.json` — all **equal**.

Original 1.17: none of those conf files exist.

## 3. Evidence table (join links)

| Link | PC / TTpc | Revived APK | Original Android 1.17 |
|---|---|---|---|
| **ModelID → localized name/title/hello/chat** | `VERIFIED` — `y.a(lang)` / `v.a(lang)` load `zsNpc_language` / `zsMonters_language` (key `parts[0]`, e.g. `n420001`, `m510101`); accessors `y.b/c/d/e`, `v.b`. Runtime decode: 512 NPC rows, 624 monster rows. Packet path `main.b.a.g.g.a(DataInputStream, short)` and `main.b.a.g.i` ~offset 30873: `readUTF` ModelID key, then `y.b`/`y.c` when lang ≠ `ver_vn`, else use packet strings. | `PARTIAL` — DEX contains `zsNpc_language` / `zsMonters_language`; conf files present and hash-equal to PC. Same load chain not executed on device. | `UNKNOWN` / not applicable — DEX has **no** `ModelID`, `zsNpc`, `n420*`, `m510*`. UI strings come from `Language/*.str`. |
| **ModelID → appearance / object asset id** | `UNKNOWN` (no join table found). ModelID is **not** used as an `.obj` path. Appearance/animation slots are numeric shorts from the packet → `String.valueOf(int)` → `main.b.a.e.a.m.a(...)` / `o.a(...)`. No column in `zsNpc`/`zsMonters` carries an object id. | `UNKNOWN` — same conf shape as PC (no obj-id column). Object ids still expected numeric like PC/original; not runtime-proven. | `N/A` as ModelID; appearance is **`VERIFIED` as packet-driven numeric**: `GSprite.setObjectDataId(short)` → `GDataManager.getObjectData(DATATYPE_OBJECT, String.valueOf(id))` → resource `/data/obj/<id>.obj` (`GUtil.dataPath` = `/data/`). Call sites include `GameWorld.java:12781`, `:4218`, `:6122`. |
| **appearance / object id → asset file** | `PARTIAL` — loader `main.b.a.e.a.o.a(String)` / `m.a(String)` and `[APK_NPC]/[APK_CREATURE]` log strings in `main.b.a.e.a.d` resolve `obj/` + numeric id. Exact on-disk path mapping proven by assets layout + runtime loader, not by a real client spawn test in this session. | `PARTIAL` — identical `assets/data/obj` bytes as TTpc; DEX path not decompiled in this session. | `VERIFIED` — `GBaseData.initFromJar()` builds `GUtil.dataPath + DATATYPE_NAMES[type] + "/" + id + "." + type` (`/data/obj/<id>.obj`, `/data/scn/<id>.scn`). |
| **map ID → scene (`.scn`) id** | `VERIFIED` — class `main.b.a.e.a.y` loads `/data/scn/map_id_remap.json` (short→short + inverse). Runtime: `700→9068`, `400→7003`, default `900→10046`. `main.b.a.g.g` calls `y.a()` then `y.a(short)` before `String.valueOf` + `o.a(...)`. | `PARTIAL` — `assets/data/scn/map_id_remap.json` present and SHA-equal to PC; DEX contains `map_id_remap`; invocation not device-run here. | `PARTIAL` — **no remap file/code found**. `processRoleEnterSceneMessage` sets `sceneId = readBuffer.getShort()` (`GameWorld.java:9909`) then `loadScene(short)` → `scene.setId(s)` → `/data/scn/<id>.scn`. Server must send the **scn file id** (e.g. 9068), not the PC-style short (e.g. 700), unless future evidence shows otherwise. |
| **map id → map display name** | `VERIFIED` — `zsMap_language.dat` via `main.b.a.a.t.a(lang)`: header `MapID,name_vn,name_cn,name_e,desc_vn,desc_cn,desc_e`, **306 rows**, keys include both legacy shorts (`400`, `700`, `703`, `8046`) and scn ids (`9068`, `10012`). Jar bytes == `assets/conf` bytes. | `PARTIAL` — file present, hash-equal to PC. | `UNKNOWN` — no equivalent table in APK. |
| **map world name** | `VERIFIED` — `zsMapWorld_language.dat` (header `name_vn,name_cn,name_e`, 8 data rows). Loaded by case-distinct class `main/b/a/a/I.class` (Windows case-insensitive extract collides with `i.class` which loads **dialogue**). Decrypted via `e.a`. | `PARTIAL` — file present, hash-equal. | `UNKNOWN`. |
| **dialogue table** | `VERIFIED` — `main.b.a.a.i.a` loads `zsDialogue_language.dat`: ≥13 cols, key = numeric id, **447 rows** (tutorial strings reference `#S2Hướng Dẫn Tân Thợ#`). Not keyed by ModelID. | `PARTIAL` — file present, hash-equal. | `UNKNOWN` (different dialogue mechanism). |
| **spawn coordinates (X,Y)** | `UNKNOWN` from client files. No spawn/出生/刷怪 table in jar, `assets/conf`, or `assets/res/data`. `.scn` samples (`9068`, `1001`) decompress to gzip tile/grid data; no `n420`/`m510`/`spawn` literals. Positions arrive with entities from the server (e.g. `y.a(int, short, short)` after `readUnsignedByte` X/Y in `g.g.a(DataInputStream, short)`). | `UNKNOWN` from client files — no spawn-named entries in APK. Same asset family as PC. | `UNKNOWN` from client files. Positions **from packet**: `gnpc.setPos(s, s2, true)` before `setObjectDataId` (`GameWorld.java:12780–12781`); nav list `processNpcLeadListInSceneMessage` reads `NpcListId` int, name, `NpcListXInMap`/`Y` shorts (`GameWorld.java:8800+`). |
| **ModelID → map ID direct join** | `UNKNOWN` — no table/code joins `n420*`/`m510*` to a MapID. Map choice is server-driven; zsMap names are for UI only. | `UNKNOWN`. | `N/A`. |
| **full chain ModelID → object → map → spawn from one client file** | `REJECTED` as a single-file join — does not exist in the three trees. Chain is split: language tables (ModelID→text), packet fields (object short, map short/scn short, X/Y), remap JSON (PC/revived map short→scn id). | same as PC for tables; runtime chain not fully device-proven (`PARTIAL` overall chain). | `REJECTED` for ModelID leg; `VERIFIED` packet legs for object/map/position as above. |

## 4. Important non-joins (explicit)

1. **`zsNpc_language` / `zsMonters_language` do not contain objectDataId, image id, map id, or spawn XY.** Only ModelID + localized text columns (headers from runtime dump).
2. **`.scn` files are not NPC spawn lists** in the samples inspected (gzip map grid; no ModelID/spawn strings).
3. **Original 1.17 has no `map_id_remap` and no zs conf tables** — do not apply PC short map ids (400/700) to the original client without new evidence; it loads `/data/scn/<packetShort>.scn` directly.
4. **Do not treat revived APK as identical to original 1.17** — different entry counts, different resource layout, libGDX natives, shared PC conf tables.
5. **Do not rename TEST OBJ1014 / candidates to 彩云仙子** — still `UNKNOWN` identity (`docs/ENTITIES.md`).

## 5. Commands / evidence actually run (this session)

- SHA-256 via `Get-FileHash` on both APKs (values in §1).
- Python `zipfile` inventory + SHA-256 sets for obj/scn/img/conf (§2).
- `javap -c/-v` on `main.b.a.a.{t,i,y,v}`, `main.b.a.g.{g,i}`, `main.b.a.e.a.{y,o,d}`.
- Runtime harness `DumpMap`/`DumpLang` with jar’s own loaders + Gdx.files proxy (base `C:\Users\Mech\Desktop\TTpc\assets`): decrypted zsMap/zsDialogue/zsNPC/zsMonters headers and row counts; `REMAP 700->9068 400->7003 900->10046`.
- JADX tree under `build/research/jadx/sources/com/t4game` for original client packet/asset paths.
- DEX string scan of both APKs for `ModelID`/`zsNpc`/`map_id_remap`/`spawn`.
- gzip decompress sample `.scn` headers.
- **No** real-client login/spawn test in this session. **No** server edit.

## 6. Residual unknowns / next actions

| Item | Status | Next evidence needed |
|---|---|---|
| Original NPC/mob spawn XY | `UNKNOWN` | Server packet captures (cmd9 / cmd132 / enter-scene) or a non-client server data dump — **not** present in client assets |
| ModelID → objectDataId mapping table | `UNKNOWN` | Search server-side data or a packet that carries both fields together |
| Revived APK runtime load chain | `PARTIAL` | Optional device run; files alone already hash-match PC conf |
| scn `8046`/`8051` content delta TTpc vs original | `UNKNOWN` (hash only) | Byte-level diff only if needed for those maps |
| `map_id_remap` use on original 1.17 | `REJECTED` as file-based; behavior `PARTIAL` direct-scn | Confirm with a captured enter-scene `sceneId` short |

## 7. Related docs

- `docs/research/ZS_LANGUAGE_DAT_LOAD_DECODE.md` — NPC/monster language load chain (prior session).
- `docs/ENTITIES.md` — diagnostic OBJ1014 status; identity UNKNOWN.
- `docs/MAPS.md` — starter scene `9068`, player spawn 180/230 VERIFIED in client tests.
- `docs/PROTOCOL.md` / `docs/RE_FINDINGS.md` — cmd132/cmd9 field evidence.
