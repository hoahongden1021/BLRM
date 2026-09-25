# Watcher to UI Controller Observation Fix

Date: 2026-09-25

## Change

Reviewed base commit `124f2d1`. The controller paired watcher OCR from one
video frame with a separate ADB screenshot and retained the video timestamp.
That pairing could disagree visually and fail the action freshness guard.

The watcher now persists the exact JPEG frame used by OCR, keyed by
`frame_id`, and can return those bytes alongside the matching OCR state. The
controller validates frame/image IDs, video-frame dimensions, and current
device dimensions, writes the frame bytes unchanged as the observation image,
and maps OCR boxes from video to device coordinates. It records image/frame
and OCR timestamps separately. A stale watcher result falls back to a new ADB
screenshot and OCR. Label taps also refresh and resolve the label again if
the observation expires before input. Freshness guards remain enabled.

## Focused checks

- `py -m py_compile tools\truthan_screen_watch.py tools\truthan_ui_control.py` — passed.
- `py -m unittest tests.test_truthan_ui_control` — 13 tests passed, including
  delayed watcher fallback and expiration during action preflight.
- Added `test_delayed_watcher_observation_falls_back_to_fresh_adb_ocr`: a
  delayed watcher frame/OCR result is rejected and `source=auto` requests new
  ADB OCR.

## Emulator run

Fresh runtime command: `py tools\truthan_gui.py launch` — passed; emulator was
`device`, local server restarted, ADB reverse rules recreated, and client
launched. Watcher command `py tools\truthan_screen_watch.py start` — passed
(PID 15428, scrcpy 4.1, device 2992x1344). A brief status sample reported
146 decoded frames, frame age 218 ms, OCR age 1345 ms, and OCR frame 123 while
the latest decoded frame was 146. The age gap is why the controller did not
use that OCR state for a tap.

The live controller harness ran `Controller.observe("watcher")`, required
`START_MENU`, selected the highest-screen `LABELS` target with confidence at
least 0.95, and invoked `tap_label` once. The first two harness attempts
refused before input with `Observation expired`; the traces show watcher
freshness fallback and then a stale ADB observation. No tap was sent in either
attempt. The demonstrated delays prompted moving packet/runtime evidence
collection ahead of ADB capture, saving watcher frame bytes without resize,
refreshing stale label observations, and checking freshness again immediately
before input. The third harness run issued the single tap documented below.

One safe UI action was issued from `START_MENU` using the controller's watcher
observation path. The watcher result failed the existing freshness check, so
the controller fell back to fresh ADB screenshot/OCR and re-resolved the
label. The chosen target was `开始游戏`, centered at device coordinate
`[2420, 578]` on a 2992x1344 screenshot. The action trace recorded return code
0. The following observation classified the screen as `ACCOUNT_LOGIN`.

Tap decision evidence (the actual action used fresh ADB fallback, so no video
frame ID was used for coordinates):

- Screenshot: `runtime/agent/ui_control/20260925T105344_691966Z/002.png`
- Screenshot timestamp: `1790333636.5408962` (Unix seconds)
- OCR timestamp: `1790333638.3260868` (Unix seconds)
- Frame ID: none; the watcher frame was rejected as stale before coordinates
  were selected.
- Decision: tap `开始游戏` at `[2420, 578]`; result: ADB input returned 0.
- Verification: `ACCOUNT_LOGIN` from the subsequent screenshot/OCR at
  `1790333648.351935` (image) and `1790333650.1790867` (OCR). The trace
  confirmed the transition about 10.1 seconds after the tap, including the
  controller's five-second post-action wait.

A later read-only comparison requested watcher-backed observation and then a
fresh ADB screenshot. Both classified `ACCOUNT_LOGIN`; because the watcher
frame again failed freshness, the observation source was ADB. This confirms
the fallback and screen agreement, but does not demonstrate a tap based on a
delivered video frame. No second emulator action was attempted.

The reported 6.146-second observation latency remains a material limitation:
the watcher state was not fresh enough to supply coordinates for this run.
This change keeps the safe ADB fallback and does not label that behavior
real-time. The 10-minute stability soak was not repeated.

## Actual run commands

```powershell
py tools\truthan_gui.py launch
py tools\truthan_screen_watch.py start
py tools\truthan_screen_watch.py status --brief
py -m py_compile tools\truthan_screen_watch.py tools\truthan_ui_control.py
py -m unittest tests.test_truthan_ui_control
```

The live action and screenshot comparison used inline `py -c` controller
harnesses importing `truthan_ui_control`; the action harness required
`START_MENU`, selected the highest-screen confident known control, called
`tap_label` once, and printed pre/post evidence. The 10-minute stability soak
was not repeated.
