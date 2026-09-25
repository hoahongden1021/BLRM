# Maps / Scenes

## Starter scene

Current starter scene:

- ID: `9068` / `0x236C`
- Name/context: `轩辕奇境`
- Status: `VERIFIED` visually in current client test

Known-good player spawn:

- X = `180`
- Y = `230`

Status: `VERIFIED`

---

## Rejected spawn

- `(100,100)` — `REJECTED`

Reason:

The player appeared at the edge/blocked area, played movement animation, but could not actually traverse the map.

---

## Older map experiments

### Map 7000

- rendered successfully in earlier experimentation;
- later determined not to be the correct starter scene.

Status: `REJECTED` as starter scene, still potentially useful for future map research.

### Map 6000

- attempted earlier;
- missing asset `9174` was encountered.

Status: `PARTIAL / unresolved`

---

## Scene research rules

When documenting a scene, record:

- scene ID
- name
- `.scn` filename/path
- required `.obj`
- required `.img`
- walkable/collision observations
- portals/transitions
- NPC/mob references if proven
- evidence source

## 2026-09-22: scene loader boundary for NPC research

Status: PARTIAL, static analysis only. GScene.initFromJar/initFromBytes inflate
the .scn contents before GScene.init(InputStream) reads them. All 437 gzip-bearing
APK entries are .scn files; the research extractor now scans their decompressed
bytes as well. See docs/research/entity_asset_evidence.json for hashes/results.

GScene.init (JADX GScene.java:1514; smali GScene.smali:11183) reads map dimensions,
tile images/animations, grid data, GDoodadObject decorations, transfer areas,
scene metadata and optional background. Its decoration loop allocates pool type
1, not GNPC type 2. GDoodadObject.init reads object resource ID/layer/grid Y/grid X/
mirror flags; it does not read an NPC name. This loader does not supply an
authoritative 彩云仙子 named-spawn record. Exact smali methods are retained in
docs/research/entity_spawn_smali.txt. No map data or server map behavior changed.

## 2026-09-25: full decode of APK `data/scn/9068.scn`

Status: `VERIFIED` field layout from `GScene.init` / `initFromJar` + `GZIP.inflate`.
Decoder: session temp script (no repo write) → JSON dump of every parsed field.
Source APK entry: `data/scn/9068.scn` (4331 B gzip → 7969 B inflated).

Parsed fields (order matches `GScene.init`):

| Field | Value | Notes |
|---|---|---|
| `map_gw` | `45` | grid width in cells |
| `map_gh` | `60` | grid height in cells |
| cells | `2700` | gw×gh |
| tile image groups | `9` ids: 15010,16001,16000,16025,14010,10010,16015,16042,16039 | via `initTileImageData` |
| tile anims | `27` | `GTileAnimData` |
| block-type counts | `{0:513,1:17,2:12,3:13,4:9,5:7,6:5,7:12,8:6,9:2,11:4,13:2100}` | low nibble of first short per cell (`getGridBlock:1443`) |
| GDoodadObject | `17` | obj 15051 / 15052 / 14016, static decorations with grid gx/gy — **not** NPC/mob spawns |
| transfer areas | `1` | `GTransferArea` |
| back_color / map_type / country / world_map / music / name / entrance | present | name/music parsed; back layer follows |
| back layer | `299` bytes residual | `GSceneBackLayer.init` not yet parsed |

Walkability (from `GScene.canCross:711` + `HITMASK` 12×16 + `BYTEMASK`):

- block `13` = fully blocked (2100 cells in this map — open terrain dominates elsewhere);
- otherwise `BYTEMASK[remX>>1] & HITMASK[block-1][remY]`;
- server spawn `(180,230)` → block `0` → **walkable**;
- fixture `(203,253)` → block `0` → **walkable**;
- reconstructed monster `(196,238)` → block `0` → **walkable**.

Entity positions: `.scn` contains **no NPC/mob spawn table**. Only static doodads
have grid positions. Original tutorial NPC/mob spawn XY remains `UNKNOWN`
(never guessed from doodad coords).

Evidence: APK `data/scn/9068.scn`, `build/research/jadx/sources/com/t4game/GScene.java`
(`init:1513`, `readMapData:316`, `canCross:711`, `getGridBlock:1443`),
`GSceneBackLayer.java`, `GDoodadObject.java`, `GTransferArea.java`,
`GTileAnimData.java`, `GUtil.java:23-24` (`BYTEMASK`/`HITMASK`).

## 2026-09-25: data-driven playable starter population

`server/scene_population_9068.json` configures three selectable NPCs and two
selectable/hittable monsters. All five positions are `RECONSTRUCTED`; the
server accepts only points in the conservative block-0 walkable subset from
`server/scene_walkability_9068.json`. The population switch is
`TRUTHAN_DATA_SPAWN` (default OFF). cmd132 is sent only after the cmd10 reply.
These coordinates are not claims about the original Android server.

Provenance: Original Android 1.17 APK scene bytes provide grid geometry and
collision decoding; original APK object/image assets support the numeric asset
chains. TTpc language tables and the BLRM-local-inputs revived APK were checked
as references, but their available files do not join names/ModelIDs to Android
object IDs or spawn coordinates. See `docs/research/MODELID_MAP_SPAWN_JOIN.md`.
