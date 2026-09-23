# AI Rules — Tru Than RE

## Hard rules

1. Never invent protocol fields.
2. Never invent object IDs, NPC IDs, mob IDs, map IDs, quest IDs, or asset mappings.
3. Every important protocol conclusion must be tied to concrete evidence.
4. Decompiled JADX Java is for analysis, not assumed-buildable source.
5. Preserve all VERIFIED login/world/movement behavior unless the current task explicitly requires changing it.
6. Keep server code suitable for eventual multiplayer/online use.
7. Do not silently replace a known-good packet with a guessed one.
8. Do not mark anything VERIFIED until the client test confirms it.
9. Keep packet captures, source snapshot, Git diff, Logcat, and screenshot together per test run.
10. When evidence conflicts, record the conflict instead of choosing a convenient interpretation.

11. Web research is permitted when useful, but web claims remain supporting evidence until confirmed against this project's client/code/packets/assets/runtime.
12. When web research contributes a useful lead, record the source and mark it as `WEB` or `CANDIDATE` until locally verified.

## Status vocabulary

Use only these labels:

- `VERIFIED` — confirmed by code/data plus successful client behavior or packet evidence.
- `PARTIAL` — some structure/meaning is known, but important fields or behavior remain unresolved.
- `CANDIDATE` — evidence suggests a possibility but it is not confirmed.
- `UNKNOWN` — no reliable conclusion yet.
- `REJECTED` — previously tried/assumed and later proven wrong.

## Preferred work style

For each reverse-engineering task:

1. identify the exact client reader/handler;
2. extract field read order and types;
3. compare against captured packets;
4. locate related assets/data;
5. implement the smallest possible server change;
6. test on client;
7. document only what the test proved.

## GPT-20B handoff rules (standing user instruction)

These rules apply to GPT-20B tasks handed off by Codex in this project:

1. Codex writes task prompts for GPT-20B in English. Keep exact Chinese UI text, code identifiers, and repository paths unchanged.
2. GPT-20B reads `docs/GPT20_HANDOFF.md` and the startup rules before working. If that file is absent locally, check the Git branch and fetch/pull the current branch safely; a failed read alone does not prove the file is absent from GitHub.
3. For JSON tool arguments on Windows, write paths entirely with forward slashes, for example `C:/Users/Mech/Desktop/BLRM/docs/research/NPC_INTERACTION_HANDOFF.md`. Do not mix separators or place a single unescaped backslash in JSON. Use `cmd /c 99_agent_handoff.bat` and `cmd /c 99_gpt20_publish.bat` from the repository root.
4. A parse error, failed tool call, or unverified write means the operation failed. Re-read each changed file and inspect `git diff` and `git status --short` before claiming completion. Report tests exactly as run; server-side code alone does not verify client-side NPC interactions.
5. At the end of each handed-off task, write an accurate UTF-8 `loggpt/_current.md` with actual changed files, commands, evidence level, and blockers. Check `git status --short` before publication; remove only temporary files created by this session, and stop/report unexpected files instead of silently publishing them. Run the handoff BAT, then the publisher BAT. Success requires `PUSH_OK`; otherwise report `PUBLISH_FAILED` and the concrete error.
6. The user has explicitly authorized commit/push for this GPT-20B handoff workflow. This permission does not apply to unrelated tasks, and a task-specific instruction to skip publication takes precedence. See `docs/GPT20_HANDOFF.md` for the log/publisher contract.
7. Every commit authored by GPT-20B for this workflow must have a message beginning `gpt20:`. Use `99_gpt20_publish.bat` for the final commit and push; it creates `gpt20: publish session <UTC>`. Do not push unnamed or differently named GPT-20B commits. If an intermediate commit is explicitly necessary, use `git commit -m "gpt20: <specific change>"` and still finish through the publisher.
