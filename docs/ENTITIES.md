# Entities / NPC / Mob Notes

## Current scene 9068 population (2026-09-25)

The earlier single-NPC/TEST OBJ1155 notes below are historical diagnostics and
are superseded for opt-in gameplay by `server/scene_population_9068.json`.
That file contains three NPCs and two monsters, each with an explicit
RECONSTRUCTED identity-to-asset assignment, coordinates, and stats. Original
APK object-to-image asset chains and decoded block-0 walkability are VERIFIED;
TTpc ModelID/name/text rows are REVIVED_REFERENCE only and do not join to an
APK object ID or map spawn. The full row-by-row comparison, including source
rows and dialogue text, is in
`docs/research/SCENE_9068_ENTITY_PROVENANCE.md`.

With `TRUTHAN_DATA_SPAWN=1`, configured cmd132 records are sent after the
cmd10 scene-ready response. NPCs have local cmd120 function 7 / cmd73 dialogue
responses; no recovered quest IDs or quest records are included. **Combat is
implemented and VERIFIED live (2026-09-26, `TRUTHAN_COMBAT=1`):** the real
client double-tapped monster 230110 Fire Fox at device `(860,564)`, its
auto-attack chain sent cmd136 (19B) at ~1 s cadence, the server answered
cmd137 (66B) draining hp `60->45->30->15->0`, and the monster respawned via
cmd132 at exactly +5 s with full HP; monsters 230110/230111 were killed and
respawned repeatedly while the three talk NPCs were never targeted (cmd136
against them is rejected `npc_protected`). All combat values are explicit
RECONSTRUCTED tunables, off by default (`TRUTHAN_COMBAT=0`). Damage numbers
`-15` and the target-frame HP bar were captured on screen in
`docs/research/ui_control_images/run_20260926_en_combat*/`. Population
remains off by default. The populated data has passed real-client visual
checks (dialogue + combat rendering).

## 2026-09-22 runtime result: one diagnostic GNPC

VERIFIED for rendering/selection of TEST OBJ1014 in clean run112928 only.
See debug_runs/TruThan_debug_20260922_112928.zip: probe_spawn.png,
probe_selected.png, packet logs, source snapshot and full Logcat. It renders a
purple winged character; selection shows its test name, portrait and HP/MP bars.
This visual description is NOT an original NPC identity mapping.

Synthetic runtime ID220010, asset1014/image7197, scene9068, position203/253
(position traversed by player in run111505). Test values: HP/maxHP/MP/maxMP100,
canSelect1, canHit0, autoControl0, speed40, initialState/actionType/actionId/dir0,
appearanceEffectGate1; no flags, trigger, overrides, horse, buffs or fabao.
No original runtime ID, spawn position, stats or NPC speed is established.
02_test_npc_probe.bat enables exactly this one probe. Default population remains
off. Dialogue did not open with the tested inputs; interaction eligibility and
flags are the next research target. Original 彩云仙子 and 火狐妖 remain UNKNOWN.

## General status

The real server-driven NPC/mob system is not yet fully reconstructed.

Do not infer entity identity from visual similarity alone.

Spawn-chain proposal (2026-09-25): cmd132/cmd9/cmd323 field order VERIFIED;
objectDataId is the Original appearance identity (not ModelID). Original
tutorial objectDataId and spawn XY remain UNKNOWN; BLRM never sends cmd9.
See `docs/research/MAP_SPAWN_OBJECT_CHAIN_PROPOSAL.md`.

cmd9 role (2026-09-25, static call-graph): `sendGetNpcListInSceneMessage` has
**no callers** in the inspected 1.17 tree; cmd9 response only populates the
NPC guide list (`readyNpcList` / `FoundNPC.bin` / “NPC引导”). Sprite visibility
comes from cmd132 → `scene.addSprite`. Omitting cmd9 does **not** explain
missing map sprites. Data-driven spawn gate: `TRUTHAN_DATA_SPAWN` (default OFF),
first fixture TEST OBJ1014. Status `PARTIAL` until a real-client sequence.

