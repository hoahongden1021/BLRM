# NPC interaction handoff

## Live client result (2026-09-26)

Status: `VERIFIED` for the `cmd120 -> cmd73` NPC interaction flow with the
configured synthetic guide NPC `230011` on the real Android 1.17 client.

Runtime used for this result:

- LocalServer v0.26 process kept alive for the whole test (PID 12280,
  listeners 19000 / 29000). The server was **not** restarted between spawn,
  movement, selection and dialogue steps.
- Client: `com.t4game` 1.17.01.15120810 on `emulator-5554`, package
  `com.t4game`, launched by `tools/truthan_ui_control.py bootstrap
  --reuse-session --adb-only --restart-client` (`role_count=1`,
  `create_sent=false`, no second character).
- Packet evidence: `server/truthan_packet_logs/20260926_011006_p19000_127.0.0.1_52422.log`.
- Screenshots (player name redacted):
  `docs/research/ui_control_images/run_20260926_npc_cluster.png`,
  `run_20260926_npc_anchors.png`, `run_20260926_npc_function_list.png`,
  `run_20260926_npc_talk.png`.

What was observed end to end:

| Step | Client action | Wire result | Client result |
|---|---|---|---|
| Spawn | after `cmd10` scene ready | 5 × `cmd132` TX, frame sizes 78 / 75 / 76 / 71 / 90 | entity cluster rendered |
| Select | double tap device `(990,630)` | RX `cmd=120`, 16-byte frame, body = i32 `0x0003827b` = **230011** | function list dialog |
| Reply | server | TX `cmd=120`, 103 bytes | "Guide Fairy" + greeting + `1.Talk` |
| Activate | tap the `1.Talk` entry `(1112,720)` | RX `cmd=73`, 16-byte frame, body = i32 `0x0003827b` = **230011** | talk dialog |
| Reply | server | TX `cmd=73`, 86 bytes | title `Starter area`, text `This local guide has no recovered original quest records.` |

The rendered title and text are byte-identical to the `interaction.title` /
`interaction.text` values of NPC `230011` in
`server/scene_population_9068.json`.

## Client request layout (VERIFIED by capture)

Both requests are four-byte bodies:

- `sendGetNpcMissionListMessage(int)` `GameWorld.java:18714` -> `putInt(i)`
  -> `SendData(120, ...)`.
- `sendNpcFunctionTalkMessage()` `GameWorld.java:19519` ->
  `putInt(choicedFunctionNPCId)` -> `SendData(73, ...)`.

Captured client frames are 16 bytes = `24 25` magic + u16 length (total-2) +
6-byte prefix + u16 command + 4-byte body. The captured body for both requests
is `00 03 82 7b` = 230011. No function index, no page number, no scene id is
sent with either request.

## Client reply readers (static, confirmed against the live render)

- `processNpcFunctionListMessage()` `GameWorld.java:8514` (dispatch `case 120`
  at `:7269`): u16-BE string greeting, four quest-group signed-byte counts,
  signed-byte function count, then per function `flagId i8`, `flag i16`,
  u16-BE label string. The captured 103-byte reply decodes exactly as
  `greeting(76 bytes)`, `00 00 00 00`, count `01`, `00` `0007` `0004 "Talk"`.
- `processNpcFunctionTalkMessage()` `GameWorld.java:8676` (dispatch `case 73`
  at `:7149`): status i8 (0 = success), count i8, then count title/text string
  pairs. The captured 86-byte reply decodes as `00` `01` `000c "Starter area"`
  `0039 "This local guide has no recovered original quest records."`.
- Selecting the entry runs `npcFunctionAction((byte) 57, npcQuest)`
  `GameScreen.java:10601`; the `b == 57` branch at `:10630` calls
  `sendNpcFunctionTalkMessage()`.

Server encoders `npc_function_list_body()` / `npc_talk_body()` in
`server/truthan_local_server_v026.py` already matched these readers; no server
change was required for the reply side.

## Why `flags: []` blocked cmd120 (root cause, now fixed)

`server/scene_population_9068.json` originally carried `"flags": []` on all
five records.

- `GameWorld.ReadNpcFlagFuction()` (`:14100`) reads the flag-count byte from the
  cmd132 NPC body; a count `<= 0` returns `null`, so `GNPC.Flag` stayed `null`.
- `onPointerCheckNPC()` (`GameWorld.java:2627`) reaches
  `if (gnpc.Flag == null || !Util.testInterRound(..., 80)) return;` (`:2685`)
  before `sendGetNpcMissionListMessage(...)` (`:2691`). With a null `Flag` the
  request was never sent, so a double tap only produced `cmd133` movement.

The three NPC records now carry `"flags": [5]`. Evidence for that value:

