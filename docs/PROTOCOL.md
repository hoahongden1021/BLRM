# Protocol Notes

## Latest runtime checkpoint: cmd132 minimal GNPC, 2026-09-22

Run112928 confirms rendering and selection of the single minimal GNPC path
documented in ENTITIES.md (TEST OBJ1014). Status VERIFIED for that narrow path;
optional branches, updates/removals and GUser remain PARTIAL. Encoder now emits
action_type/action_id/direction independently of initial_state, as the client
reader requires. Probe header uses appearanceEffectGate=1 to skip arrival SE.
Static assertions checked minimal length52+UTF8-name-bytes, field offsets and
non-equal state/action/direction values; nondefault combinations were NOT sent.
Real-client capture includes cmd132 and selected HP/MP bars without the previous
division errors. No NPC dialogue command was captured in the tested interactions.

This file records only protocol conclusions that are supported by current evidence.

---

## Transport

### Auth

- TCP port: `29000`
- Current auth flow includes `cmd=42`.
- Auth server returns the local game server address/port.

Status: `VERIFIED`

**cmd42 / cmd-42 layout (2026-09-25, packet log `20260925_005625_p29000`):**

- Client RX `cmd=42` body contains userId string, account `admin123`, password
  hash fields, and `null` placeholder strings — matches
  `T4game.processLoginMessage` (b==1 success branch).
- Server TX `cmd=-42` (`0xFFD6`) `auth_body`:
  success byte 1 + phoneBound 0 + userId `10001` (i32) + serverCount 1 (i32)
  + per-server: id 1 (i32), name `Local Test`, addr `127.0.0.1:19000`,
  status 0 (i8), roleCount 0 (i8), empty string3.
- After TX, client `peer_eof` on 29000 (normal — auth socket closed after
  `processServerList` → `Authenticate.ReturnBack` → MainMenu view -5).

**Post-auth blocker (2026-09-25, UNKNOWN cause):**

- Client opens 19000 (`20260925_005839_p19000`) then **immediately peer_eof
  with zero frames** — never sent cmd277 FE-PREAUTH.
- UI shows NETWORK_ERROR `网络故障，请重新登录` / `网络错误，请重新登录`
  + `确定` + `读取中...N%` progress; loading climbs to 100% then **stays
  stuck** (dialog does not dismiss on tap).
- `GameScreen.tick` sets State 100 when `TcpNetwork.tcpState` not
  `TCP_OPEN`/`TCP_NORMAL_STATE`; `MainMenu` case -4 with `isHttp` shows the
  same text. Candidates: post-open failure in `TcpNetwork(StartGame,str)` /
  `open()`, `isHttp` path, server-list parse exception, or shared static
  `tcpState` errored when auth socket closed.
- Cause remains **UNKNOWN** — no cmd277 on the real Android client this
  session. Python integration-test 19000 flows (cmd277→20→6→7→32→10→132)
  are **not** the Android client.

### Game

- TCP port: `19000`

Status: `VERIFIED` (port + Python integration-test flow; Android client
never completed 19000 handshake this session — see post-auth blocker above)

---

## Command table

| Command | Direction | Current interpretation | Status |
|---:|---|---|---|
| 277 | C -> S | game login / pre-auth | VERIFIED |
| 20 | C -> S | role list request | VERIFIED |
| 18 | C -> S | create-role related request/list | VERIFIED |
| 16 | C -> S | create role | VERIFIED |
| 6 | C -> S | JOIN_GAME | VERIFIED |
| 7 | S -> C | JOIN_GAME response / player initialization | VERIFIED |
| 32 | S -> C | scene load / scene selection | VERIFIED |
| 10 | C -> S then S -> C | ENTER_SCENE_READY handshake | VERIFIED |
| 133 | C -> S | player movement update | PARTIAL |
| 132 | S -> C | visible entity/sprite spawn/update family | PARTIAL |
| 120 | C -> S then S -> C | NPC function list request (body = NPC runtime i32) / function-list reply | VERIFIED (real client 2026-09-26) |
| 73 | C -> S then S -> C | NPC talk request (body = NPC runtime i32) / talk reply | VERIFIED (real client 2026-09-26) |
| 136 | C -> S then S -> C | `SPRITE_SKILL_MESSAGE` attack/skill request; client also dispatches incoming 136 to `processSpriteSkillMessage` | PARTIAL (request layout static; no capture) |
| 137 | S -> C | `SPRITE_SKILLRESULT_MESSAGE` skill result / damage broadcast | PARTIAL (reader fully traced, no capture) |
| 9 | S -> C | NPC navigation-list add/remove, separately read from cmd132 | PARTIAL |
| 9 | C -> S | `sendGetNpcListInSceneMessage` body=`putShort(scene.intId)` — **no call sites found** in JADX or smali | PARTIAL (definition only) |
| 614 | C -> S | observed post-join client request; exact semantic not yet documented | UNKNOWN |

### cmd9 vs sprite visibility (2026-09-25)

Status: `PARTIAL` (static call-graph; no revived-client packet capture this session).

- Client **request** path: only `GameWorld.sendGetNpcListInSceneMessage()` (`:18694`)
  serializes cmd9 with `scene.intId`. Grep of all JADX sources and apktool smali
  found **zero** callers of that method and zero `SendData(9,` sites. The method
  exists but is unused in the inspected 1.17 tree.
