Tru Than RE test workflow
=========================

Put these two files in the PROJECT ROOT:

  00_setup_env.bat
  01_test_capture.bat

Recommended layout:

  TruThan_RE\
    00_setup_env.bat
    01_test_capture.bat
    PROJECT_STATE.md
    AI_RULES.md
    server\
      truthan_local_server_v026.py
      truthan_packet_logs\
    debug_runs\

NORMAL USE
----------
After ChatGPT/Gemma finishes a change:

1. Double-click:
     01_test_capture.bat

2. It will:
   - delete old debug/packet logs
   - clear Android logcat
   - reset adb reverse
   - start the current server
   - launch com.t4game

3. Reproduce the bug.

4. Return to the BAT window and press Enter.

5. It creates:
     debug_runs\TruThan_debug_YYYYMMDD_HHMMSS.zip

6. Upload only that ZIP for diagnosis.

NOTES
-----
- 00_setup_env.bat auto-detects ADB, Python, Git and the newest
  truthan_local_server_v*.py.
- If server\main.py exists later, it takes priority.
- Current server packet logs are expected in:
    <server folder>\truthan_packet_logs
- Python is forced to UTF-8/unbuffered mode so Chinese text and diagnostics
  are preserved as well as possible.
