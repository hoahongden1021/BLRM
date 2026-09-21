# 📜 LONG TINH ARCHITECTURE FINDINGS: ENTITY LIFECYCLE

This document details the architectural flow for managing NPCs, Monsters, and Maps in the Long Tinh codebase, based strictly on the source files analyzed.

---

## 🗺️ CORE ENTITY MANAGEMENT

### 1. Who owns `npcList`, `monsterList` and `playerList`?
The **`Map`** object is the authoritative owner of these lists.

*   **File:** `C:/Users/Mech/Desktop/TruThan_RE/reference/LongTinh/server/src/map/hero/map/Map.java`
*   **Method:** The lists (`npcList`, `monsterList`, `playerList`) are defined and initialized as fields in the `Map` class.
*   **Behavior:**
    *   `Map.java` (lines 48, 52, 56) defines these fields.
    *   `Map.java` (lines 139, 144, 150) initializes them in the constructor.

### 2. What supplies NPC/Monster template data?
NPC and Monster template configuration is supplied by dedicated dictionary classes, not the map data itself.

*   **Entity Template Source:** `NpcDataDict / NpcData` and `MonsterDataDict / MonsterData`.
*   **Npc Template Logic:** `NotPlayerServiceImpl.buildNpcInstance(modelID)` retrieves data from `NpcDataDict.getInstance().getNpcData(modelID)`, which constructs a new `Npc` object by copying template fields (such as `modelID`, `name`, `title`, `imageID`, `imageType`, `clan`, `animationID`, and functions).
*   **Monster Template Logic:** `NotPlayerServiceImpl.buildMonsterInstance(modelID)` retrieves data from `MonsterDataDict.getInstance().getMonsterData(modelID)`, which constructs a new `Monster(data)` and applies template stats/configuration.

### 3. What supplies NPC/Monster placement and location information?
Map placement and location data are contained within `MapModelData`.

*   **Map Placement Data:** `MapModelData.notPlayerObjectList` references `modelID` to supply specific map placement/location information.

### 4. Where are runtime `Npc` objects created?
Runtime NPC objects are created via the dedicated NPC service during map loading.

*   **File:** `C:/Users/Mech/Desktop/TruThan_RE/reference/LongTinh/server/src/map/hero/map/service/MapServiceImpl.java`
*   **Method:** `loadNormalMap()` (lines 1037-1063).
*   **Behavior:** `Npc` is instantiated using `NotPlayerServiceImpl.getInstance().buildNpcInstance(npcData.modelID);`.

### 5. Where are runtime `Monster` objects created?
Runtime Monster objects are created via the dedicated Monster service during map loading.

*   **File:** `C:/Users/Mech/Desktop/TruThan_RE/reference/LongTinh/server/src/map/hero/map/service/MapServiceImpl.java`
*   **Method:** `loadNormalMap()` (lines 1078-1095).
*   **Behavior:** `Monster` is instantiated using `NotPlayerServiceImpl.getInstance().buildMonsterInstance(npcData.modelID);`.

### 6. **RUNTIME ENTITY ID**
*   **Ownership:** `ME2GameObject` owns the runtime ID in a private integer field named `ID`.
*   **Allocation:** The `ME2GameObject` constructor calls `setID(IDManager.buildObjectID())` upon object creation.
*   **Access:** `setID(int)` stores the runtime object ID, and `getID()` returns it.

### 7. **ID ALLOCATION**
*   **Initialization:** `IDManager.init()` initializes the static field `OBJECT_ID` to `1000`.
*   **Method Signature:** The function is `public static final int buildObjectID()`.
*   **Thread Safety:** The function is **NOT** synchronized.
*   **Return Logic:** It returns the value of `++OBJECT_ID`.
*   **First ID:** Immediately after initialization, the first generated object ID is **1001**.
*   **Boundary Handling:** `buildObjectID()` contains no explicit check for `Integer.MAX_VALUE` and no explicit handling for ID reset or wrap-around.
*   **Naming Convention:** The ID is referred to as the "**runtime object ID**", as its uniqueness is not guaranteed across restarts.

### 8. **TEMPLATE VS RUNTIME ID**
*   **Template Identity:** `NpcData` / `MonsterData` modelID serves as the template identity (the "blueprint").
*   **Runtime Identity:** `ME2GameObject.ID` serves as the runtime object ID.
*   **Generation:** The runtime ID is generated when the object constructor chain reaches `ME2GameObject()`.
*   **Relationship:** Template modelIDs and runtime object IDs are distinct and separate concepts.

---

## ⚙️ MAP LIFECYCLE FLOW

### 9. **INITIAL SERVER POPULATION**
The server-side state construction for maps is handled by the `MapServiceImpl.start()` method, specifically its `loadNormalMap()` logic.