- Client **response** path: `processNpcLeadListInSceneMessage` (`:8800`) fills
  `npcListInScene` only. Consumers: `refreshNpcList` → `readyNpcList` →
  `FoundNPC.bin` “NPC引导” list, pathing/transport via `NpcListId`. No
  `scene.addSprite` / GNPC creation on this path.
- Sprite visibility: cmd132 `processViewSpriteMessage` (`:12681`) creates GNPC
  and calls `scene.addSprite` (`GScene.java:625`), then `visibleReady=true`.
  Independent of cmd9.
- Conclusion: **missing map sprites are not caused by omitting cmd9.** cmd9 only
  feeds the NPC guide/list UI. Do not treat cmd9 as a prerequisite for rendering.

---

## `cmd=7`

Known-good current behavior includes:

- player initialization sufficient for entering the scene;
- movement speed must be `40` for normal speed.

Do not rewrite this packet without first re-reading the actual client parser.

Status: `VERIFIED` for current working fields; full schema not yet completely documented.

---

## `cmd=32`

Current working server payload selects scene:

- scene ID `9068` (`0x236C`)
- scene name used by current server/client flow: `轩辕奇境`

Status: `VERIFIED`

---

## `cmd=10`

Current working scene-ready response sets player position.

Known-good:

- X = `180`
- Y = `230`

Old `(100,100)` position was invalid for practical movement because it placed the player against blocked collision.

Status: `VERIFIED` for current response behavior.

---

## `cmd=133`

Client sends this repeatedly while the local player moves.

Observed properties:

- packet values change as the player moves;
- movement stops/changes are reflected in the trailing control/direction data;
- current logging is sufficient to observe real movement.

Full field naming/order is not yet considered complete.

Status: `PARTIAL`

## `cmd=132`

This command family is associated with visible sprite/entity creation/update.

Important warning:

A previous guessed encoder created malformed entities and triggered client rendering errors. That implementation is **REJECTED** as protocol evidence.

The 2026-09-22 section below records the located handler, ordered reads and
static resource constraints. Remaining work is to review the schema, implement
one explicit diagnostic entity, and compare a new client capture with the schema.

Status: `PARTIAL`

---

## 2026-09-22: cmd=132 client-derived schema

Status: `PARTIAL` (static DEX/smali analysis completed for the reads below;
no new client capture or runtime spawn test). It does not promote NPC spawning to VERIFIED.
Neither the v0.22 packets nor the current Python encoder were used as schema authority.

### Evidence and reproducibility

- Input: `server/truthan_resources_v1.17.apk`, SHA-256
  `e76d1c735a40f36c382d1123585bbe8584b1a65463504d691ef5cc454807dde8`.
- `classes.dex` SHA-256:
  `10dca0f0b99026774f48bcb2445bdf39a19af1b65e87e397ba1645fdd56f72d7`.
- JADX 1.5.6: `--no-res -d build/research/jadx <APK>`.
- Apktool 3.0.3: `d -r -o build/research/apktool <APK>`.
- Exact bytecode excerpts are retained in
  [entity_spawn_smali.txt](research/entity_spawn_smali.txt), generated by
  [extract_entity_evidence.py](research/extract_entity_evidence.py).
- Paths below are relative to `build/research/jadx/sources/com/t4game/`
  or `build/research/apktool/smali/com/t4game/`. Generated trees are ignored.
- `GameWorld.java:7299` dispatches 132 to `processViewSpriteMessage()`;
  `mmorpg/dreamgame/MessageCommands.smali:1184` defines `0x84`.
  `GameWorld.smali:40933` label `:pswitch_bb` invokes the handler.
- Main reader: `GameWorld.java:12681`, `GameWorld.smali:69610`.
  Helpers: Java 13234, 13249, 14100, 16629; smali 72344, 72428, 77267, 90475.
- JADX reported errors in unrelated `com.igexin` methods. The target readers were
  emitted and independently checked against smali, including branch labels.

### Primitive encoding

Follow-up source check (2026-09-22): the APK pulled read-only from
`emulator-5554` / package `com.t4game` is SHA-256 identical to the input APK
above. Installed versionName is `1.17.01.15120810`, versionCode `215`.
This ties the static readers to the installed binary; it is not a cmd132 runtime test.

`IoBuffer.java:44,77,88,94,121` and the corresponding smali getters establish:

| Notation | Reader | Wire representation |
|---|---|---|
| i8 | getByte | signed 8-bit |
| u8 | getUnsignedByte | unsigned 8-bit |
| i16 | getShort | signed 16-bit, big endian |
| i32 | getInt | signed 32-bit, big endian |
| str | getString | i16 UTF-8 byte length L, then L bytes if L > 0 |

For L <= 0, getString returns empty and consumes only the length. Use L >= 0,
at most 32767, when constructing a future probe. Strings have no terminator.
Signed byte counts are not unsigned counts: negative imageCount reaches array
allocation and is unsafe; use 0..127. Other count loops run only while index < count.

### Common header: one entity per handler call

Offsets are from the command BODY, excluding the transport frame and command ID.
There is no entity count or entity loop in this handler.

