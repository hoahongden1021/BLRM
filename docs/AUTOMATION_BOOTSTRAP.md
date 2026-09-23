# Android agent bootstrap automation

Status: **NOT VERIFIED**

This phase must pass before navigation or NPC interaction automation is attempted.

## Goal

From an arbitrary normal client startup state, the local Android agent must be able to:

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
  - `launch`
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

The runtime-state file can prove that the game session reached the world, but it cannot by itself identify or operate pre-game UI screens.

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
