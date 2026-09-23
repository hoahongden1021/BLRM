# NPC interaction handoff

## Evidence boundary

The Android client has rendered and selected one synthetic GNPC in run112928
(`docs/ENTITIES.md`). That run did not capture a working NPC dialogue.
The original NPC identity, quest data, and dialogue behavior remain UNKNOWN.
This note describes what the current server **implements**, not a confirmed
client/server interaction.

## Current server code

Source: `server/truthan_local_server_v026.py` on the current branch.

| Path | Source location | Current behavior | Evidence status |
|---|---|---|---|
| Diagnostic spawn | `starter_probe_entities()`, `send_starter_probe_entities()` | `TRUTHAN_SINGLE_NPC_PROBE=1` creates synthetic `TEST OBJ1014`; the regular path leaves population off by default. The current source sets `flags=bytes([3])`. | Code inspection; run112928 verifies only the earlier minimal rendering/selection result, not dialogue or the current flag. |
| Request dispatch | `handle()`, branch `cmd in (NPC_FUNCTION_LIST, NPC_FUNCTION_TALK)` | `NPC_FUNCTION_LIST=120`, `NPC_FUNCTION_TALK=73`. Both requests must have exactly four body bytes; the server decodes them as a big-endian i32 NPC runtime ID. | Server implementation only; client request format has not been verified by a capture in this handoff. |
| Availability | Same `handle()` branch | A reply with diagnostic content requires `SINGLE_NPC_PROBE` and an ID in this connection's `visible_npcs`. | Server implementation only. |
| Function-list reply | `npc_function_list_body()` | Encodes `pstr(greeting)`, four zero bytes, signed-byte function count, then `>bh` (flag, function ID) and `pstr(label)` per function. The available diagnostic path supplies function ID 7, label `Noi chuyen`; unavailable path supplies no functions. | Server encoder only; client parsing/display not confirmed here. |
| Talk reply | `npc_talk_body()` and `handle()` | Available diagnostic path sends status byte 0, count byte, then title/text string pairs. Unavailable path sends `bytes([1])`. | Server encoder only; client parsing/display not confirmed here. |

The server reads **no function index** from these four-byte requests. There is
no basis in this handler for an “unexpected function index” check.

## Client evidence still needed

The previous version of this document named `GameScreen.sendNpcFunctionList`,
`GameWorld.receiveNpcFunctionList`, `DianHua.chooseFunction`, and other
approximate smali methods/line ranges without an inspected source excerpt.
Those names and ranges are **unverified** and must not be reused as citations.
A server docstring mentions `GameWorld.processNpcFunctionListMessage`; verify
that method directly against the matching Tru Than DEX/JADX and smali before
documenting the client's read order.

The earlier `ForceGuide.isNpcInUserView` research in `docs/ENTITIES.md`
describes a tutorial visibility check; it does not establish the NPC selection
packet flow. Whether `flags=[3]` enables a menu or dialogue is UNKNOWN.

## Next bounded task

Using the locally available matching client source, find the actual call sites
that produce commands 120 and 73, and the readers for their responses.
Record exact file, method, and relevant lines or code excerpts, request field
order/width, reply branches, and any NPC eligibility checks. If a call site is
absent or cannot be read, report UNKNOWN rather than supplying a guessed
method. Compare those findings with the server branch above. Do not implement
new quest records, original NPC mappings, or protocol fields without evidence.

No live client test or server code change was performed for this correction.
