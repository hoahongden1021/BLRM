# Tru Than / 诛神OL Android 1.17 — Project State

Latest milestone (2026-09-26, real client): **scene 9068 monster combat is
now VERIFIED end to end — select -> attack -> visible HP drain -> death ->
respawn.** Fresh runtime via `py tools\truthan_gui.py launch` + `bootstrap
--adb-only` reached `BOOTSTRAP_PASS`/`WORLD_HUD` (trace
`runtime\agent\ui_control\20260926T111205_768152Z\trace.jsonl`). A fast
double tap at device `(860,564)` selected and confirmed monster 230110 Fire
Fox (pick box 48x52 canvas units evaluated on pointer release; nearby boxes
overlap, so the point was derived relative to the live nameplate); the
client's auto-attack chain then sent RX `cmd=136` (19B) at ~1 s cadence and
every frame was answered with TX `cmd=137` (66B, `hit_result=5`,
`damage=15`), draining hp `60->45->30->15->0`, with respawn TX `cmd=132`
at exactly **+5 s** and full HP restore; two full kill/respawn cycles were
observed, monster-only protection held (230010-230012 never targeted,
cmd136 against them rejected `npc_protected`), and `-15` damage numbers plus
the target-frame HP bar were captured on screen. Implementation:
`server/truthan_combat.py` + integration in
`server/truthan_local_server_v026.py`, off by default (`TRUTHAN_COMBAT=0`),
all tunables env-configured RECONSTRUCTED values (`RANGE=64`,
`COOLDOWN_MS=500`, `DAMAGE=15`, `RESPAWN_MS=5000`). Fixes landed with it:
`respawn_in_s` ms/s clock mix-up in runtime telemetry (now counts 5.0->0,
regression-tested), `--no-create` precedence over a stale creation ledger,
and CREATE_ROLE OCR tolerance for the `lame`/`Name` misread. cmd136/cmd137
are now LIVE-VERIFIED (both docs updated from PARTIAL/UNKNOWN). Evidence:
`server/truthan_packet_logs/20260926_191043_*.log`,
`server/truthan_packet_logs/20260926_201236_*.log`,
`docs/research/ui_control_images/run_20260926_en_combat*/`,
`docs/RE_FINDINGS.md` (combat section). Focused suite: **81 tests OK**.

Prior milestone (2026-09-26, real client): **scene 9068 NPC interaction is
VERIFIED end to end.** One LocalServer v0.26 process stayed alive across
spawn, movement, selection and dialogue. After `cmd10` the server sent five
`cmd132` records (230010 Beginner Guide @170,232 obj1014; 230011 Guide
Fairy @190,216 obj1015; 230012 Village Head @190,248 obj1016; 230110 Fire
Fox @210,232 obj1155; 230111 Reconstructed Creature 2077 @210,248 obj2077),
rendered as a sprite cluster. A double tap at device `(990,630)` produced RX
`cmd=120` with body `0003827b` = 230011, the client rendered the function
list, tapping `1.Talk` produced RX `cmd=73` with the same body, and the
rendered title/text matched `interaction.title`/`interaction.text` byte for
byte. The `flags: []` blocker (`ReadNpcFlagFuction` returning null, so
`onPointerCheckNPC` never sent cmd120) was fixed to `"flags": [5]` for the
three NPCs only; the two monsters keep `[]` and use the `canHit == 1`
branch. Evidence:
`server/truthan_packet_logs/20260926_011006_p19000_127.0.0.1_52422.log`,
`docs/research/NPC_INTERACTION_HANDOFF.md`, `docs/research/ui_control_images/run_20260926_*.png`.

Prior tooling milestone (2026-09-25): screen watcher repair tested on the real
Android emulator. Detached start/parent-exit behavior, continuous decode,
separate frame/OCR freshness, bounded stream reconnect, safe UI observation,
dimension/staleness tap guards, and ADB fallback were exercised. Final soak:
10m11s / 21 samples, frame age max 301 ms, OCR age max 3.46 s, no errors or
reconnects after the status-file retry fix, threads 50–54, private memory
626–728 MB. Exact timeline and commands: `docs/research/SCREEN_WATCH_REPAIR_20260925.md`.
This does not change the separate unfinished real-client bootstrap milestone.

