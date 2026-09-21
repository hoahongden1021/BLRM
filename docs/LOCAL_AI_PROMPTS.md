# Local Agent Prompts

## Start / resume
Read the root AGENTS.md and continue from PROJECT_STATE.md. Inspect git status/log and the current server before editing. Use tools directly when action is required. Do not guess Tru Than protocol. Long Tinh is reference architecture only.

## Verify local tool access
Do not explain first. Use the shell tool now and run:
cmd /c .\03_local_agent_smoke_test.bat
Read the output and report only concrete failures.

## Analyze latest test
Analyze the newest debug run under debug_runs. Use all evidence in that run and make the smallest safe fix. Do not modify VERIFIED subsystems unless required. Verify syntax and git diff. Stop and tell me exactly what to retest.

## Current NPC research
Use reference/LongTinh only as architecture reference. Compare its NPC/entity lifecycle with the actual Tru Than cmd=9 and cmd=132 handlers. Trace runtime IDs, entity lookup/create/update, sprite appearance initialization and map membership in Tru Than. Do not copy Long Tinh opcodes/layouts/IDs. Research first; do not spawn until the Tru Than schema is sufficiently supported.