## 2026-09-25: RECONSTRUCTED hittable TEST monster (OBJ1155)

- Second `DATA_SPAWN_FIXTURES` entry when `TRUTHAN_DATA_SPAWN=1`:
  sprite `220011`, name `TEST OBJ1155`, objectDataId `1155`, scene 9068,
  position `(196,238)`, `can_select=1`, `can_hit=1`, HP/MP 60/60/20/20,
  label `TEST_MONSTER_RECONSTRUCTED`.
- Assets VERIFIED: OBJ1155 → IMG1207 present in bundled APK; cmd132 GNPC
  field layout VERIFIED (baseline + integration tests).
- Position VERIFIED walkable via decoded `GScene.canCross` for 9068
  (block 0 at 196,238); not claimed as an original spawn XY.
- Identity vs tutorial 火狐妖 remains `UNKNOWN`. Never rename this fixture
  to an original NPC/monster name.
- Integration test asserts both sprites and `can_hit==1` on the monster body.
  Full suite: **23 OK**.

## Character classes / skills (2026-09-24)

- Occupations (original): 力士(0), 刺客(1), 唤雷师(2), 天师(3), 武神(4), 圣仙(5);
  create-role UI only exposes 0–3. See `CommonConstants.OCCUPATION_NAMES`.
- Skill families 171–175: **class ownership UNKNOWN** (no static map).
- Weapon types: 刀/剑/斧/法剑/羽扇/法杖; skill weapon limits arrive in packets.
- Detail: `docs/research/SKILL_CLASS_WEAPON_MAP.md`.
Do not invent a family→class assignment from names or ID prefixes.

## Entity ↔ image catalog (2026-09-24)

- Full visual catalog: `docs/research/entity_image_catalog.html` +
  `ENTITY_IMAGE_CATALOG.md` + `catalog_*.csv`.
- objectDataId→obj→img: **VERIFIED** for all 377 objects (295 with image slots).
- Goods/skill icons: **packet iconId** → pgg groups (GOOGS_PNG / group 5); no
  static skill/item→icon table in conf or DEX.
- NPC/monster/mount ModelID→objectDataId: still **UNKNOWN** (name tables only).
Do not name an obj/img from screenshots alone.

---

## Tutorial-relevant names

### 彩云仙子

- Referenced by client/tutorial logic.
- Exact objectDataId: `UNKNOWN`
- Exact image ID: `UNKNOWN`
- Exact spawn coordinates: `UNKNOWN`
- Interaction packet: `UNKNOWN`

Status: `UNKNOWN` identity mapping, name relevance `VERIFIED`

### 火狐妖

- Referenced by client/tutorial logic.
- Exact objectDataId: `UNKNOWN`
- Exact image ID: `UNKNOWN`
- Exact spawn coordinates: `UNKNOWN`
- combat behavior: `UNKNOWN`

Status: `UNKNOWN` identity mapping, name relevance `VERIFIED`

---

## v0.26 candidate asset probes

Prepared candidates:

| Object ID | Image ID | Meaning |
|---:|---:|---|
| 1014 | 7197 | CANDIDATE probe only |
| 1015 | 7198 | CANDIDATE probe only |
| 1016 | 7199 | CANDIDATE probe only |

No candidate above may be renamed to `彩云仙子` without new evidence.

---

## Rejected fake entities

v0.22 injected guessed entities such as:

- 野兔
- 火狐狸

These were only protocol probes.

They rendered incorrectly and contributed to client-side errors.

Status: `REJECTED` as authoritative game data.

---

## Entity reverse checklist

For each real entity type:

1. identify client handler;
2. determine packet field order;
3. identify object/appearance ID from data;
4. verify animation/image resources;
5. verify HP/MP/default nonzero requirements;
6. verify coordinates;
7. verify name/type;
8. test one entity;
9. capture click/selection/talk packets;
10. document exact evidence.

## 2026-09-22: client and asset evidence, before any new spawn