| Offset | Field | Type | Meaning / branch |
|---:|---|---|---|
| 0 | spriteId | i32 | runtime key; not objectDataId |
| 4 | spriteType | i8 | 2 = GNPC, 3 = GUser |
| 5 | exType | i8 | assigned only if lookup found an existing sprite |
| 6 | appearanceEffectGate | i8 | 0 invokes object 9000 / effect 69; nonzero skips |
| 7 | remove | i8 | 0 = add/update; any nonzero = removal |

Removal consumes no more body fields: type 3 calls removeUser; type 2 calls
removeNpc; then removeOutSprite(type,id). Add/update handles only 2 and 3.
Although getSpriteFromHash also maps type 6 to the NPC table, this handler has
no type-6 creation/body branch. Do not label type 6 a cmd132 mob type.
At exit it copies the local user's speed to SoundPlayer.UserSpeed; no wire read.

For a new sprite, pool type 2/3 supplies GNPC/GUser, assigns scene/id/intId,
adds it to the scene and marks visibleReady. The header exType is NOT assigned
again after allocation (smali confirms this). For an existing visible sprite
with actionType=2, canDeathRelive becomes true; otherwise visibleReady becomes true.

### Block C: readSpriteView(sprite, initialState)

Always consumed in this order, even when initialState == 2:

| Order | Field | Type |
|---:|---|---|
| C1 | canSelect | i8 |
| C2 | canHit | i8 |
| C3 | relationState | i8 |
| C4 | attr_baseHP | i32 |
| C5 | maxHp | i32 |
| C6 | attr_baseMP | i32 |
| C7 | maxMp | i32 |
| C8 | name | str |

If initialState != 2, setState(initialState) runs; 2 bypasses that setter.
nowMoveTick is reset. setMaxHp/setMaxMp clamp current HP/MP down to their maxima.

### Type 2: GNPC add/update body after the header

| Order | Field / block | Type | Read condition |
|---:|---|---|---|
| N1 | worldX | i16 | always |
| N2 | worldY | i16 | always |
| N3 | autoControlType | i8 | always |
| N4 | initialState | i8 | always; passed to C and V |
| N5 | block C above | variable | always |
| N6 | ignoredNpcByte | i8 | always, value discarded |
| N7 | flagCount | i8 | always, ReadNpcFlagFuction |
| N8 | flag[i] | i8 each | repeat flagCount times if > 0; otherwise null flags |
| N9 | isTrggerEvent | i8 | always; spelling preserved from client |
| N10 | triggerActionId | i8 | only isTrggerEvent == 1 |
| N11 | selfSEObjectId | i16 | only isTrggerEvent == 1 |
| N12 | selfSEId | i16 | N11 exists and selfSEObjectId != -1 |
| N13 | targetSEObjectId | i16 | only isTrggerEvent == 1 |
| N14 | targetSEId | i16 | N13 exists and targetSEObjectId != -1 |
| N15 | triggerWords | str | only isTrggerEvent == 1 |
| N16 | countryId | i8 | always |
| N17 | speed | u8 | always; setSpeed(value,true,false) |
| N18 | grade | u8 | always; stored as short |
| N19 | objectDataId | i16 | always; setObjectDataId |
| N20 | block V below | variable | always |

setPos(worldX,worldY,true) occurs before setObjectDataId. In this APK,
GMap.worldX2SceneX/worldY2SceneY return the input unchanged (`GMap.java:81,85`).
After block V, state == 2 OR attr_baseHP <= 0 makes GNPC invisibleReady=false.
Block V also explicitly hides it when initialState == 2.

### Block V: readSpriteView1(sprite, initialState)

| Order | Field | Type | Read condition / effect |
|---:|---|---|---|
| V1 | imageCount | i8 | always; allocates override image arrays |
| V2 | imageId[i] | i16 each | imageCount entries |
| V3 | actionType | i8 | always |
| V4 | actionId | i8 | always |
| V5 | direction | i8 | always |
| V6 | horseType | i8 | always |
| V7 | horseObjectDataId | i16 | only horseType >= 0 |
| V8 | buffCount | i8 | always |
| V9a | buff.num | i8 | repeat V9a-c buffCount times |
| V9b | buff.id | i16 | stored in an int, but wire width is 2 bytes |
| V9c | buff.iconId | i16 | same loop |
| V10 | ignoredViewByte | i8 | always, discarded |
| V11 | wuxingType | i8 | always; -1 maps to internal 5 |
| V12 | fabaoQuality | i8 | always |
| V13 | fabaoObjectDataId | i16 | only fabaoQuality >= 0 |

V3-5 are still READ when initialState==2, but their setters are skipped and
visibleReady becomes false. Otherwise setActType(V3), setAction(V4,V5).
`GSprite.setAction` writes V4 to actionId and V5 to dir, NOT sprite state.
Smali `GSprite.smali:7314` confirms these assignments.
horseType < 0 calls setHorse(marker,-1), clearing the current horse.
fabaoQuality < 0 does NOT call setFabao: on an update this does not clear an
existing fabao. Buff entries are inserted by ID without clearing the buff table.

### Type 3: GUser add/update body after the header

Each row is sequential; no GNPC autoControlType, flags or trigger extension exists.

