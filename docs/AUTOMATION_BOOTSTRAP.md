# Android agent bootstrap automation

Status: **NOT VERIFIED**

This phase must pass before navigation or NPC interaction automation is attempted.

## Goal

From an arbitrary normal client startup state, the local Android agent must be able to:

0. ensure the local Tru Than Python server is listening and recreate all required ADB reverse rules;
1. launch `com.t4game`;
2. identify the actual current client screen from tool output rather than assumptions;
3. handle a reconnect/network-error dialog when it is actually present;
4. progress through login/server entry;
5. if the role list is empty, create one role using only controls confirmed from the real client;
6. if a role already exists, select that role instead of creating another;
7. request entry into the game;
8. wait for scene initialization;
9. prove `IN_GAME` using runtime evidence.

## Evidence policy

Do not hard-code button labels, coordinates, role-creation controls, class choices, or screen transitions until they have been observed on the real Android 1.17 client.

For each newly observed startup screen, record:

- screenshot path;
- recognized visible text;
- interactive element labels and coordinates;
- action taken;
- next screen reached;
- server command(s) observed when relevant.

Temporary Qwen3-VL use is allowed for one-time calibration. The long-term fast path should prefer OCR/text/state sensors, with vision only as fallback.

## Existing tools

- `tools/truthan_gui.py`
  - `doctor`
  - `status`
  - `launch` — starts a fresh test: force-stops the client, stops any old Tru Than local-server Python process, starts the current local server in a new process, recreates ADB reverse for ports 1888/8089/19000/2888/29000, then launches the client
  - `shot`
  - `observe`
  - `locate`
  - `click`
  - `tap`
  - `text`
  - `back`
- `tools/truthan_state.py`
  - `show`
  - `agent`
  - `nearest`
  - `watch`
- `tools/truthan_rapidocr.py`
  - captures a transient screenshot when no image is supplied
  - runs RapidOCR directly in Python
  - writes ASCII-safe JSON under `runtime/agent/ocr/`
  - deletes internally captured screenshots after OCR
- `tools/truthan_bootstrap_step.py`
  - performs one fresh live test as a single command
  - fresh-launches server/client, OCRs, validates one exact target, taps once, OCRs again
  - writes `runtime/agent/reports/last_agent_result.json` and `last_agent_result.txt`
  - avoids ad-hoc temporary scripts and fragile multi-tool report writes
- `tools/truthan_screen_watch.py` — **PARTIAL**: decode, OCR and coordinate mapping confirmed on the real emulator; lower-latency detector settings still need a local runtime test.
  - uses the matching local scrcpy server with a dummy-byte ADB-forward handshake and a raw H.264 video payload
  - receives raw H.264 through an ADB forward and decodes frames in memory with PyAV
  - keeps one RapidOCR engine alive instead of reloading it for every screenshot
  - OCRs only when the sampled frame changes enough, plus a periodic idle refresh
  - atomically updates `runtime/agent/screen_state.json`
  - commands: `doctor`, `start`, `status`, `stop`
  - requires `scrcpy` plus its matching `scrcpy-server` and Python package `av`

The runtime-state file can prove that the game session reached the world, but it cannot by itself identify or operate pre-game UI screens.

## Screenshot/runtime-file policy

Agent screenshots must not clutter the repository root.

- Runtime files live under `runtime/agent/` and are gitignored.
- Internal captures used by `observe`, `locate`, `click`, and normalized tapping are transient and are deleted automatically after the consumer finishes.
- The temporary device-side `/sdcard/__truthan_agent.png` transport file is deleted immediately after each pull.
- Explicit `shot` is the exception: it is a deliberate retained capture and defaults to `runtime/agent/screenshots/manual.png`.
- Old root-level `.agent_screen.png` / `.agent_vision.json` files from previous bridge versions are removed on the next fresh `launch`.

## Experimental realtime screen watcher

This path has now passed a narrow real-emulator proof:
- scrcpy 4.1 raw H.264 frames were decoded in memory;
- frame count advanced into the hundreds;
- RapidOCR read meaningful Chinese text from the stream;
- the verified START_MENU signature was classified correctly.

