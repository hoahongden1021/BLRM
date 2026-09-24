# Spawn chain proposal — map ID → spawn → ModelID → objectDataId → OBJ/IMG

Status labels: `VERIFIED` / `PARTIAL` / `CANDIDATE` / `UNKNOWN` / `REJECTED`.
Evidence date: 2026-09-25.
No server code was changed in this session.

## 1. Scope

Static trace of the Original Android 1.17 client and a bounded search of the
PC / revived trees for spawn records or a ModelID → objectDataId join, then a
field-level comparison against BLRM's current cmd132 encoder.

Constraints observed:

- no recursive TTpc / `jre/` / full asset walk;
- jar string scan limited (prior session: `MATCHED_ENTRIES=0` for spawn-related needles);
- no server edit.

## 2. Exact packet fields, order, ID types, code locations

### 2.1 Command dispatch (Original 1.17)

| Cmd | Constant | Handler | Location |
|---:|---|---|---|
| 132 | `MessageCommands.SPRITE_VIEW_MESSAGE = 132` | `processViewSpriteMessage()` | dispatch `GameWorld.java:7299`; body `:12681` |
| 9 | `MessageCommands.NPC_LEAD_LIST_MESSAGE = 9` | `processNpcLeadListInSceneMessage()` | dispatch `GameWorld.java:7014`; body `:8800` |
| 323 | `MessageCommands.COLLECTION_VIEW_MESSAGE = 323` | `processCollectionViewMessage()` | dispatch `GameWorld.java:7772`; body `:4186` |
| (sprite update) | outline/name/object change | `processSpriteOutlineChangedMessage()` | `GameWorld.java:11354` |

`MessageCommands.java:594` (`SPRITE_VIEW_MESSAGE`), `:385` (`NPC_LEAD_LIST_MESSAGE`),
`:96` (`COLLECTION_VIEW_MESSAGE`).

### 2.2 `cmd=132` body — GNPC add branch (`type==2`)

Header (always):

| Order | Field | Type | Code |
|---:|---|---|---|
| H1 | spriteId | i32 | `GameWorld.java:12682` |
| H2 | spriteType | i8 (`2`=GNPC, `3`=GUser) | `:12684` |
| H3 | exType | i8 (only applied if sprite already exists) | `:12685` |
| H4 | appearanceEffectGate | i8 (`0` plays object 9000 / effect 69) | `:12686` |
| H5 | remove | i8 (`0`=add/update, else remove path) | `:12687` |

GNPC body after header:

| Order | Field | Type | Code |
|---:|---|---|---|
| N1 | worldX | i16 | `:12757` |
| N2 | worldY | i16 | `:12758` |
| N3 | autoControlType | i8 | `:12759` |
| N4 | initialState | i8 | `:12760` |
| N5 | block C: canSelect, canHit, relationState | i8×3 | `readSpriteView` `:13234` |
| N5 | attr_baseHP, maxHp, attr_baseMP, maxMp | i32×4 | `:13242–13245` |
| N5 | name | str | `:13246` |
| N6 | ignoredNpcByte | i8 discarded | `:12762` |
| N7–N8 | flagCount i8 + flag[i] i8 | `ReadNpcFlagFuction` `:14100` (count ≤ 0 → null) |
| N9 | isTrggerEvent | i8 | `:12764` |
| N10–N15 | trigger extension | only if N9==1 | `:12765–12775` |
| N16 | countryId | i8 | `:12777` |
| N17 | speed | u8 | `:12778` |
| N18 | grade | u8 | `:12779` |
| N19 | **objectDataId** | **i16** | `:12781` `setObjectDataId(getShort())` |
| N20 | block V | variable | `readSpriteView1` `:13249` |

`setPos(worldX, worldY)` runs at `:12780` before `setObjectDataId`.
`GMap.worldX2SceneX` / `worldY2SceneY` pass coordinates through unchanged
(`GMap.java:81,85`).

Block V (`readSpriteView1`):

| Order | Field | Type | Code |
|---:|---|---|---|
| V1 | imageCount | i8 (signed; use 0..127) | `:13250` |
| V2 | imageId[i] | i16 × imageCount | `:13253` |
| V3–V5 | actionType, actionId, direction | i8×3 | `:13255–13257` |
| V6 | horseType | i8 | `:13264` |
| V7 | horseObjectDataId | i16 if horseType ≥ 0 | `:13265` |
| V8–V9 | buffCount + (num i8, id i16, iconId i16) | `:13266–13272` |
| V10 | ignoredViewByte | i8 | `:13274` |
| V11 | wuxingType | i8 (`-1` → internal 5) | `:13275–13280` |
| V12 | fabaoQuality | i8 | `:13281` |
| V13 | fabaoObjectDataId | i16 if ≥ 0 | `:13283` |

Status: `VERIFIED` for field order/types from DEX; encoder path previously
runtime-checked only for the narrow TEST OBJ1014 probe (`run112928`).

