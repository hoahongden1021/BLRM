# NPC Interaction Hand‑off

## Current Server‑Side Implementation (v0.26)

| Client action | Conditional state | Server command | Server handler | Response | Evidence level |
|---|---|---|---|---|---|
| **Player selects an NPC** (sprite inside view radius and `can_select==1`) | NPC visible and `SINGLE_NPC_PROBE==true` | `cmd=120` _(NpcFunctionListRequest)_ | `handle()` → `npc_function_list_body()` | `cmd=120` reply: greeting string + optional function record (`flag=0`, `function=7`, label="Noi chuyen") | `UNKNOWN`
| **Player clicks the “Talk” (function id 7)** | Same as above | `cmd=73` _(NpcTalkRequest)_ | `handle()` → `npc_talk_body()` | `cmd=73` reply: two string pairs (title + body); if not available reply is `bytes([1])` (empty status). | `UNKNOWN`
| **Other functions** | Not implemented | – | – | – | `UNKNOWN`.

## Why probe with `flags=[3]` does not trigger dialogue

## Missing evidence & next steps
* **Client‑side reading of the function list** – not observed in captured packets; need a real‑client capture to confirm the format.

## Suggested next actions

## Documentation updates
* `docs/ENTITIES.md` – leave `彩云仙子` as `UNKNOWN` (still no evidence).
* `docs/PROTOCOL.md` – add the `cmd=120`/`cmd=73` handling under **Command table** if not already listed.

## Project‑state status
The current state is **PARTIAL** for NPC interaction; only probe conversation logic is implemented. No real‑client dialogue has been proven.

---

*Prepared by OpenCode Agent – 2026‑09‑24.*