| Order | Field / block | Type | Condition |
|---:|---|---|---|
| U1 | worldX | i16 | always |
| U2 | worldY | i16 | always |
| U3 | initialState | i8 | always |
| U4 | block C | variable | always |
| U5 | sex | i8 | always |
| U6 | job | i8 | always; setJob |
| U7 | playerRelation | i8 | always |
| U8 | gangNickName | str | always |
| U9 | countryId | i8 | always |
| U10 | speed | u8 | always; GUser.setSpeed(value,true) |
| U11 | grade | u8 | always |
| U12 | objectDataId | i16 | always; setPos precedes setter |
| U13 | outlineFlag | i8 | always |
| U14 | outfitGroupCount | i8 | always |
| U15a | outfitSlot | i8 | repeat U15a-e per group |
| U15b | outfitPresent | i8 | same loop |
| U15c | effectCount | i8 | only outfitPresent != 0 |
| U15d | effectValue0, effectValue1 | i16, i16 | repeat effectCount times |
| U15e | effectValue2 | i8 | same inner loop; semantic names not established |
| U16 | block V | variable | always |
| U17 | specialShow | str | always |
| U18 | specialShowColorFlog | i8 | always |
| U19 | specialShowType | i8 | always |
| U20 | specialShowIconID | i32 | only specialShowType == 1 OR == 2; otherwise internal -1 |
| U21 | hair image ID | i32 | always; setHair(value,null) |

readOutfitSpecialEffectDataList clears the existing slot list if user != null
and slot != -1, even when outfitPresent==0. If present!=0 it consumes its inner
list even for slot==-1; values are stored only for a usable slot. No guessed
semantic names are assigned to the three effect values here.

### Direct call audit and packet-consumption boundary

All direct non-library callees of the handler and its packet helpers were inspected.
Only IoBuffer getters and the four GameWorld helper readers above consume this
packet. The following calls apply values / access resources, not extra cmd132 fields:

| Callee | Relevant behavior and source |
|---|---|
| GScene.getSpriteFromHash | NPC/user table lookup; Java 1502 |
| GDataManager.getFromPool | existing pool object or GNPC/GUser constructor; Java 359 |
| GScene.addSprite / addToStore | table and linked-list insertion; Java 625 |
| GScene.removeUser/removeNpc/removeOutSprite | remove/release scene entries; Java 1900-1947 |
| GSprite.addSpecialEffect | get object resource, effect record, pooled GSEObject; Java 413 |
| GSprite.setState / setMaxHp / setMaxMp | state assignment and resource-bar clamping; Java 1500,1328,1337 |
| GNPC.setFlag | stores flags; chooses icon list from first flag; Java 181 |
| GSprite.setSpeed / GUser.setSpeed | computes fixed-point speeds; Java 1482 / GUser 705 |
| GSprite.setPos / setPos1 | coordinate conversion, position/grid/bounds/list order; Java 1403 |
| GSprite.setObjectDataId | resource type OBJECT; -1 skips; unchanged ID returns early; Java 1376 |
| GSprite.initImageDataList / setImageData / _setImageData | override arrays; -1 releases a slot; Java 829,1314,385 |
| GUser.setImageData override | optional job/sex/outfit image substitution; GUser 569 |
| GSprite.setActType / setAction | state guards then animation selection; Java 1100,1124 |
| GSprite.setHorse | resource loading/clearing, animation and bounds refresh; Java 1278 |
| Buf constructor / GSprite.addBuf | data container then hash insertion; Java 405 |
| GSprite.setFabao | release old object, optionally create/load GFabao; Java 1248 |
| GUser.setJob | default weapon effect lookup, maps job 4->0 and 5->2 for that lookup; GUser 602 |
| GSprite.setOutlineFlag | bit0 supportChangeImage, bit1 outlineType; Java 1398 |
| GUser.setSpecialShow | text/color/icon; getChengHaoIcon or getChengHaoIcon1 loads assets; GUser 691, GameWorld 14821 |
| GSprite.setHair | -1 clears, otherwise image resource lookup; Java 1268 |

String.valueOf/Object.equals, array allocation, and collection methods have no
packet reads. Resource loading and later rendering/update paths are separate
from this packet cursor; this is not a claim that all game/render code was audited.

### Skill / job / weapon related client commands (JADX constants, server side not matched)

| Constant | Value | Reader | Status |
|---:|---:|---|---|
| ROLE_SKILL_MESSAGE | 27 | `processRoleSkillMessage` → genius tree + `readRoleSkill` loop | VERIFIED (client read) |
| GENIUS_ADDPOINT_MESSAGE | 128 | `processMagicGeniusChangeMessage` | VERIFIED (client read) |
| ROLE_SKILL_DETAILS_MESSAGE | 129 | `processMagicGeniusDetailMessage` → `processSkillDetail` | VERIFIED (client read) |
| GET_GENIUS_TREE_MESSAGE | 287 | `processServive_GET_GENIUS_TREE_Message` / send puts short tree id | VERIFIED (client) |
| COMM_SKILL_DTEAIL_MESSAGE | 312 | `processCommSkillDetailMessage` (weapon byte list + MP/CD) | VERIFIED (client read) |
| SKILL_RESTRICT | 316 | `processLimitSkillMessage` = sprite special state only | VERIFIED (not a skill job table) |
| ROLE_SKILL_CHANGE_MESSAGE | 340 | UI/split helper usage | PARTIAL |

Skill cast gates on original client: `RoleQuickUse.testWuQiXianZhi` /
`testJobXianZhi` with lists filled from quick-slot packets — see
`docs/research/SKILL_CLASS_WEAPON_MAP.md`.

### Probe boundary and comparison with current encoder (no changes made)

