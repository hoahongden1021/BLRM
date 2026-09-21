# Session Handoff

Use this when an AI chat/session is near its context limit.

## Before ending a session

The agent must:

1. update `PROJECT_STATE.md`;
2. update any relevant docs;
3. clearly separate VERIFIED vs PARTIAL vs UNKNOWN;
4. record failed/rejected hypotheses;
5. record the exact unfinished task;
6. inspect `git status`;
7. inspect `git diff`;
8. make or recommend a checkpoint commit if appropriate.

## New session prompt

Use:

> Continue the Tru Than project. Read `AGENTS.md` and follow its startup procedure. Treat the repository as the authoritative project memory. Read `PROJECT_STATE.md`, relevant `docs/`, Git status/history, and current source before changing anything. Continue from the unfinished task. Do not guess protocol or IDs.

