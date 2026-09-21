# TruThan GUI / Vision Tool Rules

This repository has a local GUI bridge at:

`python tools/truthan_gui.py ...`

It exists because TruThan renders its game UI inside a custom Android `View`; `uiautomator` cannot see the in-game controls. GPT-OSS is the main coding/execution agent. Qwen3-VL is only the visual sensor.

## Mandatory interaction workflow

Before interacting with the emulator:

```powershell
python tools/truthan_gui.py status
```

If TruThan is not foreground:

```powershell
python tools/truthan_gui.py launch
```

To understand the current screen, NEVER guess from logs or old screenshots. Run:

```powershell
python tools/truthan_gui.py observe
```

The command:
1. takes a fresh ADB screenshot,
2. sends it to local `qwen3-vl:8b`,
3. returns structured JSON describing visible text and controls.

To locate a control without clicking:

```powershell
python tools/truthan_gui.py locate "确定"
```

To visually locate and safely click a control:

```powershell
python tools/truthan_gui.py click "确定"
```

`click` takes a fresh screenshot, asks Qwen3-VL for the target location, checks confidence, taps it, waits, then observes the resulting screen again.

## Login / navigation behavior

When asked to open/login/test TruThan:

1. Run `status`.
2. Run `launch` if needed.
3. Run `observe`.
4. Read the returned `vision.screen_summary`, `visible_text`, `dialog`, and `interactive_elements`.
5. Choose the next visible control needed for the requested goal.
6. Prefer `click "<visible label or precise description>"` over raw coordinates.
7. After every state-changing click, inspect the returned `after` observation before continuing.
8. Repeat until the requested screen/state is reached.

If a reconnect dialog is visible, it is normally safe to click the visible reconnect/confirm button (for example `确定`) when reconnecting is necessary to continue the requested test.

If login credentials are already saved in the game, use visible controls to continue. If a username/password must be entered and the value has not been explicitly supplied in the current task/environment, DO NOT invent or search for credentials. Ask the user.

## Raw input commands

Only use raw coordinates when visual target matching cannot work:

```powershell
python tools/truthan_gui.py tap 123 456
```

Normalized coordinates (0..1000 relative to a fresh screenshot):

```powershell
python tools/truthan_gui.py tapn 500 500
```

Text input into the currently focused Android field:

```powershell
python tools/truthan_gui.py text "example"
```

Android Back:

```powershell
python tools/truthan_gui.py back
```

Fresh screenshot only:

```powershell
python tools/truthan_gui.py shot
```

## Safety / accuracy

- Never claim a button was clicked successfully without checking the resulting screen.
- Never infer game UI from `uiautomator`; it only sees the outer custom View in this game.
- Never use a stale screenshot when the UI may have changed.
- `click` has a confidence gate. If it returns `clicked: false`, inspect with `observe` instead of forcing random coordinates.
- Destructive/payment-like targets are blocked unless `--force` is explicitly used.
- Do not use `--force` unless the user explicitly asked for that destructive action.
- Qwen3-VL is a sensor, not the authority on reverse-engineering facts. Vision observations are evidence about the visible screen only.
- Keep the existing project verification rules: do not claim PASS/VERIFIED without real command/test evidence.
