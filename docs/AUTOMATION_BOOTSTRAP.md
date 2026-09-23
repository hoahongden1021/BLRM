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

The runtime-state file can prove that the game session reached the world, but it cannot by itself identify or operate pre-game UI screens.

## Screenshot/runtime-file policy

Agent screenshots must not clutter the repository root.

- Runtime files live under `runtime/agent/` and are gitignored.
- Internal captures used by `observe`, `locate`, `click`, and normalized tapping are transient and are deleted automatically after the consumer finishes.
- The temporary device-side `/sdcard/__truthan_agent.png` transport file is deleted immediately after each pull.
- Explicit `shot` is the exception: it is a deliberate retained capture and defaults to `runtime/agent/screenshots/manual.png`.
- Old root-level `.agent_screen.png` / `.agent_vision.json` files from previous bridge versions are removed on the next fresh `launch`.

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
