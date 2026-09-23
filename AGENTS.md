# Tru Than / 诛神OL Android 1.17 — Agent Instructions

This repository is a reverse-engineering and server-emulation project for the Android 1.17 client of Tru Thần / 诛神OL.

## Mandatory local-agent rules

Before performing repository work, read and obey:

- AI_RULES.md
- LOCAL_AGENT_RULES.md
- PROJECT_STATE.md when relevant

LOCAL_AGENT_RULES.md governs tool usage, scope discipline, path handling,
file writes, retries, evidence reporting, and prevention of unsupported assumptions.

## Mandatory startup procedure

At the beginning of EVERY new AI/agent session:

1. Read this `AGENTS.md`.
2. Read `PROJECT_STATE.md`.
3. Read `AI_RULES.md`.
4. Read the files under `docs/` that relate to the current task.
5. Inspect `git status`.
6. Inspect recent Git history (`git log --oneline -10`).
7. Locate and inspect the current server implementation.
8. Do not modify anything until the current verified state is understood.

The repository, not chat history, is the authoritative project memory.

## Evidence policy

Do **not** guess:

- packet layouts
- command semantics
- field sizes/order
- map IDs
- NPC IDs
- mob IDs
- objectDataId / image IDs
- quest IDs
- spawn positions
- server gameplay rules

Evidence priority:

1. `classes.dex` / JADX output
2. smali
3. captured network packets
4. `.scn` / `.obj` / `.img` data
5. runtime behavior / Logcat
6. hypothesis only when explicitly marked as hypothesis

Never write a hypothesis as a verified fact.

## Web research policy

Web research is allowed and encouraged when it can materially help solve the current task, for example:

- searching for old Tru Thần / 诛神OL documentation, mirrors, forum posts, screenshots, server files, protocol notes, asset references, or archived resources;
- researching Android/Java/J2ME compatibility issues, stack traces, rendering bugs, networking behavior, emulator quirks, APKTool/JADX/smali behavior, or toolchain errors;
- looking up specifications or implementation details for libraries, protocols, file formats, or build tools.

However:

1. Web results are **supporting evidence**, not the primary source of truth for this project.
2. For game-specific protocol/entity/map/quest conclusions, prefer project evidence in this order:
   `classes.dex/JADX -> smali -> captured packets -> .scn/.obj/.img -> runtime/logcat -> web`.
3. Never replace a missing packet field, ID, offset, object mapping, or server rule with a web guess.
4. If a web source conflicts with the actual Android 1.17 client, the client evidence wins unless there is strong proof that the local client data is incomplete or modified.
5. Clearly label externally sourced information as `WEB` or `CANDIDATE` until it is confirmed against the project.
6. Save useful URLs, source titles, and what they support in `docs/RE_FINDINGS.md` so future sessions can re-check them.
7. Prefer primary/technical sources when available: official docs, source repositories, archived original forums/sites, code, protocol specs, and reproducible technical reports.
8. Do not spend time browsing generically when local code/logs already provide the answer. Use web research to fill a real evidence gap.


## Client source policy

JADX output is reference-only.

Do not assume JADX decompiled Java can be rebuilt directly.

Actual APK changes must be made against the apktool/smali/assets tree unless a real buildable Android source tree is later reconstructed.

## Server architecture policy

Do not evolve this project into a pile of one-off hardcoded packet hacks.

New work should progressively move toward reusable components:

- protocol reader/writer
- command handlers
- connection/session state
- accounts/characters
- world/map state
- player state
- NPC system
- mob system
- movement
- quests
- combat
- drops/items
- persistence
- multiplayer/AOI

Offline/local mode should use the same core world/server implementation that can later be exposed to multiple remote clients.

## Change safety

Before changing a VERIFIED subsystem:

1. inspect Git status;
2. make sure a restore point exists;
3. avoid changing unrelated working code;
4. keep the change minimal and evidence-driven.

Do not commit a subsystem as VERIFIED until it has been tested on the real client.

## Test workflow

After implementing a change, use:

`01_test_capture.bat`

The generated debug ZIP is the canonical test evidence for that run.

Do not diagnose an older log as though it belongs to the current source revision.