- The static schema is sufficient to design a single, fresh GNPC asset probe.
  Client success is still UNKNOWN; original 彩云仙子 identity/coordinates are UNKNOWN.
- Minimal body (no flags/trigger/images/horse/buffs/fabao) has length **52 + N**,
  where N is UTF-8 name bytes. Offset 33 stores the name length; after name:
  ignored@35+N, flags@36+N, trigger@37+N, country@38+N, speed@39+N,
  grade@40+N, object@41+N, imageCount@43+N, actionType@44+N,
  actionId@45+N, direction@46+N, horse@47+N, buffs@48+N,
  ignored@49+N, wuxing@50+N, fabao@51+N.
- Future probe can omit extensions using flagCount=0, trigger=0, imageCount=0,
  horse=-1, buffCount=0, fabao=-1. These are parser-supported omissions, not
  assertions about original server values. A nonzero appearanceEffectGate avoids
  the separate arrival effect. Use fresh runtime identity, with synthetic values
  explicitly labeled as probe data; do not guess original server IDs/coordinates.
- Selectable rendering divides by both maxHp and maxMp (`GSprite.java:676`);
  both must be positive for a conservative probe. HP must remain positive;
  initialState must not hide the sprite. Animation IDs/directions must be checked
  against the selected object's action table; arbitrary zeros are not evidence.
- Current v0.26 encoder emits `[action_type, sprite_state, action]` for V3-5.
  Actual interpretation is `[actionType, actionId, direction]`. Its defaults happen
  to emit three zeros, but nondefault use conflates distinct fields. Do not promote
  its parameter names to protocol facts. Trigger extension in that encoder only
  emits the sentinel (-1) subcase; a general encoder must include conditional SE IDs.
- No server edits, packet transmission or runtime test occurred. Stop here for
  schema review before implementing a probe. A later implementation must use
  `01_test_capture.bat` and its new debug ZIP before any VERIFIED claim.

## 2026-09-22 follow-up: cmd9 NPC navigation list

Status: `PARTIAL`, static reader evidence only. `GameWorld.java:7014` dispatches
command 9 to `processNpcLeadListInSceneMessage` (Java 8800, smali 45446;
exact method now included in research/entity_spawn_smali.txt).

| Read order | Type | Condition / interpretation |
|---|---|---|
| operation | i8 | always |
| count | i8 | only operation 0 or 1 |
| NpcListId | i32 | operation 0: repeat this and following row fields count times |
| NpcListNameInMap | str | operation 0, each record |
| NpcListXInMap | i16 | operation 0, each record |
| NpcListYInMap | i16 | operation 0, each record |
| flagCount, flags | i8, then flagCount*i8 if positive | operation 0; ReadNpcFlagFuction |
| removed NpcListId | i32 | operation 1: count IDs, remove first matching list record |

Other operation values return after reading only operation. Nonpositive count
does not enter a loop. Operation 0 appends entries; it does not clear the list
or allocate GNPC sprites. The inspected reader contains no objectDataId/image
field. Thus an original cmd9 capture could provide name/ID/position evidence,
but would still require correlation with cmd132 for appearance. No such
original capture has been recovered here; no cmd9 response was implemented.

## 2026-09-22: proven client ID linkage, cmd9 <-> cmd132

Status: `PARTIAL` for runtime protocol validation. The shared-ID relationship
itself is established directly by client code AND smali, not inferred from names
or equal field widths. No real server ID for 彩云仙子 has been recovered.

Let **I** denote the same symbolic runtime ID (not a proposed numeric value).

```text
cmd9 operation=0
  processNpcLeadListInSceneMessage
    new GameWorld.NpcList
    NpcListId = readBuffer.getInt()   // I
    npcListInScene.addElement(record)

cmd132 type=2, remove=0
  processViewSpriteMessage
    I = readBuffer.getInt()
    scene.getSpriteFromHash(I,2) -> scene.npcs.get(String.valueOf(I))
    if absent: getFromPool(2) -> GNPC
      gnpc.id = String.valueOf(I); gnpc.intId = I
      scene.addSprite(gnpc) -> scene.npcs.put(gnpc.id,gnpc)
    else: update that existing GNPC

EXPLICIT BRIDGE: GameWorld.setNPCFunctionFlag(I,flags)
  scene.npcs.get(String.valueOf(I)) -> GNPC.setFlag(flags)
  if absent: scene.outerNpcs.get(String.valueOf(I)) -> GOuterSprite.setFlag(flags)
  scan npcListInScene for record.NpcListId == I -> update that record's flags
```

Bridge evidence: `GameWorld.java:13751`; `GameWorld.smali:75708`.
Smali uses **p1** both in `String.valueOf(I)` before Hashtable.get and in
`if-ne v3,p1` after reading `GameWorld$NpcList.NpcListId`. There is no remapping,
truncation, added offset or separate ID translation in that bridge.
These exact methods and GScene lookup/insertion are retained in
[entity_spawn_smali.txt](research/entity_spawn_smali.txt).

`cmd119 -> processChangeNpcFlag` (`GameWorld.java:7266,3866`) provides a direct
caller: i8 count, then per record i32 I and ReadNpcFlagFuction's i8 count/flags.
The same function also has quest-dialogue and quest-update callers. This proves
that the client treats the IDs as the same NPC identity across representations.
It does not prove that every cmd9 record is currently visible or has received
cmd132, or that every visible GNPC has a navigation-list entry. The two records
are distinct objects with independent packet lifetimes; names/coordinates are
not copied between them by this bridge. Cmd9 removal does not remove the GNPC;
cmd132 removal does not remove the navigation entry.