Last known stable baseline: **LocalServer v0.26**
Current emphasis: **reverse real NPC/mob spawn + starter tutorial flow without guessing**

Real-client UI controller run (2026-09-25): fresh required launch completed;
manually navigated start/login, created exactly one role after observing four
empty slots, entered scene 9068, and moved player 100001 from (180,230) to
(180,258), confirmed by cmd133/runtime state. Re-entered the existing role
after a client-only restart without another create request. `status`, safe
`bootstrap`, and `move` controller paths exercised; focused tests: 9 OK.
TEST OBJ1014 was not visibly confirmed in this client view (runtime probe list
was empty; this does not establish absence from unrendered map data). Evidence:
`docs/research/UI_CONTROL_TRACE.json`, `docs/research/UI_CONTROL_EXPLANATION.md`,
`docs/TRUTHAN_UI_CONTROL.md`.

Research + server (2026-09-25, session continuation): `opencode.json` duplicate
`edit` keys fixed (TTpc/`BLRM-local-inputs` still deny; write unchanged;
`NO_DUP_KEYS_OK`). Integration test `tests/test_map_entry_integration.py`
real-socket map-entry path green: JOIN reply is **cmd7**; full suite **23 OK**.
APK `data/scn/9068.scn` fully decoded via `GScene.init` (45×60 grid, walkable
spawn/fixture/monster, **no spawn table** — original XY still UNKNOWN; residual
299 B = back layer unparsed). Second `DATA_SPAWN_FIXTURES` entry added: TEST
OBJ1155 sprite 220011 `can_hit=1` label `RECONSTRUCTED` at (196,238) walkable;
assets IMG1207 VERIFIED. Server `send()` no longer crashes on Chinese
`print(label)` under cp1252.

Real-client bootstrap (2026-09-25, task 5 **PARTIAL**): fresh launch with
`TRUTHAN_DATA_SPAWN=1` + `TRUTHAN_SCENE=9068`; OCR START_MENU →
ACCOUNT_LOGIN → auth cmd42/−42 **VERIFIED** (packet log
`20260925_005625_p29000`, layout matches `processLoginMessage`/
`processServerList`). Post-auth: client opens 19000 then **immediately
peer_eof, zero cmd277**; UI stuck NETWORK_ERROR `网络错误` + `读取中...100%`
(State 100 / `tcpState` not OPEN). Cause **UNKNOWN**. Android client never
reached server list, role list, or IN_GAME - **no visual PASS**; entity
rendering this session unverified. Taps need focus-then-activate
(double-tap ~700ms); UI lag 3-5s. Evidence: `docs/PROTOCOL.md`,
`docs/AUTOMATION_BOOTSTRAP.md`, `docs/RE_FINDINGS.md`.
**Superseded by the 2026-09-25/26 runs below:** a later run reached IN_GAME
with one role, and the 2026-09-26 session entered scene 9068, rendered five
entities and completed the NPC dialogue. The 2026-09-25 `peer_eof` cause was
never isolated; treat it as a historical failure mode of that specific launch,
not a current blocker.

Research + server (2026-09-25): cmd9 caller trace complete —
`sendGetNpcListInSceneMessage` has **0 call sites** (JADX+smali); cmd9 response
only fills the NPC guide/list UI (`readyNpcList`/`FoundNPC.bin`), not sprite
visibility (cmd132 → `scene.addSprite`). New off-by-default data-driven spawn
gate `TRUTHAN_DATA_SPAWN` + `DATA_SPAWN_FIXTURES` (TEST OBJ1014 first);
`data_spawn_entities()` returns [] when switch is off. Tests: 21 OK including
npc_view_body decode + switch-off/on/wrong-scene. New `03_test_data_spawn.bat`.
No real-client map-entry capture this session; original objectDataId/XY still
UNKNOWN. Evidence: `docs/PROTOCOL.md` (cmd9 vs sprite), `docs/RE_FINDINGS.md`,
`docs/ENTITIES.md`, `docs/research/MAP_SPAWN_OBJECT_CHAIN_PROPOSAL.md`.