## Documentation update rule

Whenever a new fact is verified, update the relevant documentation:

- protocol -> `docs/PROTOCOL.md`
- maps/scenes -> `docs/MAPS.md`
- NPC/mob/assets -> `docs/ENTITIES.md`
- quests/tutorial -> `docs/QUESTS.md`
- general reverse-engineering findings -> `docs/RE_FINDINGS.md`
- current project milestone / unfinished work -> `PROJECT_STATE.md`

Before ending a long session or when context is getting full, update `PROJECT_STATE.md` and `docs/RE_FINDINGS.md` with the exact unfinished state.


# Android Studio Local AI + Long Tinh Reference

## Startup procedure

At the beginning of every new agent session:

1. Read `AI_RULES.md`.
2. Read `PROJECT_STATE.md`.
3. Read the relevant files under `docs/`.
4. Read `docs/LONGTINH_REFERENCE.md` when working on NPC, mob, map, combat, quest, item, session, or multiplayer systems.
5. Inspect `git status` and recent `git log` before editing.
6. Inspect the current Tru Than server source before making changes.

Do not rely on previous chat history as project memory. The repository is the authoritative project state.

## Long Tinh reference policy

The source under `reference/LongTinh/` belongs to a different game and is reference architecture only.

It MAY be used to understand:
- session/player lifecycle
- map/world architecture
- NPC and monster lifecycle
- runtime entity IDs
- entity identity/list versus appearance/refresh flow
- map broadcast and movement
- combat and skills
- monster AI, aggro, death and respawn
- quests
- items/inventory/equipment
- persistence/database
- multiplayer/AOI architecture

It MUST NOT be treated as Tru Than protocol truth.

Never copy from Long Tinh into Tru Than without independent Tru Than evidence:
- command/opcode numbers
- packet framing
- packet field order/types
- NPC/entity IDs
- map IDs
- image/animation IDs
- skill/quest/item IDs
- gameplay constants

Every Long Tinh analogy must remain REFERENCE or CANDIDATE until verified against Tru Than DEX/JADX, smali, packet captures, assets or runtime evidence.

Current priority:
Compare Long Tinh NPC/entity lifecycle with Tru Than `cmd=9` and `cmd=132`.

## Local agent execution policy

When an action is requested, use available tools directly instead of only saying what will be done.

The agent may:
- read project files
- inspect `reference/LongTinh/`
- run shell commands
- use Git
- use Python
- use ADB
- inspect emulator/device state
- inspect screenshots and Logcat
- edit project files when evidence supports the change

On Windows, use the project root as working directory.

For BAT files prefer:
`cmd /c .\script.bat`

Do not claim a tool or command succeeded unless the actual tool result proves it succeeded.

If a tool fails:
1. read the concrete error;
2. identify the cause;
3. make one evidence-based correction;
4. retry;
5. do not loop through speculative edits.

Do not auto-commit or auto-push unless explicitly requested.

Do not rewrite VERIFIED Tru Than systems unless the current evidence requires it.

## Evidence priority

For Tru Than-specific conclusions, prefer:

DEX/JADX -> smali -> packet capture -> assets -> runtime/Logcat -> Long Tinh reference -> web

Long Tinh is useful for architecture, not for proving Tru Than wire protocol.

## Automation phase gate

For local Android/game automation, follow this order and do not skip phases:

1. BOOTSTRAP: launch `com.t4game`, identify the current screen, handle reconnect/login, create a role only when no role exists, select an existing role when present, enter the game, and prove `IN_GAME` from runtime evidence.
2. STATE: expose scene/player/NPC state to the agent.
3. NAVIGATION: movement/pathing.
4. INTERACTION: NPC selection/dialogue/menu actions.
5. QUEST/COMBAT automation.

Do not implement or test NAVIGATION/INTERACTION automation until BOOTSTRAP has a real-client PASS.
Server-side login support is not the same as agent-side bootstrap automation.

## Mandatory final handoff

After every task:

1. Do not claim PASS/VERIFIED without real test evidence.
2. Before finishing, run:
   `99_agent_handoff.bat`
3. Return its complete output.
4. Then state:
   - Current blocker
   - Next recommended action