Status: `PARTIAL` for static spawn analysis; `UNKNOWN` for original 彩云仙子
objectDataId/runtime ID/coordinates. No entity was spawned during this research.
The full wire schema and call audit are in [PROTOCOL.md](PROTOCOL.md).

### Tutorial name linkage

Input APK and DEX hashes are recorded in
[entity_asset_evidence.json](research/entity_asset_evidence.json).
`ForceGuide.java:65,71` contains the movement/selection/dialogue instructions
and `npcNames = {"彩云仙子", "火狐妖"}`. `isNpcInUserView` (Java 169;
exact smali retained in [entity_spawn_smali.txt](research/entity_spawn_smali.txt)):

1. Enumerates `gameWorld.scene.npcs`.
2. Compares `gSprite.name.equals(requestedName)`.
3. Requires proximity within the user's viewRadius, visibleReady, and canSelect==1.
4. Returns the result of a second radius-50 proximity check for the first match.

It does not compare objectDataId, image ID, a fixed runtime ID, or fixed spawn
coordinates. Tutorial instruction says to move LEFT toward 彩云仙子; that is
not evidence for an exact coordinate. Radius checks use scene coordinates;
the world/scene conversion methods are identity functions in this APK.

A literal search of all 3471 APK ZIP entries, using UTF-8, UTF-16BE, UTF-16LE
and GBK encodings, found the following asset occurrences (byte offsets):

| Asset | Text | Offset(s) |
|---|---|---|
| Language/Language17.str | 彩云仙子 | 746 |
| Language/Language19.str | 彩云仙子 in tutorial instructions | 955,984,1010 |
| Language/Language18.str | 火狐妖 | 2383 |
| classes.dex | name strings and tutorial instructions | see evidence JSON |

No literal matches occurred in `data/obj`, `data/img`, or `data/scn` under
those encodings. This does NOT prove the absence of an encoded numeric mapping.
The language strings are name/instruction evidence, not an object-ID mapping.
No such mapping was recovered from the inspected ForceGuide logic or asset records.

### Object loader and existing candidate assets

`GObjectData.init` (`GObjectData.java:297`, smali excerpt retained) identifies
the first bytes as imageType, objectType, imageSlotCount. Each image slot is a
SIGNED i16 image ID followed by one consumed/unused byte; -1 is an empty slot.
The old note calling the first two bytes generic version/type is imprecise.
After that: four i16 bounds, object frame count/size/offsets/data, animation
count/size/offsets/data. For objectType==1, one ignored byte precedes a 240-byte
action map (3 states * 20 actions * 4 directions). No NPC name field is read
by this sprite-object loader.

`getActionAnimDataIndex(state,actionId,direction)` indexes
`state*80 + actionId*4 + direction`; -1 entries fall back to state 0, then
standing action 0 for the same direction. `GSprite.setAction` and the smali
assignments establish actionId/direction independently of initialState.

The existing candidates were checked against this loader, not inferred from
v0.22 packets. Exact hashes, offsets, bounds and frame lists are in the JSON.

| Object | Image | Object type | Object frames / animations | Action 0 animation indices for directions 0,1,2,3 | PNG dimensions |
|---:|---:|---:|---|---|---|
| 1014 | 7197 | 1 (sprite) | 44 / 28 | 0,14,1,2 | 146 x 124 |
| 1015 | 7198 | 1 (sprite) | 44 / 28 | 0,14,1,2 | 158 x 112 |
| 1016 | 7199 | 1 (sprite) | 44 / 28 | 0,14,1,2 | 146 x 124 |

Each of those standing animations has 8 frames; their animation data bounds
and referenced frame IDs are in range. All three .obj records are consumed
exactly by the parser. Their image containers are type 1; PNG CRCs and zlib
payloads pass validation, and image containers are consumed exactly.
This is not a full audit of every frame/clip or Android rendering validation.
Candidate identities remain `CANDIDATE`; none is established as 彩云仙子.

