# Tru Than UI Controller

The controller operates the current Android client through the repository's ADB bridge and RapidOCR. It stores a JSONL trace and masked screenshots under `runtime/agent/ui_control/`.

## Commands

```powershell
py tools\truthan_ui_control.py status
py tools\truthan_ui_control.py bootstrap
py tools\truthan_ui_control.py bootstrap --restart-client
py tools\truthan_ui_control.py bootstrap --fresh
py tools\truthan_ui_control.py bootstrap --name CodexU
py tools\truthan_ui_control.py bootstrap --adb-only
py tools\truthan_ui_control.py move --duration-ms 700
```

- `status` captures the current screen and returns the OCR state, sanitized server packet headers, and runtime player/map state. Run `bootstrap` first when there is no matching session record.
- `bootstrap` resumes the saved current session. It uses already-saved game credentials and never enters account values. `--restart-client` restarts only `com.t4game` while keeping the current server process and its in-memory roles. If no matching runtime session exists, bootstrap uses the required fresh-launch procedure.
- `bootstrap --adb-only` uses ordinary ADB screenshots plus RapidOCR at each observed transition. It avoids waiting for the screen watcher and retains the same screenshot freshness, foreground, dimension, and post-action observation checks. It does not change runtime/session ownership.
- `--fresh` explicitly starts a fresh local server and app. The local server stores roles in memory, so a fresh server can reset them. The controller will not create unless it sees packet role count zero, all four empty role slots, no Enter Game button, and no previous creation record. A visible Enter Game control takes precedence over a stale/missing packet count and selects the existing role.
- `--name` is used only after the UI and packet evidence agree that the role list is empty. It accepts 1-6 ASCII letters/digits beginning with a letter. Input values are redacted from saved traces.
- `move` holds the currently matched D-pad down control for 100-1000 ms (default 600). It requires a current verified world HUD and connection, then reports verified before/after position. It returns failure if cmd133 does not confirm a changed position.

The controller waits five seconds after state-changing taps, observes a new screenshot, and allows no more than two attempts per state. It does not infer a successful action from ADB's return code. Credentials, player names, unknown OCR text, and raw packet payloads are excluded from durable traces.

See [the observed operation method](research/UI_CONTROL_EXPLANATION.md) and [the sanitized run trace](research/UI_CONTROL_TRACE.json).
