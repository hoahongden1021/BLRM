# Reverse-Engineering Findings

This is the chronological technical notebook. Only stable conclusions should be copied into `PROJECT_STATE.md`.

---

## Real-client auth + post-auth bootstrap (2026-09-25)

Status: auth `VERIFIED`; post-auth network-error `UNKNOWN` (task 5 PARTIAL).

- Fresh launch with `TRUTHAN_DATA_SPAWN=1` + `TRUTHAN_SCENE=9068` (ROLE
  country=1 defaults to 8068 — override required): server pid, all ports,
  adb reverse rules OK. `runtime_state` scene id **9068**.
- OCR screens VERIFIED: START_MENU (`诛神`/`仙境悟道`/`开始游戏`/`G快速进入`/
  `修复游戏`/`退出游戏`, version `0.17.00, 05020800`) → tap `(2420,578)` or
  `(2445,576)` → ACCOUNT_LOGIN (`账号:`/`admin123` prefilled/`密码:`/
  `登录游戏`/`注册账号`/`个人中心`/`修改密码`/`zs000.lvh.me`/`选择`/`返回`)
  → tap `登录游戏` `(1410,546)`.
- Taps are **focus-then-activate**: single tap does nothing; double-tap
  ~700ms apart activates; UI lag 3–5s. Landscape screenshot 2992×1344;
  `input tap` uses landscape coords = OCR box coords directly.
- `truthan_bootstrap_step.py` always does its own fresh launch + requires
  exact prior state — fails with `before state mismatch` if screen not yet
  classified. Do **not** use for multi-step; step manually with
  `truthan_gui.py tap`.
- Auth VERIFIED (`20260925_005625_p29000_..._60090.log`): client RX cmd42
  `admin123`; server TX cmd=-42 (`0xFFD6`) auth_body = success 1 + phoneBound
  0 + userId 10001 + serverCount 1 + (id 1, `Local Test`,
  `127.0.0.1:19000`, status 0, roleCount 0, `""`). Layout matches
  `T4game.processLoginMessage` → `processServerList` →
  `Authenticate.ReturnBack` → MainMenu view -5 (server list); select →
  `StartGame.relink(addr)` → `TcpNetwork` `connection="socket://"+addr`.
  `MainMenu` blocks select if `serverList[i][5] != ""`.
- Post-auth blocker: client closes 29000 (peer_eof), opens 19000
  (`20260925_005839`) then **immediately peer_eof with zero frames** — never
  sent cmd277. UI stuck on NETWORK_ERROR `网络故障`/`网络错误，请重新登录` +
  `确定` + `读取中...N%` (climbs to 100%, dialog does not dismiss).
  `GameScreen.tick` State 100 when `tcpState` not OPEN/NORMAL; `MainMenu`
  case -4 with `isHttp` shows same text. Cause **UNKNOWN** (candidates:
  `TcpNetwork.open` failure, `isHttp` path, server-list parse, shared static
  `tcpState` on auth close).
- The working 19000 flows in logs (`004640`, `005222`) are **Python
  integration-test clients**, not the Android client — they confirm both
  cmd132 fixtures encode correctly.
- `game_connected=false` throughout; **no visual PASS** — Android client
  never reached server list, role list, or IN_GAME. Entity rendering on the
  Android client this session is **unverified**.

---

## Spawn chain map→spawn→objectDataId→OBJ/IMG (2026-09-25)

Proposal: `docs/research/MAP_SPAWN_OBJECT_CHAIN_PROPOSAL.md`.

- Exact Original 1.17 readers traced: cmd132 `processViewSpriteMessage`
  (`GameWorld.java:12681`, dispatch `:7299`), GNPC body N1–N20 + block C/V;
  cmd9 `processNpcLeadListInSceneMessage` (`:8800`, mode0: i32 id, str name,
  i16 X/Y, flags); cmd323 collection view (`:4186`).
- Appearance on the Original wire is **objectDataId i16** (+ optional
  image_ids overrides). `setObjectDataId` → `/data/obj/<id>.obj` → embedded
  IMG slots. ModelID (`n420*`/`m510*`) is PC/revived conf only — not on
  Original cmd132 (`REJECTED` as required field).
- PC jar `main.b.a.g.g` readers take UTF ModelID/names first — **different
  framing**; do not copy into Original encoder (`CANDIDATE` only).
