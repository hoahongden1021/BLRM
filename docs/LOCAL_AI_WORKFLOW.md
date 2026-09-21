# Android Studio Local AI Workflow — Tru Than RE

This project is prepared for Android Studio Agent Mode using the built-in local Gemma 4 provider.

## Persistent context

Android Studio automatically supports project `AGENTS.md` instructions in current releases.

The root `AGENTS.md` imports:

- `AI_RULES.md`
- `PROJECT_STATE.md`

The agent should additionally inspect task-specific files under `docs/`.

This means a new local-agent chat does not need the whole historical chat pasted into it.

## Recommended operating mode

Use **Agent Mode**, not plain question/answer chat, for work that requires:

- reading many files
- shell commands
- Git
- ADB
- emulator/device inspection
- screenshots
- Logcat
- edits
- iterative fix/test loops

Use the largest local Gemma model that runs reliably on the machine. Smaller local models may understand the request yet fail to invoke tools consistently.

## Permissions

For a hands-on development workflow, allow the agent to:

- read/update project files
- run shell commands
- read Android SDK/JDK/tool directories
- use ADB and connected emulator/device tools
- inspect Logcat/screenshots

Sensitive credentials should remain separately protected.

If shell sandboxing is disabled, shell commands are not restricted by that sandbox. Review destructive commands carefully.

## Windows command rules

Project root should be the working directory.

Use:

`cmd /c .\script.bat`

when direct `.bat` execution is unreliable.

Canonical environment bootstrap:

`call 00_setup_env.bat`

Canonical manual evidence capture:

`01_test_capture.bat`

## Local-agent smoke test

Run:

`cmd /c .\03_local_agent_smoke_test.bat`

The smoke test checks:

- environment bootstrap
- Git access
- ADB access/device visibility
- Python access
- current server Python syntax
- ability to capture an emulator screenshot when a device is connected

If Gemma only says "I will run it" but no tool call appears, the task has not run.

## New-chat startup prompt

Use this short prompt:

> Read the root AGENTS.md and continue from PROJECT_STATE.md. Inspect git status/log and the current server before editing. Use tools directly when action is required. Do not guess Tru Than protocol. Long Tinh is reference architecture only.

## Debug/fix prompt

After a human test creates a new run:

> Analyze the newest debug run under debug_runs. Read the observation, packet logs, server console, focused/full Logcat, screenshot, source snapshot and git diff. Identify the evidence-backed cause and make the smallest safe fix. Do not modify VERIFIED subsystems unless required. Verify syntax/diff after editing. Do not mark the fix VERIFIED until I retest.

## Long Tinh comparison prompt

> Use reference/LongTinh only as architecture reference. Compare its NPC/entity lifecycle with the actual Tru Than cmd=9 and cmd=132 handlers. Trace shared runtime IDs, object creation, sprite/appearance initialization and map membership in the Tru Than client. Do not copy Long Tinh opcodes, packet layouts or numeric IDs. Update docs/LONGTINH_REFERENCE.md and relevant protocol/entity docs with evidence and status labels.

## Test loop

Preferred loop:

`agent research/fix -> human test -> 01_test_capture.bat -> agent reads newest run -> minimal fix -> human retest`

For workflows that Android Studio Agent Mode can safely automate, it may use device tools/ADB to inspect the running client, take screenshots, inspect Logcat and interact with the app. A successful local model tool call must be visible in the Agent transcript/tool activity.

## Context discipline for local models

To avoid overwhelming a local model:

- start from `PROJECT_STATE.md`;
- read only the relevant docs/source paths;
- use `docs/LONGTINH_REFERENCE.md` as the Long Tinh index;
- inspect Long Tinh implementation files on demand rather than loading the entire reference source into one prompt;
- use exact file/function searches;
- keep one task per agent chat when possible.

## Handoff

Before ending meaningful work:

- update `PROJECT_STATE.md`;
- update relevant docs;
- record exact unfinished work;
- inspect Git diff/status;
- do not auto-commit unless explicitly requested.