### Complete cmd9 state effects and flag branches

The ordered wire reads are in the preceding cmd9 table. All bytes there are
signed except bytes inside UTF-8 strings; i16/i32 are big endian. No implicit
GNPC creation, image/object read, or appearance lookup occurs in this handler.

- operation==0: i8 count > 0 creates `GameWorld$NpcList` records (plain metadata
  class, not a GSprite subclass). Initial NpcListFlag=-1 and function label="".
  Appends without clearing or deduplicating the Vector.
- flagCount<=0: ReadNpcFlagFuction returns null; no flag payload bytes follow.
  Positive count returns a byte array. For each flag f: 5<f<40 or f>40 prepends
  `[CommonConstants.NPC_FLAG_NAMES[f]]` to the label; f==40 sets list flag=5;
  other values have no effect in that loop. After the loop, if first flag<=2,
  it replaces NpcListFlag. No lower bound is tested there. Array indices are
  trusted by the client; arbitrary flag values are not safe probe defaults.
- operation==1: i8 count, then i32 IDs; removes the first matching metadata
  record per ID. Nonpositive count does nothing.
- Other operations: return without reading count. Byte loop counters also
  mean oversized accumulated lists are not safe merely because each count fits.
- `setNPCFunctionFlag` is not identical to initial cmd9 flag formatting: for
  nonnull flags its label assignment overwrites rather than prepends; it resets
  NpcListFlag=-1 AFTER its loop (overwriting an earlier f==40 assignment), then
  applies firstFlag<=2. Null flags clear both list flag and label.

### Remaining ID uses

`refreshNpcList` (`GameWorld.java:17071`, smali 93178) copies each metadata
record into parallel UI arrays `NpcListId[]`, `NpcListNameInMap[]`,
`NpcListXYInMap[][]`, flags and labels. `GameScreen.readyNpcList:40126`
displays those values in FoundNPC.bin's UI layout. Selection paths (e.g.
GameScreen.java:21306,30383) pass `NpcListId[focus]` unchanged into
`sendNpcTransportMessage(false,I,sceneId,...)` (GameWorld.java:19588), which
serializes cmd8 with i8 operation (2 if first boolean true, otherwise 1 if
last boolean true, else 5), i16 sceneId, i32 I. This is navigation identity,
not the resource ID. No attempt was made to send these commands.

### Required evidence table

| cmd | entity ID | name | x/y | entity class | appearance/objectData source | evidence | status |
|---|---|---|---|---|---|---|---|
| 9 op=0 | i32 -> NpcList.NpcListId = I | packet str -> NpcListNameInMap | packet i16 pair -> NpcListXInMap/YInMap | GameWorld$NpcList in npcListInScene Vector | none in this packet/class | GameWorld.java:8800; smali:45446 | PARTIAL (static schema; ID bridge established) |
| 132 type=2 | i32 -> GNPC.intId=I, id=String.valueOf(I) | block C str -> GSprite.name | packet i16 pair -> setPos(...,true) | GNPC extends GSprite, stored in scene.npcs | packet i16 objectDataId; block V image overrides/action; GObjectData resources | GameWorld.java:12681; smali:69610; GScene.java:625,1502 | PARTIAL (static schema; ID bridge established) |
| 119 | i32 I passed unchanged to bridge | unchanged | unchanged | updates both GNPC/GOuterSprite and matching NpcList | unchanged | GameWorld.java:3866,13751; smali:75708 | PARTIAL (static bridge proof, no runtime test) |
| ForceGuide (no cmd) | no fixed ID; inspects existing sprites | exact 彩云仙子 comparison | proximity to local user | iterates GSprite values in scene.npcs; returns boolean | matched sprite already holds cmd132 appearance; guide does not assign it | ForceGuide.java:169; smali:1312 | PARTIAL (numeric appearance remains UNKNOWN) |

### Resource-type conflict discovered while tracing appearance

GDataManager.<clinit> sets DATATYPE_OBJECT=1 (smali register v5=0x1),
DATATYPE_NAMES[1]="obj"; image=0, scene=2, pgg=3, wmp=4. Current server source
comments/mapping claim object datatype 5. That comment is not supported by the
inspected client initializer. Do not confuse pool type 8 (GObjectData allocation)
with resource datatype 1 or runtime sprite type 2. No server change was made;
this discrepancy needs a separate cmd11 wire-path/capture review before a fix.

## 2026-09-22: cmd11 datatype conflict resolved in source

Status: PARTIAL for Android runtime validation. Supersedes the unresolved
datatype note above; numeric OBJECT datatype is 1, not 5.

- GDataManager.java:60 / GDataManager.smali <clinit>: DATATYPE_OBJECT=1 and
  DATATYPE_NAMES[1]="obj"; the resource table has five entries, indices 0..4.
- DataIndexInfo.java:50 / smali:138: getDataType returns flag & 15.
- GameWorld.java:20274 / smali:108346: sendUpdateResMessage writes count byte,
  then getDataType byte and signed short resource ID for each entry; sends cmd11.
  There is no conversion to a separate wire datatype.