- Bounded search: TTpc conf + revived APK conf/json/txt (42 entries) —
  **0 hits** for spawn/ModelID/objectDataId needles. No client spawn tables.
- BLRM `npc_view_body` field order **matches** DEX (no layout bug). Gaps:
  original objectDataId for tutorial NPCs `UNKNOWN`; original spawn XY
  `UNKNOWN`; **cmd=9 never sent** by server. First missing data fields are
  objectDataId and XY; first missing companion packet is cmd9 for the
  **guide/list UI only** (see below) — not for sprite rendering.
- VERIFIED example only: TEST OBJ1014, scene 9068, (203,253), run112928 —
  not an original tutorial spawn.

### cmd9 callers / sprite visibility (2026-09-25)

- `sendGetNpcListInSceneMessage()` (`GameWorld.java:18694`) is the only cmd9
  C→S encoder (`SendData(9,` + `putShort(scene.intId)`). **0 call sites** in
  JADX sources and apktool smali outside the method definition.
- cmd9 S→C fills `npcListInScene` only; UI via `readyNpcList` / `FoundNPC.bin`
  (“NPC引导”), pathing/transport via `NpcListId`. No `scene.addSprite`.
- Sprite visibility is cmd132 → `processViewSpriteMessage` → `scene.addSprite`.
  Missing sprites are **not** explained by omitting cmd9.
- Status: `PARTIAL` static call-graph; no revived-client cmd9/cmd132 sequence
  captured this session (`REVIVED_REFERENCE` not claimed).

### Data-driven spawn switch (2026-09-25)

- New server gate `TRUTHAN_DATA_SPAWN` (default **OFF**): `data_spawn_entities()`
  returns `[]` when off; when on, APK-validates `DATA_SPAWN_FIXTURES` starting
  with TEST OBJ1014 (scene 9068 only). Login/map/movement paths unchanged.
- Tests: `tests/test_v026_baseline.py` + `tests/test_map_entry_integration.py` —
  cmd132 encode decode checks + switch off/on/wrong-scene + real socket map-entry
  flow (cmd277→cmd7→cmd32→cmd10→cmd132). Full suite: **23 OK**.
- Integration: JOIN reply is **cmd7** (not cmd6); server child must use
  `PYTHONIOENCODING=utf-8` (Chinese scene name in `print(label)` crashed under
  cp1252 before this fix; `send()` now catches `UnicodeEncodeError`).
- Passive launch only (`py tools\truthan_gui.py launch` + screencap, no taps):
  server/reverse came up; client TCP connected then `peer_eof` without login/
  map-entry; **no cmd132 captured**; `game_connected=false`. Not a client PASS.
- peer_eof evidence (2026-09-25 packet logs): `20260925_002812_p*` all ports
  CONNECTED→`peer_eof` with zero RX frames (client opens TCP then closes without
  protocol bytes); `20260925_002855_p29000` stayed open → `server_idle_300s`.
  Old screenshots `datas_spawn_passive*.png` are UTF-16-mangled (unreadable).

### Full decode of APK `data/scn/9068.scn` (2026-09-25)

- Layout VERIFIED against `GScene.init` / `initFromJar` + `GZIP.inflate`.
- `map_gw=45`, `map_gh=60` (2700 cells), 9 tile image groups, 27 tile anims,
  17 GDoodadObject (static decorations only), 1 transfer area, block counts
  `{0:513,...,13:2100}`. Residual 299 B = `GSceneBackLayer` (not yet parsed).
- Walkability via `canCross`+`HITMASK`: spawn (180,230), fixture (203,253) and
  monster (196,238) all block 0 → walkable. **No NPC/mob spawn table in `.scn`**
  — original spawn XY stays `UNKNOWN`.
- Second fixture added: TEST OBJ1155 sprite 220011, `can_hit=1`, RECONSTRUCTED
  label; assets IMG1207 VERIFIED in APK. Suite **23 OK**.

---

## PC gameplay conf tables (2026-09-24)

Research catalog: `docs/research/PC_SKILLS_EQUIPMENT_QUESTS.md`.

- `zsSkills_language.dat` → loader `main.b.a.a.A` (uppercase): 384 rows, 16 cols,
  id 17101–17584; names/descriptions only; damage % only inside description prose.
- 15 equipment/item language tables → `main.b.a.a.p`: combined 4603 keys, 7-col
  name+desc only (no ATK/level columns).
