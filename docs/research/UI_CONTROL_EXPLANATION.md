# Tru Than UI Controller: Observed Method

## Tools and screen reading

This session exposed no JetBrains-specific IDE automation tool. I used the local `functions.view_image` image viewer, the repository's ADB bridge (`tools/truthan_gui.py`), and local RapidOCR (`tools/truthan_rapidocr.py`). I only described a screen as visually inspected after opening its fresh PNG in `view_image`. `uiautomator` was not used because the game draws its controls inside a custom view.

The emulator capture size was 2992 x 1344. RapidOCR reported boxes in those native pixel coordinates, and `adb shell input tap` accepted the same coordinate space without scaling. I tapped the center of a fresh, exact OCR box. A tap was followed by a wait and a new capture; an unchanged screen consumed one retry. The controller caps each state at two attempts.

The login screen already had saved credentials. I did not type, inspect, or include those values in the trace. The second login tap caused the transition; the first left the account form visible. At the role list I saw four empty slots, so I created one character, once. The name field opened Android's text IME after a tap. I typed a six-character ASCII name through `adb shell input text`, checked the visible text, pressed the fresh OCR `DONE` box, then pressed the game's confirm and create controls. Saved screenshots and controller traces mask the character name.

## Entry and existing-role resume

A fresh server/app launch was performed using the required `py tools\\truthan_gui.py launch`. It restarted the local Python server, recreated all five ADB reverse rules, and launched `com.t4game`. The first complete run reached the world HUD and performed movement. Afterward I restarted only the client while keeping the same server PID, so the existing in-memory character remained. The controller found that role and entered it without creating another.

The first resume attempt deliberately stopped at the role list when the old connection log said zero roles while OCR showed a populated role row and an Enter Game button. That disagreement led to no create tap. After correction, the controller treated a visible Enter Game control as positive UI evidence for an existing role; it still creates only when the current packet count is zero, four empty slots are visible, no Enter Game control exists, and the creation ledger is clear. The successful resume issued no cmd16 creation request.

## Movement and verification

The manual movement used a stationary 700 ms touchscreen hold at the visually located lower D-pad arrow (587,1179). Before the action the runtime file showed scene 9068, player 100001 at (180,230). Afterward it showed (180,258), with `position_source=cmd133`; the player and scene IDs were unchanged and the runtime timestamp advanced.

The reusable `move` command repeats the same method from a fresh image. It template-matches `tools/ui_assets/dpad_down.png`, requires a match score of at least 0.85 in the observed lower-left control region, and holds at the template center. In the live controller run it found the arrow at (589,1172) with score 1.0000 and again verified (180,230) -> (180,258) from cmd133. It reports both observations and refuses to claim success when the runtime position does not change.

The first HUD OCR pass consistently read `聊天` and `画质`, while the smaller `社交`/`菜单` text could be below the 0.90 OCR confidence cutoff. I updated the classifier to accept the first two together, still requiring current connection packets and a fresh runtime state before setting `in_game=true`.

## TEST OBJ1014

The post-move client screenshot showed the map and player, but neither `TEST OBJ1014` nor `1014` was present in the live OCR or visual inspection. The server runtime state listed `npcs=[]`; that list covers entities this server sent through the cmd132 probe path only. The supported result is: TEST OBJ1014 was not visibly confirmed in this client run. This does not establish whether any object exists in an unrendered or unprobed map layer.

## Evidence files

- [Sanitized chronological trace](UI_CONTROL_TRACE.json)
- [Start menu](ui_control_images/run_20260925_01_start_menu.png)
- [Account form with fields masked](ui_control_images/run_20260925_02_account_login.png)
- [Existing role with personal name masked](ui_control_images/run_20260925_03_existing_role.png)
- [World HUD](ui_control_images/run_20260925_04_entered_world.png)
- [Before movement](ui_control_images/run_20260925_05_before_move.png)
- [After movement](ui_control_images/run_20260925_06_after_move.png)

The retained start/login/role screenshots are from the later same-server resume pass. The original first-run transient PNGs were overwritten during inspection; the trace marks this limitation. All retained UI-control PNGs were OCR-redacted before publication. Packet evidence in the trace consists only of timestamped frame headers and command numbers, never raw payload bytes.