- GameWorld.java:12289 / smali:66762: response reads status byte; nonzero status
  reads datatype byte, ID short, size/offset int, chunk-length short and bytes.
  It looks up the pending key datatype_ID and passes the same datatype to
  getBufferedObjectData. Do not send unsolicited resources without pending keys.
- Exact smali methods: [resource_update_smali.txt](research/resource_update_smali.txt).

Server mapping and get_obj_image_refs caller corrected to 1. Canonical run
20260922_110307 includes SYNTHETIC_CMD11_TEST.json: diagnostic request body
01 01 03 f6 (one OBJECT 1014) received bytes matching APK data/obj/1014.obj.
This request came from Python, not Android; no real-client loading success or
NPC appearance/identity is established by it. No new spawn was sent.

Additional static limitation: receiver narrows total size to signed short
DataIndexInfo.dataSize before comparing completion. The old server comment
claiming 28 KB chunks make every APK resource safe is not established for
total sizes above 32767. This pass changes only datatype routing; large-resource
transfer behavior remains PARTIAL and needs a separate evidence-backed test.

## 2026-09-25: reconstructed scene population and NPC interaction

Scene 9068 population is loaded from `server/scene_population_9068.json` only
when `TRUTHAN_DATA_SPAWN=1`; the default-off path emits no population. The server
checks each configured coordinate against `server/scene_walkability_9068.json`
and sends cmd132 records after replying to the client's cmd10 scene-ready
request. This stage is a source/code and real-socket integration-test result;
client visibility and interaction still require visual runtime evidence.

Client source evidence (`GameWorld.java`):

- `sendGetNpcMissionListMessage(int)` writes one NPC runtime i32 and sends cmd120
  (`:18714`); `sendNpcFunctionTalkMessage()` writes the selected NPC runtime i32
  and sends cmd73 (`:19519`). Each request body is therefore four bytes.
- `processNpcFunctionListMessage()` (`:8514`) reads a greeting string, four
  quest-group signed-byte counts with group-specific records, then a signed-byte
  function count and records `(flagId i8, function i16, label string)`.
- `processNpcFunctionTalkMessage()` (`:8676`) reads status i8; nonzero is error.
  Success reads count i8 followed by title/text string pairs.
- Server cmd120/cmd73 replies currently implement only empty quest groups and a
  single data-configured talk function/dialogue. **No quest accept/deliver rows
  are implemented.** The client has not yet confirmed these configured replies.

### 2026-09-26: live cmd120 / cmd73 verification

Status: `VERIFIED` for the request and reply path with NPC `230011`.
The run kept one LocalServer v0.26 process (PID 12280) alive across spawn,
movement, selection and dialogue; client `com.t4game` 1.17.01.15120810 on
`emulator-5554`. Log:
`server/truthan_packet_logs/20260926_011006_p19000_127.0.0.1_52422.log`.

Wire facts established in this run:

- Frame envelope (both directions): `24 25`, u16-BE length `= total - 2`,
  6-byte prefix, u16-BE command, then body. Client request frames are 16 bytes
  total, so the cmd120/cmd73 body is exactly the 4-byte NPC runtime i32.
- Request body captured for both commands: `00 03 82 7b` = **230011**.
- cmd120 reply, 103 bytes total: u16-BE greeting string (76 bytes), four zero
  quest-group count bytes, signed-byte function count `01`, then
  `flagId = 00`, `flag = 0007` (i16, `NPC_FUNCTION_TALK = 7`), u16-BE label
  length `0004`, `"Talk"`.
- cmd73 reply, 86 bytes total: status `00`, count `01`, u16-BE
  `"Starter area"`, u16-BE `"This local guide has no recovered original quest
  records."`. Both strings match `interaction.title` / `interaction.text` of
  NPC `230011` in `server/scene_population_9068.json` byte for byte, and both
  were rendered by the client.

Blocker found and fixed in this run: `"flags": []` on the population records
made `ReadNpcFlagFuction()` (`GameWorld:14100`) return `null`, and
`onPointerCheckNPC()` (`:2685`) then returned before
`sendGetNpcMissionListMessage()` (`:2691`). The three NPC records now carry
`"flags": [5]` (`NPC_FLAG_TALK = 5`, `CommonConstants:221`, which maps to
`NPC_FLAG_FUNCTION[5] = {7}`, matching `interaction.function_id: 7`). The two
monster records keep `"flags": []` because they take the `canHit == 1` branch
(`:2660`). Wire confirmation: the three NPC cmd132 frames grew by exactly one
byte (77 -> 78, 74 -> 75, 75 -> 76) while the two monster frames did not
(71, 90).

Selection geometry used to place the tap (measured from live screenshots):
app content box device x `393..2758`, y `0..1271`; `CANVAS_W = 789`,
`CANVAS_H = 424`, scale `3.0`; `win_x = 0` near spawn, `win_y = mapY - 212`.
`onPointerSelectNPC()` (`:15412`) accepts logical x in `[u-21, u+27]` and
y in `[v-42, v+10]`. From player `(192,226)` the box of NPC 230011 at
`(190,216)` is device x `900..1044`, y `480..636`; the double tap at
`(990,630)` selected it. Two earlier taps independently confirmed the
tap -> walk transform `(tile*16, tile*16 + win_y)`.

Full detail, screenshots and status split: `docs/research/NPC_INTERACTION_HANDOFF.md`.