- `Tasks_language.dat` → `main.b.a.a.D`: file **missing** in jar, TTpc, and revived
  APK; original 1.17 has zero conf tables. Quest runtime on original client is
  packets → `RoleQuest` (`getFunctioRoleQuest`).
- All sampled PC conf SHA-256 values equal revived APK `assets/conf/*`.

Loader case trap: uppercase `A`/`D` are skills/tasks; lowercase `a`/`d` are
achievement/`client_config.properties`.

---

## Skill families, classes, weapon limits (2026-09-24)

Catalog: `docs/research/SKILL_CLASS_WEAPON_MAP.md`,
CSV `docs/research/skill_family_catalog.csv` (DESCRIPTION_ONLY).

- Families `id/100`: 171=80, 172=22, 173=97, 174=100, 175=85 (384 total);
  adjacent same-name IDs = rank-step groups (usually 6, sometimes 2).
- **No static family→class table** in PC conf or original DEX → class column
  UNKNOWN. Do not infer class from 171xx prefixes or skill names.
- Original `OCCUPATION_NAMES` = 力士,刺客,唤雷师,天师,武神,圣仙;
  create-role uses first four (`RoleLogin` `length-2`); 4/5 via NewJob.
- `WEAPONTYPE_NAMES` = 刀,剑,斧,法剑,羽扇,法杖.
- Skill weapon/job restrictions and MP/CD/level are **packet-driven**
  (`RoleQuickUse.setWuQiXianZhi`/`setJobXianZhi`, `processSkillDetail`,
  `readRoleSkill`); `needWeaponType_*` empty in conf (not “no rules”).
- PC SkillTree logs `rank`/`lv`/`needSkillId` from `main.b.a.f.M` network fields.
- `GSkillData` appears unused (no external smali refs this session).

---

## Entity ↔ image catalog (2026-09-24)

Catalog: `docs/research/ENTITY_IMAGE_CATALOG.md` + `entity_image_catalog.html`
+ `catalog_*.csv` under `docs/research/`.

- **VERIFIED** object appearance chain: `objectDataId` → `res/data/obj/{id}.obj`
  image-slot shorts → `res/data/img/{imgId}.img`. All 377 objs parse; 295 have
  ≥1 image slot; 303/2027 images referenced by objs; 1724 unmatched (not identity).
- **VERIFIED** goods icon rule: packet `iconId` + goods `type` → pgg group
  `GOOGS_PNG[type]` (`{0,1,2,2,2,5,6,7}`), index `iconId - type*1000`
  (`GDataManager.MAX_M=1000`; `GPNGGroupData.getIconIdList`).
- **VERIFIED** skill icon rule: packet `RoleSkill.iconId` → pgg group **5**
  (`RoleSkillList.setIconList`; PC logs `skill id / png id` from `M.s`).
- **UNKNOWN** static joins: skill id→iconId, item id→iconId, ModelID→obj,
  `prop/{id}.png` entity key. Name tables (NPC 512 / monster 624 / mount 108 /
  weapon 720 / fabao 30 / skill 384) have **no** icon/object columns.
- CANDIDATE: `anuId≥9000` skill effect from `apk_skill_effects.json` (not Original DEX).
No server code changed. No identity assigned from visual resemblance.

---

## Current milestone

The project has crossed the minimum world-entry milestone:

- login works;
- role creation/listing works;
- join game works;
- correct starter scene loads;
- player appears at a valid walkable position;
- movement works;
- movement speed is normal.

This means the next blocking layer is no longer basic world entry. It is the server-driven entity/gameplay layer.

---

## Movement investigation

### Bad state

At spawn `(100,100)`:

- player body animated;
- joystick/input was active;
- client still emitted movement packets;
- character did not traverse the scene.

Conclusion:

The position was blocked/invalid for normal movement.

### Fix

Spawn changed to:

- `(180,230)`

Result:

- movement works.

Status: `VERIFIED`

---

## Speed investigation

A low server value (`5`) produced obviously slow movement.

Client/default evidence indicated speed `40`.

After changing server speed to `40`:

- user confirmed movement speed is normal.

Status: `VERIFIED`

---

## Entity spawn investigation

An early `cmd=132` probe was built from incomplete assumptions.

Result:

- strange malformed entities appeared;
- client rendering produced divide-by-zero behavior in sprite rendering;
- this confirmed that required entity state/animation/resource fields were incomplete or invalid.

Conclusion:

Do not continue by filling missing fields with arbitrary zeros/default guesses.

Next attempt must be reconstructed from the exact client reader and real asset metadata.

---

## Current research target

Identify the real starter NPC and build one correct entity spawn end-to-end.

Preferred evidence chain:

`client handler -> packet schema -> .obj/.img identity -> single spawn -> click/talk capture`

Only after that can the project proceed to mobs/combat.

## 2026-09-22: cmd132 static research checkpoint

Status: `PARTIAL`. Baseline login/starter map/spawn/movement remains as confirmed
by the user. Research source revision: `37005b1`; server/gameplay unchanged.
The bundled resource APK contains classes.dex. Downloaded official JADX 1.5.6
and Apktool 3.0.3 into `%LOCALAPPDATA%/TruThan_RE_tools`; used Android Studio's

---

## 2026-09-22: Test Execution Failure

- **Test Run**: `02_test_npc_probe.bat`
- **Issue**: Server failed to start with `ERROR: Input redirection is not supported, exiting the process immediately.`
- **Impact**: No new packet data or client behavior was captured in this run.
- **Action**: Need to investigate the Python server start command in the batch script to fix input redirection for Windows environment.

Status: `REJECTED` (Current test run result).

## 2026-09-25: Real-client UI control and movement

Status: `VERIFIED` for the observed bootstrap and movement path. A required fresh launch was followed by manual start-menu/login navigation; the visible role list had four empty slots, so one role was created. The client entered scene 9068. Runtime state and client cmd133 reports confirmed player 100001 moved from (180,230) to (180,258). A later client-only restart resumed the visible existing role without a second creation request. The reusable controller's `status`, `bootstrap`, and `move` commands were exercised; focused tests: 9 OK.

`TEST OBJ1014` was not visible by screenshot/OCR in this client run. `runtime_state.json` reported `npcs=[]`, which only covers entities sent through this server's cmd132 probe path; this does not establish absence from unrendered map layers.

Evidence: `docs/research/UI_CONTROL_TRACE.json`, `docs/research/UI_CONTROL_EXPLANATION.md`, sanitized screenshots in `docs/research/ui_control_images/`, and `docs/TRUTHAN_UI_CONTROL.md`. Credentials, player names, and packet payloads are excluded from retained evidence.

## 2026-09-25: scene 9068 reconstructed population and protocol boundary

BLRM adds an opt-in JSON population for scene 9068: three NPCs and two
monsters, all labeled `RECONSTRUCTED` for identity, coordinates and stats.
Original Android APK object/image assets support the chosen numeric appearance
chains; its decoded `.scn` supports only the block-0 walkability checks. The
TTpc and BLRM-local-inputs comparisons in
`docs/research/MODELID_MAP_SPAWN_JOIN.md` establish no usable Android entity
identity or spawn join, so their names/coordinates were not copied into this
population.

JADX `GameWorld.java` client source: `sendGetNpcMissionListMessage` (18714) and
`sendNpcFunctionTalkMessage` (19519) send cmd120/cmd73 with one NPC runtime i32.
Their response readers are `processNpcFunctionListMessage` (8514) and
`processNpcFunctionTalkMessage` (8676). The server implements a configured
synthetic guide function/dialogue with empty quest groups, but client behavior
is pending visual verification. The cmd136 attack request body is statically
known; cmd137's nested skill-effect and property-update structures are not
fully recovered, and no valid result capture is available. Combat response and
quest progression remain UNKNOWN; server does not invent either packet.

The map socket now polls at 60-second intervals and continues after idle timeout
events instead of disconnecting at 300 seconds. This is a code-level fix only;
long-idle client evidence has not been recorded.


## Screen watcher repair (2026-09-25)

Real-emulator evidence for the detached screen watcher, independent frame/OCR reporting, reconnect handling, safe UI observation and ADB fallback is recorded in docs/research/SCREEN_WATCH_REPAIR_20260925.md. The final 10m11s soak advanced frames at every 30-second sample, had a maximum frame age of 301 ms and separate maximum OCR age of 3.46 s, and showed no errors or reconnects after the atomic status-write retry. This does not resolve the existing post-auth port-19000 peer EOF/bootstrap blocker described in PROJECT_STATE.md.
