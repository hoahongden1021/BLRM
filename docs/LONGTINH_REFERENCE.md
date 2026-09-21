# Long Tinh Reference Source

Purpose: use the supplied Long Tinh source as an architectural reference for Tru Than server reimplementation.

**Do not treat Long Tinh packet opcodes or layouts as Tru Than protocol.**

## Source identity / scope

The server source contains repeated headers such as:

`Copyright: DGFun CO., (c) 2008`

The supplied tree includes a Java mobile client plus a substantial Java MMORPG server/framework.

Curated source location in this repository:

`reference/LongTinh/`

## High-value files

### NPC identity/list layer

`reference/LongTinh/server/src/map/hero/map/message/ResponseMapNpcList.java`

Its `write()` method sends:

- map ID (`short`)
- NPC count (`short`)
- per NPC:
  - runtime NPC ID (`int`)
  - title (`UTF`)
  - name (`UTF`)
  - clan (`byte`)
  - cell X (`short`)
  - cell Y (`short`)

This packet does **not** contain the NPC image/animation fields.

### Full map object / NPC appearance layer

`reference/LongTinh/server/src/map/hero/map/message/ResponseMapGameObjectList.java`

For NPCs, the source writes identity and interaction data, position, optional image resource/config data, then:

- image type
- image ID
- animation ID

The optional image-resource branch can also send image/config metadata when the map/client does not already have the fixed resource.

### NPC refresh

`reference/LongTinh/server/src/npc/hero/npc/message/NpcRefreshNotify.java`

This is a focused runtime NPC spawn/refresh message. It writes map ID, runtime NPC ID, identity/interaction data, X/Y, optional image resource/config data, then image type/image ID/animation ID.

### Monster refresh

`reference/LongTinh/server/src/npc/hero/npc/message/MonsterRefreshNotify.java`

This provides a concrete monster runtime model including map ID, runtime ID, name, level, clan/type flags, HP/MP, X/Y/direction, optional image/config data, image ID and animation ID.

### Client NPC reader

`reference/LongTinh/client/preprocessed/network/NetParse.java`

`readNpcData(...)`:

1. creates `ONpc`;
2. reads runtime ID;
3. reads title/name/faction-related data;
4. reads dialogue/interactivity fields;
5. reads X/Y and initializes the object's map position;
6. optionally receives NPC image/config data;
7. reads image type, image ID and animation ID;
8. calls `setRoleFrame(...)`;
9. adds the NPC to the game world.

This is particularly useful as an architectural comparison for Tru Than entity creation.

### NPC data definitions

`reference/LongTinh/server/res/data/npc/normal_npc/npc.xml`

NPC records are data-driven and contain fields such as:

- logical NPC/template ID
- name
- faction/clan
- dialogue/function fields
- image ID
- animation ID
- image type

This shows a clean separation between template data and runtime entity identity.

### Core server systems

Useful source roots include:

- `reference/LongTinh/server/src_core/yoyo/` — generic packet/session/service/thread/database framework
- `reference/LongTinh/server/src/map/` — map/world/broadcast
- `reference/LongTinh/server/src/npc/` — NPC/monster/AI
- `reference/LongTinh/server/src/fight/` — combat
- `reference/LongTinh/server/src/skill/` — skills
- `reference/LongTinh/server/src/task/` — quests
- `reference/LongTinh/server/src/player/` — players/persistence
- `reference/LongTinh/server/src/item/` — items/equipment/inventory

## What may be reused conceptually

Long Tinh is useful for designing:

- `SessionManager`
- `World` / `Map`
- base `Entity`
- `Player`
- `Npc`
- `Monster`
- AOI/map broadcast
- movement state
- monster AI/aggro/respawn
- combat state
- quest state
- item/inventory/equipment state
- persistence/DAO structure

These concepts can later be reimplemented cleanly in the Tru Than Python server or another language.

## What must NOT be copied as truth

Never transfer without Tru Than evidence:

- command/opcode values
- packet framing
- packet field order/types
- runtime/template IDs
- image/animation IDs
- map IDs
- NPC/monster coordinates
- skill/quest/item IDs
- gameplay constants

## Immediate Tru Than comparison target

Current Tru Than evidence:

- `cmd=9` contains runtime/entity ID, name, X/Y, flags; no observed objectDataId.
- `cmd=132` is related to visible entities/sprites but exact layout remains unresolved.
- old guessed `cmd=132` packets caused malformed sprites and `GSprite.drawSelected` divide-by-zero.

Research question:

Does Tru Than follow a lifecycle analogous to:

`identity/list -> full appearance/spawn -> runtime refresh/update`

with a shared runtime entity ID between `cmd=9` and `cmd=132`?

This is a **CANDIDATE architecture**, not a verified Tru Than conclusion.

## Required cross-check procedure

For every Long Tinh analogy:

1. locate the exact Tru Than client handler;
2. trace field reads and branches;
3. trace runtime ID storage/lookups;
4. compare captured packets;
5. identify asset/resource initialization;
6. only then implement a minimal server packet;
7. client-test before marking VERIFIED.