The first successful run decoded frames at 2048x918, then the device-side encoder later closed after a capture/encoding error. The watcher now defaults to 1920 max size and 30 FPS, keeps scrcpy downsize-on-error enabled, and records stream-to-device scaling. A later 1920x862 run decoded 1131 frames and correctly classified START_MENU; a separate 1920x862 run ended after the user closed an associated console, so that closure is not evidence of an encoder failure.

The 1131-frame status showed a 6.39-second OCR pass (4.20 seconds detector, 2.06 seconds recognition). The next real-emulator run kept the stream alive beyond 5018 frames and still classified START_MENU correctly, but the purported detector cap of 960 had **no speed benefit**: three passes took 6.35–6.65 seconds, and the OCR frame age reached 17.8 seconds. This rules out the previous setting as a performance fix. Inspection of RapidOCR's TextDetector shows that its `get_preprocess()` selects a side limit from the actual image size when `limit_type=max`; it did not shrink the 1920x862 input in that run.

**VERIFIED for START_MENU OCR speed on the real emulator (2026-09-23):** resizing the actual image passed to OCR to 960x431, with `Det.limit_type=max` to prevent upscaling, produced two 0.570- and 0.686-second OCR passes. Their detector timings were 0.128 and 0.133 seconds, and the status-query frame ages were 1.188 and 1.473 seconds. Both runs classified `LOGIN_OR_ENTRY / START_MENU` from all three verified Chinese markers; `frames_decoded` advanced from 44 to 729 with the same running PID 14276. This confirms faster OCR and continued decode across those observations, not sustained stability of this new configuration. **VERIFIED numeric remap from real-emulator watcher output:** the `开始游戏` item had stream `center=[1553.0,368.0]` and device `tap_center=[2420.0916666666667,573.7726218097448]` with frame 1920x862, OCR input 960x431, and device 2992x1344. Both numbers equal `center * device_size / frame_size`. This verifies the reported coordinates for that menu item. A subsequent fresh real-emulator test also verified one watcher-derived tap and transition, described below. The CLI parameter is `start --ocr-max-size N` (`--ocr-det-max-size` remains an alias); `0` disables resizing for comparison. `UNKNOWN_SCREEN` triggers one full-resolution OCR fallback on that frame. Unchanged screens get an idle OCR refresh after one second by default. `status --brief` reports OCR input size, fallback, timing, frame age, classification, and decoded frame count. Keep the server console open; query status from a separate PowerShell window if the launch window has focus.


The watcher sets `send_stream_meta=false`, `send_frame_meta=false`, `send_device_meta=false`, `audio=false`, and `control=false`, while keeping `send_dummy_byte=true` for the ADB-forward handshake. It reads the dummy byte before feeding the H.264 payload to PyAV. Do not enable `raw_stream=true` here: that disables the handshake. Frames are decoded directly in RAM.

Expected test flow:

```
py tools\truthan_screen_watch.py doctor
py tools\truthan_gui.py launch
py tools\truthan_screen_watch.py start
py tools\truthan_screen_watch.py status --brief
py tools\truthan_screen_watch.py stop
```

The existing screenshot-based `truthan_ocr_tap.py` uses box coordinates as native ADB coordinates. Do **not** pass the watcher's `screen_state.json` through its old `--ocr` option: those boxes are in stream coordinates. The added `--watch` mode reads the latest observation from the running watcher with a matching PID, requires verified classification, exact text and sufficient score, independently checks the box-to-device mapping and foreground app, then waits for a subsequent state transition. It reports `WATCH_FRAME_AGE_SECONDS` for diagnosis but imposes no frame-age cutoff or pre-tap wait. **VERIFIED for one real-emulator START_MENU -> ACCOUNT_LOGIN transition (2026-09-23):**

```
py tools\truthan_ocr_tap.py "开始游戏" --watch --require-state LOGIN_OR_ENTRY --require-substate START_MENU
```

