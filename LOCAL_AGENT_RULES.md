# Local Agent Execution Rules

These rules apply to local AI agents working inside this repository.

They exist to prevent tool misuse, unsupported assumptions, scope drift,
accidental edits, and false claims about command/file operations.

---

## 1. Startup requirements

Before doing substantial work:

- Read AGENTS.md
- Read AI_RULES.md
- Read LOCAL_AGENT_RULES.md
- Read PROJECT_STATE.md when the task concerns Tru Than implementation/state
- Read only the task-relevant docs/source files

Do not assume previous chat context is correct if repository evidence differs.

Repository files and current tool results override previous summaries.

---

## 2. Evidence hierarchy

For Tru Than reverse engineering, use this priority:

1. Tru Than classes.dex / JADX reader
2. Tru Than smali
3. Real packet captures
4. APK assets/data
5. Real Android runtime / Logcat / screenshots
6. Current verified server behavior
7. Long Tinh source as architectural reference
8. Web research

Long Tinh MUST NOT be treated as Tru Than protocol truth.

Never copy from Long Tinh as Tru Than truth:

- opcodes
- packet framing
- packet field order/types
- entity IDs
- object/template IDs
- image/animation IDs
- map IDs
- coordinates
- quest/skill/item IDs
- gameplay constants
- database schema

---

## 3. No guessing

Never fill missing evidence with:

- "standard MMO architecture"
- "likely"
- "probably"
- "should work like"
- "implied by typical systems"

unless clearly labeled as INTERPRETATION or CANDIDATE.

If source evidence is missing, write:

UNKNOWN

Do not convert an inference into direct evidence.

Do not promote:

UNKNOWN -> CANDIDATE
CANDIDATE -> PARTIAL
PARTIAL -> VERIFIED

without new evidence satisfying the project rules.

---

## 4. Tool path rules

When a tool requires absolutePath or an absolute directory:

ALWAYS use the complete absolute path.

Project root:

C:/Users/Mech/Desktop/BLRM

Example:

CORRECT:
C:/Users/Mech/Desktop/BLRM/reference/LongTinh/server/src/map/hero/map/Map.java

WRONG:
reference/LongTinh/server/src/map/hero/map/Map.java

WRONG:
C:/Users/Mech/Desktop/BLRM/reference/LongTinh/server/src/map/Map.java

If find_files/search returns a path, COPY THAT EXACT RETURNED PATH into the next read call.

Do not shorten or reconstruct a discovered path from memory.

---

## 5. Tool success rules

Never claim a command, read, search, test, or file write succeeded unless the tool response confirms success.

Examples of failure:

- File not found
- could not create file
- tool not found
- serialization error
- non-zero exit code
- timeout

A failed operation is not evidence.

If a tool operation fails:

1. inspect the error
2. correct the concrete cause once
3. retry once if the correction is clear
4. if it still fails, stop that operation and report the blocker

Do NOT enter repetitive speculative retry loops.

---

## 6. Search before assuming a file is missing

If a requested file is not found at an assumed path:

- do NOT conclude that the source is unavailable
- search within the allowed directory
- use the exact path returned by the search
- then read that exact file

If the search finds the file, the earlier File not found result was only a bad path.

---

## 7. Large-file discipline

Do not blindly read huge files in full unless necessary.

For large source files:

1. find/search for relevant symbols
2. read the relevant methods
3. expand surrounding lines only when needed

Example symbols:

- create
- add
- remove
- spawn
- refresh
- destroy
- respawn
- broadcast
- getNpcList
- getMonsterList
- getPlayerList

Avoid loading unrelated systems into context.

---

## 8. Scope discipline

Perform ONLY the current requested task.

Do NOT automatically move to:

- BAT fixes
- runtime tests
- server implementation
- unrelated refactors
- Android build changes
- quest work
- combat work

unless the user explicitly requested them.

When the requested task is finished:

STOP.

Do not invent a "next logical step" and execute it automatically.

You may report a suggested next step, but do not perform it without instruction.

---

## 9. Edit discipline

Before editing:

- confirm the task explicitly permits edits
- confirm the exact file(s) permitted to change

If the task says "do not edit", make zero file modifications.

If the task permits only one output file, modify only that file.

Do not modify:

- PROJECT_STATE.md
- AI_RULES.md
- AGENTS.md
- server code
- BAT scripts

unless explicitly requested by the current task.

Never auto-commit or auto-push Git changes.

---

## 10. File writing rules

When write_file requires absolutePath, use a complete absolute path.

Example:

C:/Users/Mech/Desktop/BLRM/docs/research/LONGTINH_ARCHITECTURE_FINDINGS.md

Do not use:

docs/research/LONGTINH_ARCHITECTURE_FINDINGS.md

After writing a file, verify the tool response indicates success.

Do not say a document was saved if write_file failed.

---

## 11. Source citation inside research notes

For every important architecture conclusion, record:

- exact source file
- exact class
- exact method
- relevant observed behavior

Example:

DIRECT EVIDENCE:
Npc.java
Npc.gotoMap(Map)

Observed:
- removes NPC from previous map's npcList
- calls live(_map)
- adds NPC to new map's npcList
- broadcasts NpcRefreshNotify

Do not write broad architecture claims without source support.

---

## 12. Direct evidence vs interpretation

Research reports must distinguish:

DIRECT SOURCE EVIDENCE

from:

ARCHITECTURAL INTERPRETATION

from:

POSSIBLE TRU THAN REUSE

A statement appearing under DIRECT SOURCE EVIDENCE must be directly supported by inspected source/tool output.

No inferred claims are allowed in that section.

---

## 13. Long Tinh architecture work

For Long Tinh analysis:

Use the source to understand concepts such as:

- entity lifecycle
- map ownership
- template/runtime separation
- runtime entity IDs
- spawn/despawn
- broadcast
- movement
- AI
- respawn
- interactions
- quests
- combat
- persistence

But never assume those implementations or protocols exist identically in Tru Than.

Every proposed Tru Than reuse must be labeled:

VERIFIED
PARTIAL
CANDIDATE
UNKNOWN

according to Tru Than evidence, not Long Tinh evidence.

---

## 14. Tru Than implementation safety

Do not rewrite known-good protocol behavior merely to improve architecture.

Preserve verified behavior including:

- login
- role list
- role creation
- JOIN_GAME
- scene loading
- ENTER_SCENE_READY
- current movement behavior
- current resource handling that is already proven
- verified minimal cmd132 diagnostic GNPC behavior

Refactoring must preserve observable behavior unless the task explicitly targets that behavior.

---

## 15. Runtime verification

### Mandatory fresh runtime preflight

Before any task that reads, tests, or automates the live Tru Than client/server runtime, run:

`py tools\truthan_gui.py launch`

Do this at the start of the runtime test even when a previous server/game instance exists.

Expected behavior:
1. stop an old repository Tru Than Python server if present;
2. start the current local server fresh;
3. recreate required ADB reverse rules;
4. force-stop an existing `com.t4game` client if present;
5. launch the client fresh.

After launch, verify the command result before continuing. Do not replace this with an instruction such as "keep the current game/server running". Do not OCR or automate whatever happens to be on screen without this preflight.

Exception: source-only/static analysis tasks that do not use the live emulator/server.

Static source analysis alone does NOT make runtime behavior VERIFIED.

Use VERIFIED only when the project's evidence rules are satisfied.

Examples:

DEX/smali schema only:
PARTIAL

Synthetic packet designed but not sent:
PARTIAL or CANDIDATE

Client successfully consumes packet with captured evidence:
may become VERIFIED for that exact tested behavior

Never generalize a narrow successful probe into full protocol verification.

---

## 16. Handling contradictions

If two project files conflict:

Do not silently choose one.

Report:

CONFLICT

Then identify:

- source A
- source B
- stronger evidence
- whether the contradiction can be resolved from current source/runtime evidence

Example:
an old note saying a test FAILED does not automatically invalidate a later clean VERIFIED capture.

---

## 17. No hallucinated continuation

Never fabricate:

- a new user request
- Android modules
- XML requirements
- Gradle changes
- project goals
- files
- previous commands
- tool results

If context becomes unclear, stop and reread the task/repository rules.

Do not continue based on hallucinated conversation text.

---

## 18. Final check before responding

Before giving the final answer, verify:

- Did I stay inside task scope?
- Did every claimed tool operation actually succeed?
- Did I use exact discovered paths?
- Did I distinguish evidence from inference?
- Did I invent any missing values?
- Did I accidentally promote a status?
- Did I modify only permitted files?
- Did I stop instead of performing unrelated next steps?

## Failed search is not absence evidence

If a search/read command fails because of an invalid path, tool error, timeout,
serialization failure, or any other execution problem:

- NEVER conclude that the target file/symbol/call site does not exist.
- Mark the operation itself as FAILED.
- Fix the concrete tool/path error first.
- Only conclude "not found" after a successful search over the intended scope.
If any answer is no, correct it before responding.