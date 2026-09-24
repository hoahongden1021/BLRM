# Tru Than / 诛神OL Android 1.17 — Project State

Last known stable baseline: **LocalServer v0.26**
Current emphasis: **reverse real NPC/mob spawn + starter tutorial flow without guessing**

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
reached server list, role list, or IN_GAME — **no visual PASS**; entity
rendering this session unverified. Taps need focus-then-activate
(double-tap ~700ms); UI lag 3–5s. Evidence: `docs/PROTOCOL.md`,
`docs/AUTOMATION_BOOTSTRAP.md`, `docs/RE_FINDINGS.md`.

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
