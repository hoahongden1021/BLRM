# Scene 9068 entity provenance

This table separates client facts, revived-reference data, and local gameplay
reconstruction. It is the source of truth for
server/scene_population_9068.json.

## Targeted TTpc / revived-reference check

TTpc source: C:\Users\Mech\Desktop\TTpc\ZhuShen-1.0.0.jar,
SHA-256 E94F41EE433CA3B62D7C8F2D31151077A920C1D3AEB37B2BCBEBCF85B25EC4E8.
Targeted javap inspection of main.b.a.g.g, main.b.a.g.i,
main.b.a.a.y, main.b.a.a.v, and main.b.a.e.a.y confirms the loaders
previously traced in ZS_LANGUAGE_DAT_LOAD_DECODE.md and
MODELID_MAP_SPAWN_JOIN.md:

- y.a(lang) and v.a(lang) load NPC and monster localized text by ModelID.
  Those rows provide names and, for NPCs, title/hello/chat strings; they do not
  provide objectDataId, scene ID, or spawn coordinates.
- main.b.a.e.a.y loads data/scn/map_id_remap.json for map-ID remapping.
  It does not map a scene to NPC or monster records.
- The JAR contains data/scn/*.scn scene assets and data/ui/FoundNPC.bin
  (NPC-guide UI), but its targeted data inventory has no spawn-named table,
  entity placement file, or map-to-entity record.
- The revived APK carries the same ModelID language tables and remap resource.
  The revive does not add an objectDataId or spawn-coordinate join. This is
  reference evidence only; it is not original Android 1.17 server truth.

The decoded Original Android 1.17 data/scn/9068.scn has tile/grid geometry,
static doodads, and a transfer area, but no NPC/monster spawn table. Therefore
no original-server XY is claimed. Local positions below are selected from the
decoded block-0 walkable subset and explicitly marked RECONSTRUCTED.

## Population and candidate-reference table

server/scene_population_9068.json#/entities/N is the local data row. A TTpc
row mentioned below is an unjoined name/dialogue reference; its presence does
not establish that the corresponding object asset is that character.

| Entity name / ModelID | Source file and row | Candidate Original-client objectDataId and evidence for that join | Dialogue ID / text | Scene ID | Spawn XY | Status |
|---|---|---|---|---:|---|---|
| Beginner Guide / REVIVED_REFERENCE ModelID n420001, assigned to object 1014 as RECONSTRUCTED | Local server/scene_population_9068.json#/entities/0; TTpc conf/zsNpc_language.dat, key row n420001 (name/hello/chat only) | 1014 is a candidate appearance only: Original APK data/obj/1014.obj references IMG 7197. No TTpc ModelID-to-objectDataId join; assigning this reference name to 1014 is RECONSTRUCTED. | No recovered dialogue ID. Local cmd120 function 7 / cmd73 text: “You are in the reconstructed starter area. Explore nearby creatures; original tutorial objectives are not yet recovered.” The TTpc row has “Click me to receive the quest.” as reference text only; it is not used as a quest. | 9068 | (170,232), RECONSTRUCTED; decoded block 0 | TTpc text is REVIVED_REFERENCE; name-to-asset join and spawn are RECONSTRUCTED; original join is UNKNOWN |
| Guide Fairy / REVIVED_REFERENCE ModelID n420003, assigned to object 1015 as RECONSTRUCTED | Local server/scene_population_9068.json#/entities/1; TTpc conf/zsNpc_language.dat, key row n420003 | 1015 is a candidate appearance only: Original APK data/obj/1015.obj references IMG 7198. No evidence joins n420003 or a scene-9068 NPC to object 1015; this assignment is RECONSTRUCTED. | No recovered dialogue ID. Local cmd120 function 7 / cmd73 text: “This local guide has no recovered original quest records.” | 9068 | (190,216), RECONSTRUCTED; decoded block 0 | TTpc name is REVIVED_REFERENCE; name-to-asset join and spawn are RECONSTRUCTED; original join is UNKNOWN |
| Village Head / REVIVED_REFERENCE ModelID n420004, assigned to object 1016 as RECONSTRUCTED | Local server/scene_population_9068.json#/entities/2; TTpc conf/zsNpc_language.dat, key row n420004 | 1016 is a candidate appearance only: Original APK data/obj/1016.obj references IMG 7199. No evidence joins n420004 or a scene-9068 NPC to object 1016; this assignment is RECONSTRUCTED. | No recovered dialogue ID. Local cmd120 function 7 / cmd73 text: “This local guide has no recovered original quest records.” | 9068 | (190,248), RECONSTRUCTED; decoded block 0 | TTpc name is REVIVED_REFERENCE; name-to-asset join and spawn are RECONSTRUCTED; original join is UNKNOWN |
| Fire Fox / REVIVED_REFERENCE ModelID m510103, assigned to object 1155 as RECONSTRUCTED | Local server/scene_population_9068.json#/entities/3; TTpc conf/zsMonters_language.dat, key row m510103 | 1155 is a candidate appearance only: Original APK data/obj/1155.obj references IMG 1207. The TTpc monster name row has no object, scene, or position fields; the assignment is RECONSTRUCTED. | N/A; no monster dialogue response implemented | 9068 | (210,232), RECONSTRUCTED; decoded block 0 | TTpc name is REVIVED_REFERENCE; name-to-asset assignment and spawn are RECONSTRUCTED; original join is UNKNOWN |
| Reconstructed Creature 2077 / ModelID UNKNOWN | Local server/scene_population_9068.json#/entities/4; no matched TTpc entity row | 2077 is a candidate appearance only: Original APK data/obj/2077.obj references IMG 3277. No name/ModelID-to-object join was found. | N/A; no monster dialogue response implemented | 9068 | (210,248), RECONSTRUCTED; decoded block 0 | Asset chain is VERIFIED; population identity/stats/position are RECONSTRUCTED; original join is UNKNOWN |

Name references are not spawn joins. Original Android 1.17
ForceGuide.npcNames names the tutorial targets 彩云仙子 and 火狐妖
(JADX build/research/jadx/sources/com/t4game/ForceGuide.java:71), but it
does not identify their objectDataIds or server positions. Those original-client
names are therefore not assigned to candidate assets in this population.

## Implementation boundary

- TRUTHAN_DATA_SPAWN=1 opts into this reconstructed population; default is OFF.
- The population loader resolves scene_population_<sceneId>.json and
  scene_walkability_<sceneId>.json. Missing/malformed data fails closed.
- Every configured entity must land in the decoded scene's conservative
  block-0 walkable subset and reference a bundled object whose image references
  exist.
- Server sends individual cmd132 entity records after the cmd10 scene-ready
  response. NPC interaction data is per record and uses the statically traced
  cmd120/cmd73 readers. Quest groups remain empty.
- cmd136's request is statically known, but the required cmd137 result still
  contains unresolved nested skill-effect/property records. No combat result
  packet is fabricated.

## Current client verification result

Focused source/protocol suites pass (48 tests total across
`tests.test_map_entry_integration`, `tests.test_v026_baseline`, and
`tests.test_truthan_ui_control`). The opt-in integration path emits all five
cmd132 population records; the off path emits none. The local socket interaction
test exercises cmd120 and cmd73 encoders and the configured NPC response.

The requested short target-client visual check is BLOCKED before map entry.
Using the ADB-only bootstrap with `--reuse-session --no-create`, the client
reached ROLE_LIST after one login exchange; the server returned cmd20 with
`role_count=0`. The controller sent no role-create request and stopped. Thus
scene 9068 population, movement, selection, and visible dialogue have not been
verified on the real client, and no entity screenshot is claimed. The runtime
trace is `runtime/agent/ui_control/20260925T142301_003429Z/trace.jsonl` (local,
contains login UI state; not published). No second login, role creation, or
server restart was attempted after that result.