*   **Process:** `MapServiceImpl.start()` -> `loadNormalMap()` -> `buildMap(...)`.
*   **BuildMap Behavior:** `buildMap` performs the following steps sequentially:
    1. Reads `MapModelData` placement entries.
    2. Calls `NotPlayerServiceImpl` builders to create NPC/Monster objects.
    3. Calls `entity.live(map)`.
    4. Explicitly sets coordinates (`setOrgX`, `setOrgY`, etc.).
    5. Calls `entity.active()`.
    6. Adds the entity to the Map collection (`map.getNpcList().add(npc)` or `map.getMonsterList().add(monster)`).

**Note:** This process describes server-side state construction and does not involve sending data to clients.

### 10. **INITIAL CLIENT POPULATION MESSAGE SEQUENCE**
The initial client population messages are sent during the login sequence in `EnterGame.read()`.

1. `NotifyEnterMap`
2. `ResponseMapBottomData`
3. `ResponseRoleViewInfo`
4. `SendBodyWearList`
5. `ResponseWearPetGridNumber`
6. `ResponseMapGameObjectList` (This confirms the normal initial population path)
7. `refreshRoleProperty`
8. (Optional) `player.born`
9. `MoveSpeedChangerNotify`
10. `player.active`

**ResponseMapNpcList Clarification:**
*   `ResponseMapNpcList` is **NOT** part of the normal initial map population packet.
*   `ResponseMapNpcList` is used specifically when the client requests an NPC list by sending a `FIND_NPC` message to the server (via `WorldMapFun.java`), triggering an explicit NPC lookup/list request.

---

## 🌐 RUNTIME ENTITY LIFECYCLE

### 11. **RUNTIME NPC MAP RELOCATION/SPAWN**
The NPC map relocation/spawn-style path is evidenced by `Npc.gotoMap(Map)`:
1. Removes the NPC from the previous map's `npcList`.
2. Broadcast `DisappearNotify` to the previous map when changing map.
3. Calls `live(_map)` on the new map object.
4. Adds itself to the new map's `npcList`.
5. Broadcast `NpcRefreshNotify` to the new map.

**Note:** `Npc.heartBeat()` is **NOT** a spawn path; it is a timer mechanism for lifetime expiration.

### 12. **NPC DESPAWN / DESTROY**
The NPC destruction sequence is as follows:

**A. Lifetime Expiration (`Npc.heartBeat()`):**
*   When `heartBeat()` is called and the NPC lifetime expires, it calls `destroy()`.
*   The source code then executes: `where().getMonsterList().remove(this)`.
*   **SOURCE ODDITY / POSSIBLE LONG TINH BUG:** The NPC object, which is an NPC, removes itself from the `getMonsterList()` of the current map, not its own `npcList`.
*   It then broadcasts `DisappearNotify`.

**B. Destruction (`Npc.destroy()`):**
*   `invalid()` (stops movement/actions).
*   `stopFollowTask()` (stops related tasks).
*   `NotPlayerServiceImpl.removeNpc(this)` (removes it from the server service registry).
*   **Note:** `Npc.destroy()` does **not** internally claim to remove the NPC from the `Map.npcList`.

### 13. **MONSTER RESPAWN / REFRESH**
*   **Monster Revival:** The `Monster.revive(ME2GameObject)` method handles the runtime monster revival/respawn action.
*   **Behavior:** It restores HP to max, MP to max, resets CellX/CellY to OrgX/OrgY, calls `super.revive()`, calls `super.active()`, resets direction/movement speed, adds itself to where().getMonsterList(), and broadcasts `MonsterRefreshNotify` through `MapSynchronousInfoBroadcast`. This proves the runtime revival action itself.
*   **Timing:** The scheduling or timing mechanism that decides when `revive()` is invoked remains UNKNOWN unless traced.

### 14. **SERVICE REGISTRY VS MAP COLLECTION**
*   **Service Registry:** `NotPlayerServiceImpl.removeNpc(this)` and `NotPlayerServiceImpl.removeMonster(id)` remove entity entries from the server service's lookup registries.
*   **Map Collection:** `Map.npcList` and `Map.monsterList` are separate collections that track which entities belong to which map.

### 15. **BROADCAST / NETWORK AOI**
*   **Map Synchronous Broadcast:** The `MapSynchronousInfoBroadcast.broadcast()` method obtains the list of players in the map (`info.map.getPlayerList()`), iterates through them (skipping disabled players and allowing exclusion of the triggering object), and can filter recipients based on `clientType`.
*   **Scope:** The message is queued for matching players.
*   **Spatial Filtering:** No spatial or distance filtering is present within this broadcast method. The broadcast layer itself is map-wide apart from enabled/trigger/clientType filtering.

---

## ❓ UNRESOLVED ISSUES

1.  **Automatic Monster Respawn Scheduling/Timing:** The logic and timing for automatic monster respawn scheduling if not triggered by manual `revive` calls are not directly traced.
2.  **Dedicated Spatial/Network AOI:** While proximity logic exists on the server for interaction, there is no clear evidence of a dedicated network AOI system that culls entities from the active map lists based on client position.

---
**End of Report**