`readSpriteView1(imageCount=0)` allocates empty override arrays. In
`GObjectData.drawObjectFrame/drawClipLayer`, slots without overrides fall back
to the object's own imageDatas. A probe need not invent image overrides for
these self-contained objects.

### Conditions for a future probe, not original gameplay rules

- Use one fresh GNPC, labeled `OBJ<actual asset ID>`, to test a known bundled
  asset; do not send the 彩云仙子 name as an identity claim.
- The wire schema is now sufficiently grounded to design that probe. Do not
  call it runtime-safe/VERIFIED before the real-client capture succeeds.
- No trigger, flags, buffs, horse, fabao or image overrides are needed for the
  first rendering test. Avoid the arrival special effect by its header gate.
- Separate initialState, actionType, actionId and direction. For the candidates
  above, action 0 and directions 0..3 have checked standing-animation records.
- Positive maxHp AND maxMp avoid divisions by zero in `GSprite.drawSelected`.
  HP must be positive and initialState must not be 2 for visibility. Nonzero
  speed is prudent even for a stationary probe because movement math divides
  by FP_speed2; no original NPC speed is established.
- Keep autoControlType=0 for a stationary diagnostic (GNPC.update enables
  auto-movement for 1 or 2). These are test settings, not recovered spawn rules.
- Runtime ID and position still need an explicitly synthetic, collision-checked
  test setup. This research does not invent the original ID or location.
- Stop for schema review before changing server. After implementation, use a
  new `01_test_capture.bat` bundle; no old test ZIP can validate this analysis.

## 2026-09-22 follow-up: identity evidence gaps narrowed

- Installed `com.t4game` on `emulator-5554` matches the analyzed APK by SHA-256
  (see RE_FINDINGS). This removes the previous binary-version uncertainty.
- GScene.initFromJar/initFromBytes first call GZIP.inflate. Extended the literal
  search to decompress all 437 gzip-bearing entries (all .scn files): no decode
  errors and no 彩云仙子/火狐妖 matches in the same four encodings. Exact entry
  sizes/hashes are recorded under `gzip_search` in entity_asset_evidence.json.
  This closes the compressed-scene search gap, not every possible numeric mapping.
- Inspected scene loading creates GDoodadObject decorations, not named GNPC
  records. Separately, cmd9 supplies an NPC navigation list containing ID/name/
  coordinates/flags, with no appearance ID. See PROTOCOL.md for its static layout.
- The targeted web search did not recover an authoritative 彩云仙子 asset mapping.
  Older guides use 火狐狸/野兔 names, but cannot establish equivalence with the
  DEX tutorial's 火狐妖 or justify reusing the rejected v0.22 spawn implementation.
- Original NPC identity remains UNKNOWN. No source/position/ID was invented and
  no server change or entity spawn occurred in this follow-up.

## 2026-09-22: ID bridge and exact name-to-render data flow