Research (2026-09-25): spawn-chain static trace complete — cmd132/cmd9/cmd323
field order VERIFIED from DEX; objectDataId→obj→img VERIFIED; ModelID not on
Original wire; no spawn tables in TTpc/revived client files (bounded search 0 hits).
BLRM `npc_view_body` layout matches client; missing original objectDataId/XY
and missing cmd=9 emission. Proposal:
`docs/research/MAP_SPAWN_OBJECT_CHAIN_PROPOSAL.md`. No server code changed.

Research (2026-09-24): PC skill/equipment conf language tables decoded with jar
loaders (`A`/`p`); `Tasks_language.dat` proven absent in jar/TTpc/revived/original;
Android quests/skills/goods are packet-driven (`getFunctioRoleQuest`,
`readRoleSkill`, `readGoods`). Catalog: `docs/research/PC_SKILLS_EQUIPMENT_QUESTS.md`.
No server code changed. No quest IDs guessed.

Research (2026-09-24, follow-up): skill families 171–175 have **no static
class→family map** in PC conf or original DEX — ownership remains UNKNOWN.
Occupations 力士/刺客/唤雷师/天师 (+武神/圣仙 via NewJob) and weapon types
刀剑斧法剑羽扇法杖 are VERIFIED constants; skill weapon/job gates and MP/CD/level
are **packet fields** (`RoleQuickUse` / `processSkillDetail`), not conf columns.
See `docs/research/SKILL_CLASS_WEAPON_MAP.md` + `skill_family_catalog.csv`.
No server code changed. No class inferred from ID prefix or skill name.

Research (2026-09-24, entity↔image catalog): visual/source-backed HTML+CSV
catalog under `docs/research/entity_image_catalog.html` + `catalog_*.csv`.
VERIFIED chains: objectDataId→obj→img slots; goods iconId→pgg GOOGS_PNG[type];
skill iconId→pgg 5 (packet field). UNKNOWN static joins kept UNKNOWN
(skill/item icon tables, ModelID→obj, prop PNG keys). Counts: 377 objects,
2027 images (303 obj-linked), NPC512/monster624/mount108/weapon720/fabao30/skills384.
See `docs/research/ENTITY_IMAGE_CATALOG.md`. No server code changed.

Latest milestone (2026-09-22, clean run 112928): one diagnostic GNPC now renders
and can be selected in the real Android client. VERIFIED only for this minimal
cmd132 path: TEST OBJ1014, synthetic runtime ID220010, APK object1014/image7197,
scene9068 at (203,253), standing action0/direction0, positive HP/MP, no extensions.
Screenshot shows purple winged appearance and selected name/portrait/HP/MP bars.
Original tutorial identity remains UNKNOWN. No mobs, dialogue or quests implemented.
Run via 02_test_npc_probe.bat (calls canonical 01_test_capture.bat); normal 01
still defaults to no population. Encoder now separates initial_state, action_type,
action_id and direction; probe skips the arrival effect. Position was traversed
in the user's earlier run111505, not inferred as an original NPC spawn.
Evidence: debug_runs/TruThan_debug_20260922_112928.zip. No ArithmeticException,
NullPointerException, ArrayIndexOutOfBoundsException, BufferUnderflow or fatal
exception matched in this run's full Logcat. Only IMG0 update requested; the
OBJECT cmd11 fix still has no real-client transfer validation.
Next: trace GNPC interaction eligibility/flags and initial mission/dialogue
request from the selected sprite; current empty-flag diagnostic did not produce
a dialogue. Do not invent quest IDs or rename OBJ1014 to 彩云仙子.
Capture now preserves old debug runs and snapshots its BAT/diagnostic launcher.
Run112657 is INVALID for spawn validation because an old server coexisted.
The user run111505 is archived explicitly as PARTIAL; see its AGENT_HANDOFF.txt.
Before testing ensure previous server processes have stopped: title-based BAT
cleanup did not reliably stop the old Python process in Windows Terminal.

