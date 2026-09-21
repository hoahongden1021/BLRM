# Test Workflow

## Standard test

For the single NPC rendering/selection diagnostic, run `02_test_npc_probe.bat`.
It calls `01_test_capture.bat` with one labeled TEST OBJ1014 in scene9068.
Normal `01_test_capture.bat` keeps entity population OFF. Neither mode implements
original tutorial quests. Before a new run stop old server processes; window-title
cleanup can miss Python processes when using Windows Terminal. Never validate
a changed source using a client connected to an older server.

The capture script now preserves earlier debug folders/ZIPs. It clears only
working packet logs, so finish the current capture before starting another.

After an AI/code change:

1. run `01_test_capture.bat`;
2. reproduce exactly one target behavior/bug if possible;
3. return to the BAT window;
4. press Enter;
5. add a short human observation;
6. use the generated debug ZIP as the only evidence for that run.

## Why one ZIP

A valid debug bundle should tie together:

- exact source revision
- Git diff/status
- packet logs
- Logcat
- server console
- screenshot
- device/APK metadata
- human observation

This prevents cross-contamination between old logs and new code.

## Debug analysis rule

When diagnosing:

1. read `USER_OBSERVATION.txt`;
2. read `run_info.txt`;
3. inspect Git diff/status;
4. inspect server console;
5. inspect packet logs in chronological order;
6. inspect focused Logcat;
7. inspect full Logcat if needed;
8. compare screenshot with packet timing;
9. only then change code.