The requested cmd9 <-> cmd132 identity relationship is established by
`GameWorld.setNPCFunctionFlag`: the same int ID updates a GNPC from scene.npcs
and a matching NpcList record. Full call chain and evidence table are in
[PROTOCOL.md](PROTOCOL.md#2026-09-22-proven-client-id-linkage-cmd9---cmd132).
Runtime spawning remains PARTIAL; the numeric appearance of 彩云仙子 is UNKNOWN.

### Every literal-name code reference

Whole JADX-source and whole smali searches find 彩云仙子 literal references only
in ForceGuide: three BUBBLE_TXT instruction entries and npcNames[0]. Smali
ForceGuide.<init> at lines 601/605/609 contains the instructions; line 815 holds
the exact name assigned to array index 0. Nearby numeric constants are tutorial
array indices/action states, not evidence of an NPC resource ID.

- getUnitDynamic: checks npcNames[0] first, then npcNames[1]; returns tutorial
  unit 1 or 10 (or -1). These return values are not entity/object IDs.
- isActionDynamicDone: tutorial action 0 tests first name; action 10 tests second.
- isNpcInUserView(String,GameWorld): enumerates scene.npcs.values via elements(),
  casts each to GSprite, checks exact `.name.equals`, viewRadius, visibleReady and
  canSelect==1, then returns the radius-50 check for the first qualifying match.
  **Return type is boolean, not GNPC/GSprite.** No sprite reference or ID is returned.
  Empty requested name/no matching entry returns false. It does not query cmd9's list.
- free clears npcNames; no name-to-object lookup occurs there.

The matching value is a GSprite view of an already-existing GNPC in the scene
table. The appearance is attached BEFORE this name test by received sprite data;
there is no local function that translates the string into a known object number.

### Construction, initialization and render prerequisites

1. Cmd132 lookup existing scene.npcs[String.valueOf(I)]; otherwise
   GDataManager.getFromPool(2) returns a recycled object or constructs GNPC.
   GNPC extends GSprite extends GMapObject. GNPC constructor sets type/poolId=2;
   GSprite constructor sets layer=1, store=1. Initial objectDataId=-1,
   objectData=null, image arrays=null, animDataIndex=-1; constructors do not
   assign a special appearance for 彩云仙子.
2. Handler assigns id/intId/scene and inserts into scene.npcs. readSpriteView
   fills name/HP/MP/selectability/state; setPos fills coordinates.
3. Handler reads i16 objectDataId -> GSprite.setObjectDataId (Java 1376).
   -1 returns; same already-loaded ID returns; a changed ID releases old images
   and object. Otherwise saves objectDataId, sets INIT_STATE_INITING0, and calls
   GDataManager.getObjectData(DATATYPE_OBJECT,String.valueOf(id),true).
4. getObjectData (Java 405) uses resource cache objectDatas[type]; a missing
   OBJECT allocates pool type 8 -> GObjectData. initObjectData (515) selects
   bundled file, RMS/buffered resource, deferred loading, or network update
   according to DataIndexInfo. Bundled path is data/obj/<id>.obj through
   GBaseData.initFromJar; initFromBytes supports updated bytes. Thus appearance
   is packet-selected; actual resource bytes can come from APK/cache/update.
5. GObjectData.init reads image slot IDs and loads each non--1 image via
   DATATYPE_IMAGE, plus bounds/frame/animation/action tables. readSpriteView1
   also initializes override image arrays and sets actionType/actionId/direction.
   imageCount=0 still must be READ and arrays initialized, not omitted.
6. GNPC.update calls GSprite.update (Java 1591). Once objectData.isReady,
   updateBounds and getActionAnimDataIndex run, INITING0 -> INITING1. The sprite
   enters view according to bounds; when all non--1 override image IDs are ready,
   initState becomes INITED. GObjectData.isReady also requires its own images ready.
7. GSprite.draw (473) returns when objectData missing/not ready or animDataIndex==-1;
   invisibleReady only draws effects. Resource frame/clip/animation indices must
   be valid and used animation frame counts nonzero. Selection rendering requires
   INITED and nonzero maxHp/maxMp. GNPC's HP/state visibility conditions still apply.

Name by itself supplies NONE of objectDataId, images, action-table indices or
render readiness. Successfully matching a name cannot establish its original art.

### Whole-APK search and numeric string-table indices

Re-ran reproducible extraction over all 3471 ZIP entries and 437 inflated .scn
members in UTF-8/GBK/UTF-16BE/UTF-16LE. Extended evidence JSON now records parsed
language rows and source references. Language.getStr divides a lookup index by
100 to choose LanguageN.str and uses index modulo 100 to choose its row.

| Language file / row | Lookup index | Meaning |
|---|---:|---|
| Language17.str / 69 | 1769 | literal 彩云仙子 |
| Language18.str / 63 | 1863 | literal 火狐妖 |
| Language19.str / 49,50,51 | 1949,1950,1951 | move/select/talk tutorial text |

These are **language lookup indices**, not NPC IDs or objectDataIds. No direct
`Language.getStr((byte)1,<these constants>)` call was found in JADX; ForceGuide
uses literal strings. Search of dynamic/computed indices is not claimed complete.
The header 3223 is the language count bound used by Language.getStr, not a nearby
entity ID. Plain and escaped-name whole-source matches are confined to ForceGuide.

APK data inventory: 2028 img, 437 scn, 377 obj, 73 ui, 9 wmp, 6 pgg and two
version files. Name-search hits remain only language files and DEX; no numeric
name-to-object table has been recovered. FoundNPC.bin, MissionList.bin and
trade_with_npc.bin are loaded as UI layouts; readyNpcList fills its UI from the
server-derived NpcList arrays. Their filenames are not evidence of an NPC database.
Another misleading ID is RoleQuest.npcId: getFunctioRoleQuest (Java 2267-2275)
sets it to the byte loop index, while reading names/three shorts from the packet.
It must not be treated as cmd9/cmd132's i32 runtime ID.

## 2026-09-25: reconstructed scene 9068 starter set

`server/scene_population_9068.json` now defines three NPC records and two
monster records with runtime sprite IDs, appearance object IDs, names, stats,
coordinates, selection/hit flags and NPC interaction data. Every record marks
identity, coordinates and stats `RECONSTRUCTED`. The object-to-image asset chains
are supported by the bundled Original Android 1.17 APK; identity associations
remain CANDIDATE and are descriptive `Reconstructed Guide/Creature <object id>`
labels. Do not rename them `彩云仙子` or `火狐妖`.

The available TTpc `zsNpc_language`/`zsMonters_language` data supplies separate
PC ModelID language names, and BLRM-local-inputs provides a revived APK with
matching asset/config families; neither source supplies a proven Android
ModelID/name-to-objectDataId or scene spawn join. These sources are recorded as
comparative references only. Original Android 1.17 `.scn` walkability validates
the chosen reconstructed points but contains no entity spawn table.

Server-side cmd120/cmd73 interactions are configured per NPC. The reply shapes
match the static 1.17 readers. Quest data is intentionally absent. Monster
selection is enabled; server-side combat remains UNKNOWN because cmd137's
nested skill effect and property update records lack a captured/fully decoded
response schema.

### 2026-09-26: NPC flag value correction and live dialogue proof

The three NPC records in `server/scene_population_9068.json` carried
`"flags": []`, which made `GameWorld.ReadNpcFlagFuction()` (`:14100`) return
`null` and `onPointerCheckNPC()` (`:2685`) return before
`sendGetNpcMissionListMessage()` (`:2691`) - no cmd120 could ever be sent. The
records now carry `"flags": [5]`:

- `NPC_FLAG_TALK = 5` (`CommonConstants:221`) and
  `NPC_FLAG_FUNCTION[5] = {7}` (`:616`) match the existing
  `interaction.function_id: 7` (`NPC_FUNCTION_TALK = 7`, `:314`).
- Flag 4 is explicitly blocked by `Util.testNpcFlag(gnpc.Flag, 4) &&
  gnpc.Flag.length == 1` (`:2688`), so `[4]` would not work.
- The two monster records keep `"flags": []`; they take the `canHit == 1`
  branch (`:2660`) and never send cmd120.

Wire proof: the three NPC cmd132 frames grew by exactly one byte
(77 -> 78, 74 -> 75, 75 -> 76) while the two monster frames did not
(71, 90), and the NPC flag block decodes to count `01`, value `05`.

Live result with the real Android 1.17 client: the double tap at device
`(990,630)` produced RX cmd120 with body `00 03 82 7b` = 230011, the client
rendered the function list, tapping `1.Talk` produced RX cmd73 with the same
body, and the rendered title/text matched `interaction.title` and
`interaction.text` byte for byte. Status `VERIFIED` for the flow; entity
identity remains `RECONSTRUCTED` / `UNKNOWN`. Detail:
`docs/research/NPC_INTERACTION_HANDOFF.md`.

Stopping criterion reached: definite shared-ID bridge found. No additional web
search was needed to establish it. Actual 彩云仙子 ID/object still requires original
packet/entity data; candidates 1014-1016 remain unassigned. No server edits/spawn.