User follow-up (2026-09-22, run111505 still open): screenshot shows player in
starter scene; user reports no NPCs, mobs or quests. Live server console confirms
NPC/mob probes OFF and cmd132 clean mode (no population sent). Source snapshot
SHA-256 matches current server. This is expected missing gameplay implementation,
not evidence of failed NPC rendering. Capture ZIP/end Logcat are not yet present;
finish this run before another capture. Only cmd11 IMG0 request was seen in the
inspected console, so OBJECT type-1 Android loading remains untested.
Offline checks covered all 377 object assets, candidate image references,
image/scene lookup and Python syntax. Login/map/movement code is unchanged.
Next: run 01_test_capture.bat, login, enter the starter scene and move; inspect
any real cmd11 request/response. If no type-1 request occurs, object loading
remains untested. Original NPC identity stays UNKNOWN; cmd132 animation-field
cleanup and a single explicitly synthetic asset probe remain unfinished.

Research checkpoint (2026-09-22): cmd132 GNPC/GUser field order and conditional
reads have been reconstructed from the bundled classes.dex and checked against
smali. See `docs/PROTOCOL.md`, `docs/ENTITIES.md`, `docs/RE_FINDINGS.md`, and
`docs/research/` for exact evidence. Status remains PARTIAL until a new real-client
test. No server code changed and no entity was spawned. Deliberate stopping point:
present schema for review before implementing a probe. 彩云仙子 objectDataId,
original entity ID and coordinates remain UNKNOWN; 1014/1015/1016 remain asset
candidates only, with standing-animation/resource structure checked.

Follow-up after rules reload (2026-09-22): installed emulator APK and bundled APK
have identical SHA-256. Expanded search through all 437 gzip-compressed scene
assets found no tutorial-name literals. Cmd9 NPC navigation-list schema was
reconstructed (PARTIAL): ID/name/X/Y/flags arrive from a separate server message,
without appearance ID. Web leads supply historical context only; identity remains
UNKNOWN. No server edits or probe execution. See docs/RE_FINDINGS.md for sources.

---

## VERIFIED

### Client / runtime

- Android client version: Tru Than / 诛神OL Android 1.17
- APK runs on Android 15.
- Local auth and game networking works through ADB reverse.

### Ports

- Auth server: TCP `29000`
- Game server: TCP `19000`
- Auxiliary ports used by tooling/server: `1888`, `8089`, `2888`

### Login / character / join pipeline

The following flow has been successfully exercised by the client:

- `cmd=277` login game
- `cmd=20` role list
- `cmd=18/16` create role flow
- `cmd=6` JOIN_GAME request
- server `cmd=7` JOIN_GAME response
- server `cmd=32` scene load
- client `cmd=10` ENTER_SCENE_READY
- server `cmd=10` scene-ready response
- client `cmd=133` movement updates

### Starter scene
Current status of `cmd=132` entity probe: **FAILED** (Environment Error).
The `02_test_npc_probe.bat` script failed to start the server due to an `Input redirection` error on Windows. No new data was captured.
Reference evidence remains the run `112928` results.

Next action: Fix the Python server startup command in `02_test_npc_probe.bat` to handle Windows environment redirection properly, then rerun the test.

## 2026-09-25 continuation: scene 9068 content (PARTIAL; source and tests complete)

- `docs/research/SCENE_9068_ENTITY_PROVENANCE.md` records the concrete TTpc /
  BLRM-local-inputs comparison. Targeted TTpc loaders and inventory expose
  ModelID language rows and map remapping, but no map-to-entity or spawn-XY
  records. The reference names/text remain REVIVED_REFERENCE; client object
  assignments, positions, and stats are RECONSTRUCTED. APK asset chains and
  decoded walkability are independently VERIFIED.