### 2.3 How objectDataId and image_ids drive appearance

| Link | Evidence | Status |
|---|---|---|
| objectDataId → OBJ file | `GSprite.setObjectDataId` `:1376` → `GDataManager.getObjectData(DATATYPE_OBJECT, String.valueOf(id))` → `GUtil.dataPath + "obj/" + id + ".obj"` (`GBaseData.initFromJar`) | `VERIFIED` |
| OBJ file → embedded IMG list | `GObjectData.init` `:297–310`: `imageType`, `objectType`, count, then each slot `readShort` → `DATATYPE_IMAGE` (`/data/img/<id>.img`) | `VERIFIED` |
| packet image_ids → override slots | `initImageDataList` `:829` allocates override arrays; `GObjectFrameData.draw` `:33–36` uses override slot if present, else falls back to `objectData.imageDatas[slot]` | `VERIFIED` |
| draw requires objectData | `GSprite.draw` `:476` returns unless `objectData != null && isReady() && animDataIndex != -1` | `VERIFIED` |
| ModelID (`n420*` / `m510*`) → objectDataId | No column in `zsNpc_language` / `zsMonters_language`; Original 1.17 DEX has no `ModelID` string | `UNKNOWN` / `REJECTED` as client-file join |

Conclusion: for Original 1.17, appearance identity on the wire is
**`objectDataId` (i16)** plus optional **`image_ids` overrides**. ModelID is a
PC/revived conf key only and never appears on the Original cmd132 path.

### 2.4 `cmd=9` — NPC navigation list (not a spawn body)

| Mode | Fields | Code |
|---|---|---|
| mode byte ≠ 0 and == 1 | count i8, then count × NpcListId i32 (remove matching entries) | `:8802–8816` |
| mode byte == 0 | count i8, then per entry: NpcListId i32, name str, X i16, Y i16, then `ReadNpcFlagFuction()` | `:8818–8844` |

IDs: `NpcListId` is i32 runtime id (same family as cmd132 spriteId), not
objectDataId. X/Y are map coordinates for the nav marker.
Status: `VERIFIED` field order from DEX. BLRM never emits cmd=9.
Caller note (2026-09-25): `sendGetNpcListInSceneMessage` has **0 call sites**
outside its definition (JADX + smali). cmd9 response feeds only the NPC guide
list UI, not `scene.addSprite` — see `docs/PROTOCOL.md` cmd9 vs sprite visibility.

### 2.5 `cmd=323` — collection (gather) view

`processCollectionViewMessage` `:4186`: spriteId i32, remove i8, isCollection
i8, pos i16×2, name str, relation i8, canSelect i8, canCaiJi i8, caiJiTime
i32, **objectDataId i16**, imageCount i8, imageId i16×N.
Status: `VERIFIED` field order. Not emitted by BLRM.

### 2.6 PC jar (`main.b.a.g.g`) — not wire-identical to Original 1.17

- Class `main.b.a.g.g` holds `a(DataInputStream, short)` and
  `b(DataInputStream, boolean)` readers (javap dump this session).
- Those readers take **UTF ModelID / name strings first**, resolve via
  `main.b.a.a.y.b/c/e` (zs language tables), then position/HP shorts —
  a **different framing** from Original cmd132's binary short objectDataId.
- Prior limited class-entry string scan: `MATCHED_ENTRIES=0` for
  `spawn` / `ModelID` / `n420` / `m510` / `objectData` / `NpcList` needles.
- Treat PC/revived cmd-family mapping as `CANDIDATE` / architecture reference
  only; do not copy PC field order into the Original encoder.

## 3. Bounded spawn-record search

| Tree | What was searched | Result |
|---|---|---|
| TTpc `assets/conf` | all conf `*.dat` / properties for `spawn`/`出生`/`刷怪`/`ModelID`/`n420`/`m510` | no spawn table; language-only |
| TTpc `assets` top-level dirs | name listing only (no recursive TTpc walk) | no spawn-named data files |
| Revived APK conf/json/txt/csv/properties (42 entries) | same needles | `hits 0`; only `zsMonters_language.dat` / UI `monsterhead.*` match monster naming |
| Revived `map_id_remap.json` | present | map short→scn remap only, no spawn XY |
| Original 1.17 APK | prior DEX string scan (MODELID doc) | no `ModelID` / spawn tables |

Status: `UNKNOWN` for original map → spawn XY and ModelID → objectDataId from
client files. These live on the original **server**, not the client.

## 4. BLRM comparison — first missing / incorrect fields

Encoder: `server/truthan_local_server_v026.py` `npc_view_body` `:656`,
probe population `starter_probe_entities` `:744`, send path
`send_starter_probe_entities` `:823`.

