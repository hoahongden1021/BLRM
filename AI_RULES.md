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