- `server/scene_population_9068.json` defines three NPCs and two monsters.
  The opt-in data loader validates object assets and decoded block-0 walkability;
  cmd132 records are sent after the cmd10 scene-ready response. Population is
  off by default. Configured NPCs answer the statically supported cmd120/cmd73
  flow. No quest groups or quest IDs are invented.
- Focused tests passed: `tests.test_map_entry_integration` (2 tests),
  `tests.test_v026_baseline` and `tests.test_truthan_ui_control` (46 tests;
  48 tests total).
  This includes malformed asset handling, switch-off behavior, packet layout,
  and the local NPC interaction socket flow.
- cmd136's request body is statically decoded (19 bytes, corrected 2026-09-26).
  cmd137's nested skill-effect and property records are now fully traced from
  the client readers and documented in `docs/PROTOCOL.md`, but no cmd137 frame
  has ever been captured, so the layout is a static contract only. No combat
  result packet is fabricated; server combat response remains UNKNOWN.
- Map sockets poll every 60 seconds and continue after idle socket timeouts;
  extended idle runtime behavior is not yet tested.
- `tools/truthan_ui_control.py bootstrap --adb-only` captures with ADB +
  RapidOCR while retaining freshness and post-action checks. The screen watcher
  is stopped. Its guarded `--reuse-session --no-create` attempt reached ROLE_LIST
  after one login exchange and observed server `cmd=20` role_count=0; it sent no
  create request and stopped. **Superseded:** a later run created exactly one
  role on a server with an empty ledger, and the 2026-09-26 session reused it
  (`role_count=1`, `create_sent=false`) without a second creation request.
- The earlier continuation restarted the runtime before the user changed the
  workflow to reuse the existing process and character; no restart was made
  after that correction. The role_count=0 result belongs to that superseded
  attempt; the current constraint is only "never submit a second creation while
  the existing role is visible".

## 2026-09-26: English UI test build (com.t4game.en)

Record: `docs/research/EN_UI_TEST_BUILD.md`; findings appended to
`docs/RE_FINDINGS.md`.

- Delivered a separately named English test build (`com.t4game.en`,
  label `TruThan EN`, `versionCode 215`) installed **alongside**
  `com.t4game`; nothing uninstalled or cleared. Install needed the duplicate
  getui `<permission>` declaration removed, first launch needed
  `pm grant … android.permission.READ_PHONE_STATE`.
- Map: `build/english_test/build_en_ui.py` — 341 `(zh,en)` pairs over smali
  `const-string` and `Language*.str`; verification reports
  `mapping entries still present in Chinese: 0`.
- Start-menu labels turned out to be baked PNGs (`login/botton*.png`); they are
  pixel-translated by `build/english_test/translate_menu_labels.py`, which also
  preserves the original palette-PNG colour type (RGBA output made the client
  hang at `读取中...100%`).
- `tools/truthan_ui_control.py` is bilingual: `LABEL_ALIASES`,
  `label_matches()`, English `classify()` branches and a leading-token fallback
  for detector-split labels. Focused suite: **50 tests OK**.
- VERIFIED on the real client with fresh ADB screenshots:
  `START_MENU` → tap `Start Game` → `ACCOUNT_LOGIN` dialog → tap `Log In` →
  message `Please enter a username and password`
  (`run_20260926_en_05/06/07/08/09/10` under `docs/research/ui_control_images/`).
  All taps used OCR box centres only.
- **Current blocker:** no saved credentials exist for the new package, and the
  controller rule is *saved credentials only, never invent or fill fields*
  (`truthan_ui_control.py:492`), so `ROLE_LIST` / `CREATE_ROLE` / world HUD /
  inventory / NPC dialog / combat are still untranslated-and-untested territory
  in the English build.
- **Next action:** obtain a credential pair for `com.t4game.en` (or an explicit
  documented saved-credential source), then run
  `bootstrap --reuse-session --adb-only` and capture the remaining screens.
- Still deferred: 2879 of 3223 `Language*.str` entries, lore/quests/item
  descriptions, and the 38-44 px HUD PNGs `菜单` / `画质` / `聊天`
  (Chinese OCR branch still handles them).