- `NPC_FLAG_TALK = 5` and `NPC_FUNCTION_TALK = 7` in `CommonConstants.java`
  (`:221`, `:314`), and `NPC_FLAG_FUNCTION[5] = {7}` (`:616`), which matches
  `interaction.function_id: 7` already present in the same JSON record.
- Flag 4 is the blocked case: `Util.testNpcFlag(gnpc.Flag, (byte) 4) &&
  gnpc.Flag.length == 1` (`:2688`) returns without sending.
- The two monster records keep `"flags": []`; they take the `canHit == 1`
  branch (`:2660`) and never send cmd120.

Wire proof that the change reached the client: the three NPC `cmd132` frames
grew by exactly one byte (77 -> 78, 74 -> 75, 75 -> 76) while the two monster
frames did not change (71, 90), and the NPC flag block decodes to count `01`,
value `05`.

## Selection geometry (VERIFIED by two independent taps)

`onPointerSelectNPC()` (`GameWorld.java:15412`) tests the released point in
logical window coordinates against `[u-21, u+27] x [v-42, v+10]`, where
`u = mapX - win_x` and `v = mapY - win_y`. `scene.objheads[1]` is ordered by
`mapY` ascending (`GScene.addToView`, `:651`), so the lowest-`mapY` sprite
wins a tie, and the local player occupies the same list.

Measured display geometry from the live screenshots:

- app content box: device x `393..2758`, y `0..1271` (black band from row 1276);
- `CANVAS_W = 789`, `CANVAS_H = 424`, device scale `3.0`;
- `win_x` stays 0 near spawn (clamped, `GScene.setWinPos` `:1987`);
- `win_y = mapY - CANVAS_H/2 = mapY - 212`, clamped at 0
  (`GUser.java:680`, `GMap.WH2`).

Therefore `device_x = 393 + 3*(mapX - win_x)` and
`device_y = 3*(mapY - win_y)`.

Tap model confirmed twice against `cmd133` movement targets: a tap at
device `(930,750)` moved the player to exactly `(176,240)`, and a tap at
`(990,630)` moved it to exactly `(192,226)`, both equal to
`(tile*16, tile*16 + win_y)`.

With the player at `(192,226)` (`win_y = 14`), NPC 230011 at `(190,216)` has
`u = 190`, `v = 202`, so its hit box is device x `900..1044`, y `480..636`.
The double tap at `(990,630)` is inside that box and outside every earlier
`mapY` sprite, and the server recorded `npc_id = 230011`. An earlier attempt
from the spawn position (`win_y = 18`, box y `468..624`) failed only because
the tap y `630` was 6 device pixels too low; that attempt produced eight
`cmd133` frames and no cmd120.

## Scene 9068 population evidence (2026-09-26)

Five `cmd132` records decoded from the live log:

| id | name | mapX | mapY | objectDataId | flags block |
|---:|---|---:|---:|---:|---|
| 230010 | Beginner Guide | 170 | 232 | 1014 | `00 01 05` |
| 230011 | Guide Fairy | 190 | 216 | 1015 | `00 01 05` |
| 230012 | Village Head | 190 | 248 | 1016 | `00 01 05` |
| 230110 | Fire Fox | 210 | 232 | 1155 | `00 00` |
| 230111 | Reconstructed Creature 2077 | 210 | 248 | 2077 | `00 00` |

`run_20260926_npc_cluster.png` shows the entity cluster at the predicted
screen region, and `run_20260926_npc_anchors.png` overlays the six predicted
anchor points (five entities plus the player) together with the tap point that
returned `npc_id = 230011`.

Status split:

- `VERIFIED`: all five records present on the wire with the coordinates above;
  NPC flag bytes present; `230011` selected by its predicted hit box and its
  dialogue rendered.
- `PARTIAL`: pixel-level identity of individual overlapping sprites. Four
  distinct bodies are separable in the cluster image while six anchors are
  predicted, so `230012` and `230111` cannot be attributed to specific pixels
  from this screenshot alone.
- `UNKNOWN`: original NPC/monster identity, original quest data, original
  names. Every configured name and dialogue string is `RECONSTRUCTED`.

## Client evidence still needed

- `canCaiJi` has not been exercised: `readSpriteView` (`GameWorld:13234`) has
  no `canCaiJi` field, and only the collection messages at `:3854` / `:4213`
  set it, so it stays 0 for this population. The collection branch (`:2680`)
  is untested.
- Only the talk function is configured. Other `NPC_FLAG_FUNCTION` values
  (trade, shop, relive, quest accept/deliver) are not configured and were not
  tested.
- No quest accept/deliver rows exist in the server; quest groups in the
  cmd120 reply are four zero bytes.
- cmd136 / cmd137 combat was not attempted in this session.