| Field / packet | Client expectation | BLRM current | Gap |
|---|---|---|---|
| cmd132 GNPC field order / types | §2.2 | matches `npc_view_body` | none on layout (`PARTIAL` overall: layout only) |
| **objectDataId** for real tutorial NPCs | original server short | probe uses `1014/1015/1016/1155/2077` or env overrides; identity `UNKNOWN` | **first missing identity field** |
| **spawn X/Y** for tutorial NPCs | original server XY | fixed relative to `(180,230)` or probe `(203,253)` | **first missing position field** |
| **spriteId** | original runtime id | synthetic `220010+` | candidate only |
| image_ids (V1–V2) | optional overrides; `.obj` embeds slots | default `()` empty | OK if objectDataId's `.obj` has image slots (`VERIFIED` OBJ1014 path) |
| **cmd=9 NPC nav list** | mode0 entries with i32 id, name, XY | **never sent** | missing for **guide/list UI only**; not required for cmd132 sprite visibility |
| cmd=323 collections | gather nodes | never sent | out of scope until collection NPC data exists |
| ModelID on wire | Original has no ModelID field | not sent | N/A (`REJECTED` as required field) |

There is **no incorrect field order** in `npc_view_body` relative to the DEX
reader. The gaps are **data identity** (objectDataId, XY, real spriteIds) and
the **missing cmd=9 list for the guide UI** (cmd9 is not a sprite prerequisite),
not a mis-ordered cmd132 body.

## 5. One VERIFIED example entity (map + position)

| Field | Value | Evidence |
|---|---|---|
| map / scn id | `9068` (`轩辕奇境`) | `docs/MAPS.md`; server `STARTER_SCENES` |
| player spawn | `(180, 230)` | cmd10 known-good |
| diagnostic NPC | spriteId `220010`, name `TEST OBJ1014` | probe entity |
| objectDataId | `1014` → `/data/obj/1014.obj` → IMG refs | `verify_probe_object`; catalog chain |
| position | `(203, 253)` | client traversed this cell in scene 9068 (run111505) |
| runtime | cmd132 rendered/selected | run112928 (narrow path) |

This is **not** an original-server tutorial spawn. 彩云仙子 / 火狐妖 remain
`UNKNOWN` for objectDataId and XY.

## 6. Proposal (small, reviewable — no code written)

**Do not change `npc_view_body` field order.** Layout already matches DEX.

### A. Data acquisition (blocked on original server evidence)

Needed to promote a real tutorial NPC/mob:

1. Real-client or original-server evidence for **one** of:
   - cmd132 capture containing tutorial NPC name + objectDataId + X/Y; or
   - server-side dump mapping tutorial NPC → objectDataId + spawn XY; or
   - packet carrying ModelID and objectDataId together (none in Original DEX path).
2. Until then keep `TRUTHAN_EXPERIMENTAL_SPAWN` / asset probes gated; do not
   rename probes to tutorial names.

Precise capture needed: **cmd=132 body for GNPC type=2 on scene 9068 (or
tutorial scene) after original server enter-scene**, or any S→C packet that
lists nav NPC id + name + XY (cmd=9 mode0) for that scene.

### B. Server handler map (for a later change, not this session)

| Piece | File / symbol | Action when data exists |
|---|---|---|
| GNPC encoder | `truthan_local_server_v026.py` `npc_view_body` | keep order; fill real objectDataId / XY / spriteId |
| Population | `starter_probe_entities` / `send_starter_probe_entities` | replace probe rows with evidence-backed rows |
| Nav list | **missing** — add `NPC_LEAD_LIST = 9` encoder + send after cmd132 | body: `mode=0`, count, per-entry i32 id, str name, i16 X, i16 Y, flagCount+flags |
| Collections | **missing** — cmd323 only when gather data exists | |
| Asset gate | `verify_probe_object` | keep asserting object + IMG refs before send |

### C. Explicit non-goals

- No ModelID field on Original cmd132.
- No PC `map_id_remap` on Original (loads packet scn short directly).
- No recursive TTpc spawn hunt (client files do not contain spawn tables).

## 7. Residual unknowns

| Item | Status | Next evidence |
|---|---|---|
| Original tutorial objectDataId | `UNKNOWN` | cmd132/cmd9 capture or server dump |
| Original spawn XY for NPCs/mobs | `UNKNOWN` | same |
| ModelID → objectDataId (any tree) | `UNKNOWN` | packet with both fields, or server data |
| cmd9 runtime on real client with our encoder | not implemented | implement + `01_test_capture.bat` |
| PC jar cmd-number ↔ Original 132/9 mapping | `CANDIDATE` | further javap only if needed |

## 8. Related docs

- `docs/PROTOCOL.md` — cmd132 blocks A–V (authoritative field tables).
- `docs/research/MODELID_MAP_SPAWN_JOIN.md` — three-location asset/join table.
- `docs/research/ENTITY_IMAGE_CATALOG.md` — obj→img chains for example entity.
- `docs/ENTITIES.md` / `docs/MAPS.md` — TEST OBJ1014 status; scene 9068.