In that run, `WATCH_FRAME_AGE_SECONDS=1.554`, `TARGET_SCORE=0.999900`, OCR stream box `[[1404,322],[1704,322],[1704,414],[1404,414]]`, and ADB tap `(2422,574)` were reported. The watcher then reported `transition_observed=true`, `frame_id=312`, and `LOGIN_OR_ENTRY / ACCOUNT_LOGIN` with the verified `账号:` and `开始游戏` signature. This confirms the single observed entry-screen transition, not account submission or complete bootstrap. A later invocation refused a START_MENU tap because the cached OCR frame was 4.886 seconds old. Waiting up to 12 seconds did not fix this on the emulator: the next report still had a 6.087-second frame age, `frame_id=190`, and `frames_decoded=216`. The frame-age gate and pre-tap wait were removed at the user's request. **CANDIDATE:** an offline mocked run accepted a 20-second-old watcher observation and still rejected the wrong substate and incorrect coordinate mapping; this revised behavior has not yet been tested on the emulator. If the display changes while the watcher still reports the previous OCR state, a tap may target an outdated button; inspect the state before tapping. **VERIFIED ACCOUNT_LOGIN observation (2026-09-23):** watcher OCR classified the account screen with the `账号:` and `开始游戏` signature and recognized the `登录游戏` target (score 0.99988). Its remapped tap `(1410,550)` agrees with a separately captured native ADB screenshot target center `(1412,547)` within a few pixels, and the native screenshot size remained 2992x1344. A watcher `TAP_RESULT` at `(1410,550)` returned ADB success but the game remained on ACCOUNT_LOGIN; ADB success alone does not prove the game received the button event. A separate prior `AFTER.transition_observed=false` for the START_MENU tap was later superseded by watcher status identifying ACCOUNT_LOGIN, so that 12-second post-tap check can give a false negative. **VERIFIED client auth request reached the local server (2026-09-23):** following the account-login tap attempts, the real server packet log recorded `[23:36:41] RX-FRAME ... port=29000 cmd=42 wire=NORMAL` and `[23:36:41] TX-FRAME ... port=29000 cmd=-42 wire=SERVER-NORMAL`. This proves the client sent at least one login request and the server sent an auth reply; it does not prove which earlier tap triggered it, whether the client accepted the reply, or that login finished. A 150-ms stationary press at `(1410,547)` still left watcher classification ACCOUNT_LOGIN at frame 310 within its 12-second observation window. **VERIFIED next exchange:** the client connected to port 19000 at 23:36:41; the log shows RX `cmd=277` FE-PREAUTH (52 bytes), TX `cmd=277` (29 bytes), RX `cmd=20` FE-PREAUTH (13 bytes), and TX `cmd=20` (16 bytes). The 16-byte reply includes a 5-byte body, matching this server's success result plus empty role count. Later watcher status was still `ACCOUNT_LOGIN` at frame 1443 with 1489 decoded frames. No further client role-creation/join frame appears in the reported file. Thus input, auth, game-server login, and role-list exchange occurred; the client's UI reaction to the empty role list remains UNKNOWN. Do not vary tap gestures or change packet formats without inspecting current UI and client evidence.

**VERIFIED game connection ended (2026-09-23):** a later synchronized read of the real server runtime state showed `game_connected=false` with its update at 23:36:54 Japan time, 12 seconds after the 23:36:42 `cmd20` reply. Windows reported zero established TCP connections on port 19000. The watcher still classified `LOGIN_OR_ENTRY / ACCOUNT_LOGIN` at frame 9899; the user also supplied a native screenshot of that login page. The logcat query filtered for exceptions/errors returned no rows; this does not prove the client had no silent error or rule out log retention. The client's coded network wait is 70 seconds and the server socket wait is 300 seconds, so the observed 12 seconds is not either configured idle wait. The earlier server log recorded frames but did not record disconnect causes, so the side that ended the connection remains UNKNOWN.

The server now writes a `CLOSED ... reason=peer_eof|server_idle_300s|socket_error_...` footer to its per-connection packet log. The optional `--trace-login` mode of `truthan_ocr_tap.py` watches for 20 seconds and adds screen transitions, game connection changes, sanitized RX/TX frame headers, app PID before/after, and Android exception class names to its `AFTER` record. It omits log payloads/credentials. After the required fresh `py tools\\truthan_gui.py launch`, start the watcher, tap the observed START_MENU entry, then at the verified ACCOUNT_LOGIN screen run:

```powershell
py tools\\truthan_ocr_tap.py "登录游戏" --watch --require-state LOGIN_OR_ENTRY --require-substate ACCOUNT_LOGIN --trace-login
```