### cmd136 request (SPRITE_SKILL_MESSAGE)

`sendAttackMessage(int, int, byte)` `GameWorld.java:13429` writes, in order:

| # | Field | Type |
|---:|---|---|
| 1 | target id | i32 |
| 2 | target type | i8 |
| 3 | target mapX | i16 |
| 4 | target mapY | i16 |
| 5 | player actionType | i8 |
| 6 | player actionId | i8 |
| 7 | player dir | i8 |
| 8 | skill id | i16 (`QUICK_SKILL_ID`, branch-dependent) |
| 9 | player/send mapX | i16 |
| 10 | player/send mapY | i16 |
| 11 | speed | i8 (`-1` when `GDataManager.TimeState >= 8`) |

Total **19 bytes**. The previous note in this file said 18 bytes; that count
omitted one field. `MessageCommands.SPRITE_SKILL_MESSAGE = 136`,
`SPRITE_SKILLRESULT_MESSAGE = 137`, `SPRITE_SKILL_LEAD_MESSAGE = 143`
(`mmorpg/dreamgame/MessageCommands.java:589-591`). The client also dispatches
an *incoming* 136 to `processSpriteSkillMessage()` (`case 136`,
`GameWorld.java:7308`), so 136 is bidirectional.

**LIVE-VERIFIED 2026-09-26** (switch `TRUTHAN_COMBAT=1`): real-client frames
captured in `server/truthan_packet_logs/20260926_191043_*.log` and
`20260926_201236_*.log`. The client's auto-attack chain sent RX `cmd=136`
(19-byte body) at ~1 s cadence and every frame was answered with TX `cmd=137`
(66-byte body); hp drain `60→45→30→15→0`, death, respawn TX `cmd=132` at
exactly +5 s (`TRUTHAN_COMBAT_RESPAWN_MS`), then the cycle repeated. Status:
**VERIFIED** (field table confirmed against real frames; acceptance rules and
RECONSTRUCTED tunables are documented in `docs/RE_FINDINGS.md`).

### cmd137 reader (SPRITE_SKILLRESULT_MESSAGE)

Dispatch: `case 137: processSpriteSkillResultMessage();` (`GameWorld.java:7311`).
All offsets below are from the command body and were read directly from
`processSpriteSkillResultMessage` (`:11411`), `readSkillActionSEData`
(`:13177`) and `readSpriteUpdateProperty` (`:13187`). Status: **VERIFIED
2026-09-26** — the static reader was validated byte for byte against live
66-byte cmd137 frames (`hp` trace 45/30/15/0, `hit_result = 5`,
`src_hp = 100`, `damage = 15`).

| # | Field | Type | Notes |
|---:|---|---|---|
| 1 | flags | u8 | bit0 = `z3`, bit1 = `z4` |
| 2 | source id | i32 | runtime id |
| 3 | source type | i8 | 3 = GUser |
| 4 | target id | i32 | |
| 5 | target type | i8 | |
| 6 | unused | i16 | read and discarded (`:11435`) |
| 7 | moveMode | i8 | `0` or `1` gates the next field |
| 8 | dest x, dest y | 2 x i16 | present only when moveMode is 0 or 1 |
| 9 | source hp | i32 | |
| 10 | source mp | i32 | |
| 11 | unused | i8 | read and discarded (`:11444`) |
| 12 | dir | i8 | passed to `setAction` |
| 13 | skill effect records | 3 x record A | see below |
| 14 | property count | u8 | `b6`, loop `while i < b6` |
| 15 | property records | count x record B | see below |

Record A (`readSkillActionSEData`, one per slot `0..2`):

| Field | Type | Notes |
|---|---|---|
| skillActionId | i8 | |
| objectDataId | i16 | |
| specialEffectDataId | i16 | **only when objectDataId != -1** |

Record B (fixed prefix read in the loop at `:11515`-`:11522`, then
`readSpriteUpdateProperty` at `:11533`):

| Field | Type | Notes |
|---|---|---|
| spriteId | i32 | runtime id |
| spriteType | i8 | selects the 3-extra-byte branch |
| hitResult | i8 | 0 miss, 1 dodge, 2 block, 3 zhaojia, 4 baoji, 6 xishou, 7 huomian, 8 dikang, 9 mianyi; other values drive the heal/hurt branches |
| value1 | i32 | damage / heal display value |
| value2 | i32 | second display value |
| hp | i32 | current hp written to `attr_baseHP` (`:11586`) |
| mp | i32 | current mp written to `attr_baseMP` (`:11587`) |
| maxHp | i32 | `readSpriteUpdateProperty:13191` |
| maxMp | i32 | `:13192` |
| speed | u8 | `:13193` |
| wuxingType | i8 | `:13194`, `-1` is rewritten to 5 |
| extra 1..3 | 3 x i8 | **only when spriteType == 3** (`:13195`-`:13199`) |

A record is read even when `getSpriteFromHash` returns `null`, so a reply must
still serialize the full record for every listed sprite. This is the exact
blocker to a playable server-side attack response: no cmd137 frame has ever
been captured, so the field order above is a static client-read contract only.
No cmd137 response or damage value is fabricated.


The socket receive loop now uses a 60-second poll timeout and continues after
each `socket.timeout`; it does not close an otherwise-live idle map connection
at 300 seconds. Runtime soak evidence for this change is not yet available.

---
