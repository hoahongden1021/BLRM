# Screen watcher repair and emulator evidence — 2026-09-25

## Result

The watcher now starts detached from its invoking PowerShell, continues H.264 frame decode independently of RapidOCR, reports frame and OCR freshness separately, and reconnects after a closed stream with at most three retries. The UI controller can request a post-request watcher OCR frame, checks screenshot and device dimensions before coordinate mapping, rejects stale watcher observations before taps, and falls back to its existing fresh ADB screenshot/OCR route when the watcher is unavailable. The verified bootstrap and movement paths were not replaced.

This is evidence for the tested Windows host, Android 15 emulator, scrcpy 4.1, 1920-pixel stream, 30 FPS capture, and 960-pixel OCR input. OCR freshness remains slower and separate from frame freshness; no claim is made that every OCR result is real-time.

## Prior failures and correction

- Earlier watcher records in `docs/AUTOMATION_BOOTSTRAP.md` describe the device encoder closing its socket and an older worker ending when its associated console closed. Those are historical failures. Start now uses a detached, no-window worker with closed stdin and independent logs.
- A deliberate stream interruption killed the device scrcpy server (PID 4821). The worker reported `scrcpy server exited with code 143`, logged reconnect attempt 1, reconnected, and advanced the frame ID from 230 to 357. The bounded retry limit is three.
- During the first post-thread-cap soak, a transient `PermissionError: [WinError 5] Access is denied` replacing `status.json` was incorrectly treated as a stream failure. The worker recovered, but unnecessarily reconnected. `_atomic_json` now uses a PID/thread-specific temporary file and retries `os.replace` five times with short backoff. The following 10-minute soak had no status errors and no reconnects.
- The first sampler launch was rejected by PowerShell's script execution policy. The same local sampler then ran successfully with process-scoped `-ExecutionPolicy Bypass`; no machine policy was changed.

## Timeline and commands

Times below are UTC unless marked JST.

- 10:05:10–10:15:22: first 10-minute post-thread-cap soak; 21 samples. Frame IDs advanced 692→8620. Frame age peaked at 316.4 ms; OCR age was reported separately and peaked at 1596.7 ms. Process thread count was 50–56 and private memory 622.8–723.4 MB. One `status.json` replacement lock caused the unnecessary reconnect described above.
- 10:06:42: the status replacement `PermissionError` was recorded in `runtime/agent/screen_watch/watcher.log`; stream decoding resumed after one reconnect.
- 10:15 JST: `py tools\truthan_screen_watch.py stop` stopped the first worker cleanly. `py tools\truthan_gui.py launch` then made a fresh emulator runtime (server PID 14976; all five reverse ports present; `com.t4game` launched).
- 10:15 JST: direct `py tools\truthan_screen_watch.py start` returned to the same PowerShell in 4.41 seconds. `py tools\truthan_screen_watch.py status --brief` showed `running`, advancing frame IDs, and `LOGIN_OR_ENTRY / START_MENU`.
- Parent-shell check from the preceding run: a child PowerShell invoked `py tools\truthan_screen_watch.py start`, returned and exited in 7.68 seconds; the detached worker remained alive with no visible window (`MainWindowHandle=0`).
- 10:16 JST: `py tools\truthan_ui_control.py observe --source watcher` made a safe observation without tapping. It reported `START_MENU`, frame 465, frame age 169.8 ms, OCR age 7.7 ms, device/screenshot dimensions 2992×1344, and a 2317.1 ms request-to-fresh-OCR wait. End-to-end command time was 6.146 seconds.
- 10:16 JST: `py tools\truthan_ui_control.py observe --source adb` independently captured and OCRed a fresh ADB screenshot in 7.082 seconds. It also reported `START_MENU`, the same 2992×1344 dimensions, and the same visible `开始游戏`, `修复游戏`, and `退出游戏` labels. The watcher-derived controls were not tapped.
- 10:18:26–10:28:37: final sampler ran for 611.2 seconds with 21 samples. Command: `powershell.exe -NoProfile -ExecutionPolicy Bypass -File runtime\agent\screen_watch\soak_final.ps1`. It wrote timestamped raw samples to `docs/research/SCREEN_WATCH_SOAK_20260925.json` and a one-page summary to `docs/research/SCREEN_WATCH_SOAK_20260925_summary.json`.
- Final soak summary: all 21 samples were `running`; frame ID advanced 1779→9708 (at least 382 frames per 30-second interval); maximum frame age 301.4 ms. OCR age was separately 51.8–3460.5 ms. CPU use increased by 340.2 process-seconds total, with a maximum 26.6 seconds in one interval. Threads stayed 50–54. Private memory ranged 626.0–728.3 MB (728.3 MB first, 659.5 MB last). No errors or reconnects occurred.
- Focused checks: `py -m py_compile tools\truthan_screen_watch.py tools\truthan_ui_control.py tests\test_truthan_ui_control.py` succeeded; `py -m unittest tests.test_truthan_ui_control -v` passed all 11 tests, including stale-frame and dimension-mismatch tap refusals.
- Final `py tools\truthan_screen_watch.py stop` stopped worker PID 23692 without force and removed no stray scrcpy server.

## Interpretation and limits

The 10-minute run establishes continuous frame progression, current frame timestamps, separate honest OCR age, and bounded observed CPU/thread/memory use for this emulator configuration. The OCR age peak of 3.46 seconds is materially slower than frame capture. `observe` measured request-to-fresh-OCR separately, and UI actions refuse watcher OCR older than 1.5 seconds or frames older than 1 second. Device-size checks also run before mapping and again before input. These guards protect taps but can block an action when OCR is slow; callers can obtain another observation or use the ADB fallback.

The interrupted-stream test passed before the atomic status-write correction; the correction does not change stream handling. The final post-correction soak showed no reconnects or status-write failures. The watcher was stopped after evidence collection.