This probe is **CANDIDATE**, syntax checked and frame-header parsing checked offline; it has not run on the emulator. A `transition_observed=false` still means no watched screen transition was observed, not that the tap failed. Review the `packet_headers`, `connection_events`, and `screen_events` fields before changing taps or packet formats.

When inspecting Chinese OCR strings from Windows PowerShell, read `runtime/agent/screen_state.json` directly with `Get-Content -Raw -Encoding UTF8 | ConvertFrom-Json`; one piped `status | ConvertFrom-Json` comparison returned no exact Chinese match, while reading the JSON file returned all eight OCR items.

Do not replace the verified screenshot-based OCR bootstrap path with this watcher until:
- `doctor` reports all prerequisites ready;
- `start` reaches running state;
- decoded frame count increases;
- `runtime/agent/screen_state.json` receives meaningful Chinese OCR;
- STOP cleans up the watcher without leaving a stale raw-stream server/forward.

## Verified OCR capability

RapidOCR successfully decoded Chinese text from the real client with bounding boxes and high confidence.

Observed start/entry screen signature:
- `诛神`
- `online`
- `仙境悟道`
- `开始游戏`
- `快速进入` (OCR may include an extra leading glyph/icon)
- `修复游戏`
- `退出游戏`

This screen is a pre-game entry/menu screen and maps to `LOGIN_OR_ENTRY`, not `IN_GAME`.

Do not classify `IN_GAME` from OCR menu text alone. `IN_GAME` still requires runtime-state proof (active game connection, concrete scene id, and player coordinates).

## Required state model

Use these logical states only after corresponding runtime evidence is observed:

- `APP_NOT_RUNNING`
- `NETWORK_ERROR`
- `LOGIN_OR_ENTRY`
- `ROLE_LIST`
- `CREATE_ROLE`
- `LOADING_SCENE`
- `IN_GAME`
- `UNKNOWN_SCREEN`

`UNKNOWN_SCREEN` must not trigger guessed taps.

## Mandatory runtime prerequisite

The Android client cannot complete the local login flow without the local Python server.

For every live runtime test, the first executable step is a fresh launch:

```
py tools\truthan_gui.py launch
```

Do not preserve an old runtime between AI test tasks. The launcher is responsible for replacing the old Tru Than server process and old client process with fresh instances before OCR or automation starts.

For bootstrap work, `py tools\truthan_gui.py launch` is the canonical fresh-test launcher. It performs this sequence automatically:

1. require an ADB device in `device` state;
2. force-stop `com.t4game` without clearing app data;
3. find and stop old Python processes running a repository `truthan_local_server_v*.py`;
4. verify all required server ports are free; if an unrelated process still owns a required port, STOP instead of killing it;
5. start the current `server/truthan_local_server_v*.py` as a fresh process and wait for all five ports;
6. recreate ADB reverse for 1888, 8089, 19000, 2888 and 29000;
7. launch `com.t4game/j2ab.android.app.J2ABMIDletActivity`.

Every new bootstrap test therefore starts with fresh in-memory server state and cannot accidentally reuse an older Tru Than server process.

Do not run OCR/vision bootstrap diagnosis against a client that was launched without these prerequisites.

## IN_GAME proof

Bootstrap is considered successful only when all of the following are true:

- foreground package is `com.t4game`;
- local game connection is active;
- server runtime state reports a concrete scene id;
- player x/y are present;
- the state is fresh enough to belong to the current run.

For the current local server, reaching the normal scene-ready flow should also correlate with the already known login/join pipeline, but server-side support alone is not proof of agent-side bootstrap automation.

## Safe implementation rule

During bootstrap calibration:

- do not modify/rebuild/sign/reinstall the APK;
- do not clear app data;
- do not implement movement;
- do not implement NPC interaction;
- do not invent UI coordinates;
- do not claim PASS from a screenshot alone.

## Deliverable

The final reusable entry point should eventually be:

```
py tools\truthan_enter_game.py
```

and return machine-readable output such as:

```json
{
  "ok": true,
  "state": "IN_GAME",
  "scene_id": 9068,
  "player": {"x": 180, "y": 230}
}
```

The exact implementation must be based on captured real-client startup screens and transitions, not on this document.
