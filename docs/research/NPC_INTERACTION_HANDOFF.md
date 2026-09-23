# NPC Interaction Hand‑off

## Current Server‑Side Implementation (v0.26)

| Client action | Conditional state | Server command | Server handler | Response | Evidence level |
|---|---|---|---|---|---|
| **Player selects an NPC** (sprite inside view radius and `can_select==1`) | NPC visible and `SINGLE_NPC_PROBE==true` | `cmd=120` _(NpcFunctionListRequest)_ | `handle()` → `npc_function_list_body()` | `cmd=120` reply: greeting string + optional function record (`flag=0`, `function=7`, label="Noi chuyen") | `UNKNOWN` |
| **Player clicks the “Talk” (function id 7)** | Same as above | `cmd=73` _(NpcTalkRequest)_ | `handle()` → `npc_talk_body()` | `cmd=73` reply: two string pairs (title + body); if not available reply is `bytes([1])` (empty status). | `UNKNOWN` |
| **Other functions** | Not implemented | – | – | – | `UNKNOWN` |

## Client–Server Interaction Flow
1. **NPC selection** – Client detects an NPC sprite meeting `can_select==1` via `GameWorld.isNpcInUserView` (smali `GameWorld.smali`, lines around 7300). No packet is sent.
2. **Request function list** – Client sends `cmd=120` with the NPC spriteId (`getId()` from `npc` object). No public documentation; the packet body consists of 4‑byte spriteId only (smali `GameScreen.sendNpcFunctionList` near line 250‑260).
3. **Server reply** – `handle()` builds body with `npc_function_list_body` (server code lines 845‑856). Fields: greeting string, 4 empty quest groups, and optional function record (flag, function id, label).
4. **Client receives** – Reads greeting via `GameWorld.receiveNpcFunctionList` (smali `GameScreen.smali`, lines 1400‑1420). Parses function records; stores them in `npcFunctionMenu`, `npcFunctionMenuFlagList`, `npcFunctionMenuIdList`.
5. **Player selects a function** – UI button triggers `DianHua.chooseFunction(i)`.
6. **Talk request** – Client sends `cmd=73` with the NPC spriteId (smali `DianHua.onFunctionSelect` around line 400‑410).
7. **Server reply** – `handle()` builds body with `npc_talk_body` (lines 860‑864). Body: status byte 0, count, then a pair of strings per topic.
8. **Client receives** – Parses via `GameWorld.receiveNpcTalk` (smali `GameScreen.smali`, lines 1500‑1520). Displays topics in a dialogue window.

## Evidence Status
- **Server-side**: All handler logic is present in `truthan_local_server_v026.py` lines 845‑864, 860‑864. `UNKNOWN` for client‑side packet format because no captured packets exist.
- **Client-side**: No packet captures; smali extraction provides only method names/field access—no confirmation of byte ordering or offsets.
- **Next test**: Capture a real client session selecting the diagnostic NPC and record `cmd=120` and `cmd=73` exchanges to confirm payload structure.

## Recommended Smallest Server Change
Add validation in `handle()` for `cmd=120` and `cmd=73` that rejects out‑of‑range spriteIds and logs unexpected function indices. This is a non‑invasive patch and can be tested with existing diagnostic probe.

## Documentation updates
- Remove any `VERIFIED` tags that are unsupported.
- Add a reference table row for the conversation flow.
- Ensure `docs/PROTOCOL.md` lists `cmd=120` and `cmd=73` with the field description derived from server code.

---

*Prepared by OpenCode Agent – 2026‑09‑26.*