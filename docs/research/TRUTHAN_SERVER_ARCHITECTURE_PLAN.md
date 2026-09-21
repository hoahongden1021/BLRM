# Tru Than Server Migration Architecture and Safe Migration Plan

This document serves as the definitive, corrected plan for migrating from the existing `truthan_local_server_v026.py` baseline to a modular, scalable server architecture. The existing v026 implementation is designated as the permanent, read-only rollback reference. The future refactored entrypoint, `server/truthan_local_server_v027.py`, will host the modular components.

---

## 🔍 Evidence Status Legend

| Status | Definition | Description |
| :--- | :--- | :--- |
| **VERIFIED** | Confirmed by code/data plus successful client behavior or packet evidence. | The behavior is a confirmed truth of the Tru Than client/server interaction. |
| **PARTIAL** | Some structure/meaning is known, but important fields or behavior remain unresolved. | Structure is identified, but crucial runtime logic/values are not proven. |
| **CANDIDATE** | Evidence suggests a possibility but it is not confirmed. | A strong hypothesis supported by partial data. |
| **UNKNOWN** | No reliable conclusion yet. | No evidence found in the inspected codebase or packets. |
| **NOT PROVEN** | No evidence exists in the inspected codebase or packets. | The feature or relationship has not been traced. |
| **REJECTED** | Previously tried/assumed and later proven wrong. | Confirmed incorrect assumptions. |

---

## 🏛️ Architecture Principles

1.  **Modularity Over Monolith:** Replace the monolithic `v026.py` with a set of decoupled services.
2.  **Zero-Modification Rule:** The v026 baseline is sacred and will never be modified.
3.  **Separation of Concerns:** Logic is strictly partitioned into dedicated architectural groups (e.g., `services/MovementService.py`, `data/AssetMetadata.py`).
4.  **Evidence First:** No architectural assumption or implementation detail is added without corresponding evidence from the inspected client/server codebase.
5.  **No Gameplay Templates:** Tru Than gameplay template ownership/structure is UNKNOWN / NOT PROVEN.

---

## 🗺️ Complete Module Map

| Group | Module Path | Responsibility | V026 Code Mapped | Evidence Status | Dependency | Generalization Constraints |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| `network/` | `network/` | Raw packet serialization, framing, and socket handling. | `parse_frames`, `mkframe`, read/write handlers | TRU THAN PARTIAL (Architecture/refactor) | None | Do not move packet semantics into this layer. |
| `session/` | `session/AuthSession.py`, `session/GameLoginSession.py` | Managing separate stages of user session (Auth and Game Login). | Auth logic (42/-42), Game Login (277) | TRU THAN PARTIAL (Auth/Game behavior is VERIFIED) | `protocol/` | Auth and game flows are separate evidenced boundaries. |
| `protocol/` | `protocol/` | Defines packet structures, framing, and byte layouts. | Byte layout definitions | TRU THAN PARTIAL | None | Must match v026 byte sequences exactly. |
| `world/` | `world/SceneManager.py` | Manages map and scene lifecycles. | `current_scene_id()`, `scene_load_rsp()`, `ROLE["map"]`, `ROLE["x"]`, `ROLE["y"]` | TRU THAN PARTIAL | `session/` | Must exclude `Map.java` (Long Tinh reference). Only use Tru Than v026 scene state. |
| `entities/` | `entities/EntityAdapter.py` | Adapts raw entity data into a standardized abstract view. | Raw entity parsing | TRU THAN PARTIAL | `data/`, `ids/` | Must not equate names (e.g., 彩云仙子) to IDs (e.g., 1014). |
| `ids/` | `ids/` | Manages identifiers (e.g., `objectDataId`, `runtime-ID`). | `220010` (synthetic ID) | UNKNOWN | None | Runtime ID allocation mechanism remains UNKNOWN. |
| `services/` | `services/EntitySpawnService.py` | Manages diagnostic entity injection post-scene ready. | `npc_view_body()`, `starter_probe_entities()`, `send_starter_probe_entities()` | TRU THAN PARTIAL (Exact migrated TEST OBJ1014 diagnostic behavior is VERIFIED) | `visibility/`, `entities/` | Must not implement a general entity creation or lifecycle. |
| `services/` | `services/MovementService.py` | Decodes `cmd133` and updates player coordinates. | `decode_client_move133()` | TRU THAN PARTIAL (existing decode_client_move133 behavior is TRU THAN VERIFIED) | None | Must preserve exact `cmd133` behavior. |
| `services/` | `services/NpcInteractionService.py` | Handles diagnostic interaction logic (`cmd120`, `cmd73`). | `cmd120`, `cmd73` handlers | TRU THAN PARTIAL (existing diagnostic cmd120/cmd73 behavior is TRU THAN VERIFIED) | `entities/` | Preserves only diagnostic behavior. |
| `services/` | `services/ResourceService.py` | Handles all `cmd11` resource requests and chunking. | `cmd11` logic, `APK extraction`, `chunking` | TRU THAN PARTIAL (existing cmd11 APK/resource/chunking behavior is TRU THAN VERIFIED) | `data/` | Do not replace or reinterpret the working byte layout. |
| `visibility/` | `visibility/InitialPopulationController.py`, `visibility/RuntimeUpdateController.py` | Separates current diagnostic initial population timing from future population responsibilities. | Diagnostic post-scene-ready injection trigger | TRU THAN PARTIAL (Current post-ENTER_SCENE_READY diagnostic injection is VERIFIED) | `services/` | Dedicated spatial AOI/despawn behavior is NOT PROVEN. |
| `data/` | `data/AssetMetadata.py`, `data/MapMetadata.py`, `data/CandidateEntityMetadata.py` | Stores all verified static data and resource schemas. | Raw resource/map data | AssetMetadata/verified raw resource mappings: TRU THAN VERIFIED where directly evidenced. MapMetadata/known scene-resource evidence: TRU THAN VERIFIED where directly evidenced. CandidateEntityMetadata: TRU THAN PARTIAL / CANDIDATE. | None | Must not invent gameplay template structure. |
| `diagnostics/`| `diagnostics/PacketLogger.py`, `diagnostics/ProtocolAssertions.py`, `diagnostics/EntityProbe.py` | Holds test utilities and validated probe schemas. | `log_block` logic, `TEST OBJ1014` behavior | PARTIAL (Probe is VERIFIED) | None | Components are proposals; behavior is not automatically assumed. |

---

## 🧱 Data / Runtime / Entity Separation

*   **RESOURCE / STATIC DATA:** Includes APK resources (img, obj, scn, pgg, wmp) and the static metadata derived from them.
*   **GAMEPLAY TEMPLATE DATA:** Tru Than gameplay template ownership/structure is UNKNOWN / NOT PROVEN.
*   **RUNTIME ENTITY INSTANCE:** Architectural abstraction only. Diagnostic NPC behavior currently evidenced.
*   **RUNTIME ENTITY ID:** Allocator UNKNOWN. `220010` is synthetic diagnostic ID only.
*   **MAP MEMBERSHIP:** Future architectural responsibility. Real Tru Than membership model is NOT YET PROVEN.
*   **INITIAL CLIENT POPULATION:** Real starter population is UNKNOWN. Current diagnostic injection occurs after `ENTER_SCENE_READY`.
*   **RUNTIME SPAWN / REFRESH:** General system PARTIAL / NOT PROVEN. Exact diagnostic `cmd132` path is VERIFIED only.
*   **DESPAWN:** Dedicated spatial AOI/despawn behavior is NOT PROVEN from current Tru Than evidence.

---

## 📜 Known Protocol / Evidence Boundaries

**Commands:**
*   `42 \to -42`: Expected auth response is received and client proceeds normally.
*   `277`: Game login request.
*   `20/18/16`: Role definition and creation.
*   `6 \to 7`: JOIN\_GAME sequence.
*   `32`: Scene load.
*   `10`: ENTER\_SCENE\_READY confirmation (Normal behavior preserved).
*   `133`: Movement update (Exact decoding preserved).
*   `11`: Resource request (Exact chunking/mapping preserved).
*   `minimal diagnostic 132`: Tested probe behavior (`TEST OBJ1014`).
*   `diagnostic 120/73`: Current diagnostic handling/encoding path for NPC interaction.

**Relationships:**
*   `cmd9`: TRU THAN PARTIAL.
*   `cmd132`: TRU THAN PARTIAL.
*   No proven `cmd9 \to cmd132` identity relationship.
*   No proven `彩云仙子 \to 1014` relationship.
*   No proven `火狐妖 \to 1014` relationship.

---

## 🛣️ Complete Safe Migration Plan (1 Baseline + 10 Migration Phases)

### PHASE 0: BASELINE / REGRESSION LOCK
**GOAL:** Lock the current v026 state as the immutable rollback reference.
**FILES TO CREATE:** None.
**V026 CODE / FUNCTIONS TO MOVE:** None.
**COMPATIBILITY WRAPPER:** N/A.
**EVIDENCE STATUS:** All critical v026 facts are verified.
**REGRESSION RISKS:** Scope creep.
**MINIMUM SMOKE TEST:** Baseline suite must cover 42 $\to$ -42, 277, 20/18/16, 6 $\to$ 7, 32, 10, 133, 11, diagnostic cmd132, and diagnostic cmd120/73.

VERIFIED DIAGNOSTIC REFERENCE — run112928

run112928 is the locked verified runtime reference for the current TEST OBJ1014 diagnostic GNPC path.

Verified exact test facts:

- runtime ID: 220010
- objectDataId: 1014
- image ID: 7197
- name: TEST OBJ1014
- scene: 9068
- position: 203,253
- positive HP/MP
- entity rendered successfully
- entity was selectable
- name displayed
- portrait displayed
- HP/MP displayed
- no ArithmeticException
- no NullPointerException
- no ArrayIndexOutOfBoundsException
- no BufferUnderflowException
- no fatal client exception

Evidence boundary:

These values are verified ONLY for the diagnostic probe.

Do NOT infer:

- 1014 = 彩云仙子
- 1014 = 火狐妖
- 1014 = real tutorial NPC
- 220010 = real server-generated runtime ID
- 220010 proves the runtime-ID allocator
- this probe represents real starter population

**ROLLBACK CONDITION:** Packet byte mismatch in the baseline sequence; client fails to progress/render.

### PHASE 1: NETWORK / FRAMING EXTRACTION
**GOAL:** Isolate all raw network I/O and framing into a dedicated, verifiable service.
**FILES TO CREATE:** `network/NetworkService.py`
**V026 CODE / FUNCTIONS TO MOVE:** `parse_frames`, `mkframe`, socket receive/send handling, connection lifecycle, packet logging boundary.
**COMPATIBILITY WRAPPER:** `NetworkService`. This layer ensures all bytes are handled without semantic interpretation.
**EVIDENCE STATUS:** Preservation of normal C->S framing, pre-auth GAME C->S FE framing, and S->C without FE.
**REGRESSION RISKS:** Corrupt packet boundaries.
**MINIMUM SMOKE TEST:** Successful transmission and reception of both normal and pre-auth frames.
**ROLLBACK CONDITION:** Packet byte mismatch in framing.

### PHASE 2: SESSION / AUTH / GAME LOGIN EXTRACTION
**GOAL:** Separate `AuthSession` and `GameLoginSession` into distinct architectural boundaries.
**FILES TO CREATE:** `session/AuthSession.py`, `session/GameLoginSession.py`.
**V026 CODE / FUNCTIONS TO MOVE:** Auth logic (`42/-42`) and Game Login pipeline (`277`).
**COMPATIBILITY WRAPPER:** Session State Machine (prevents cross-boundary state transitions).
**EVIDENCE STATUS:** `auth 42/-42` and `game login 277` are kept strictly separate. No cross-session transitions are modeled.
**REGRESSION RISKS:** Incorrect state sequencing.
**MINIMUM SMOKE TEST:**
*   AUTH TEST: `42 \to -42`
*   GAME-SIDE TEST: `277`, role flow (`20/18/16`), `6 \to 7`, `32`, `10`.
**ROLLBACK CONDITION:** A state transition occurs that skips the required session phase.

### PHASE 3: PROTOCOL & DATA DECOUPLING
**GOAL:** Define and isolate protocol definitions and raw data structures.
**FILES TO CREATE:** `protocol/`, `data/AssetMetadata.py`, `data/MapMetadata.py`, `data/CandidateEntityMetadata.py`.
**V026 CODE / FUNCTIONS TO MOVE:** Raw byte reading and structural extraction logic.
**COMPATIBILITY WRAPPER:** Data Adapters (interface between raw bytes and metadata objects).
**EVIDENCE STATUS:** All verified packet structures and resource mappings are extracted into metadata objects.
**REGRESSION RISKS:** Misinterpreting an optional byte or field order.
**MINIMUM SMOKE TEST:** Successful exchange of a `cmd11` request and its corresponding data chunks.
**ROLLBACK CONDITION:** Any failure to match raw v026 data to the metadata structure.

### PHASE 4: RESOURCE SERVICE EXTRACTION
**GOAL:** Isolate the exact resource handling logic.
**FILES TO CREATE:** `services/ResourceService.py`
**V026 CODE / FUNCTIONS TO MOVE:** `cmd11` logic, `APK extraction`, `resource lookup`, `chunking`, `missing resource handling`, `clear response handling`.
**COMPATIBILITY WRAPPER:** `ResourceService` acts as a direct proxy for the v026 resource handler.
**EVIDENCE STATUS:** Exact `cmd11` protocol is preserved.
**REGRESSION RISKS:** Altering the resource chunking logic.
**MINIMUM SMOKE TEST:** Successful exchange of a `cmd11` request and its corresponding data chunks.
**ROLLBACK CONDITION:** Resource chunk generation fails or `cmd11` parsing returns incorrect status.

### PHASE 5: WORLD / SCENE STATE EXTRACTION
**GOAL:** Implement a dedicated `SceneManager` to handle map and scene state.
**FILES TO CREATE:** `world/SceneManager.py`.
**V026 CODE / FUNCTIONS TO MOVE:** `current_scene_id()`, `scene_load_rsp()`, `ROLE["map"]`, `ROLE["x"]`, `ROLE["y"]`, known scene IDs, Tru Than `.scn/scene` metadata.
**COMPATIBILITY WRAPPER:** `SceneManager` acts as the state machine for world location.
**EVIDENCE STATUS:** Smoke tests confirm the game flow: `277 $\to$ role flow $\to$ 6 $\to$ 7 $\to$ 32 $\to$ 10`.
**REGRESSION RISKS:** Inferring or implementing unauthorized gameplay rules.
**MINIMUM SMOKE TEST:** Successful sequence execution through `277` to `10`.
**ROLLBACK CONDITION:** Scene fails to load, render, or client stops progressing at any point in the sequence.

### PHASE 6: ENTITY / DIAGNOSTIC CMD132 EXTRACTION
**GOAL:** Isolate the verified diagnostic entity creation logic.
**FILES TO CREATE:** `services/EntitySpawnService.py`.
**V026 CODE / FUNCTIONS TO MOVE:** `npc_view_body()`, `starter_probe_entities()`, `send_starter_probe_entities()`, and `post-ENTER_SCENE_READY` injection.
**COMPATIBILITY WRAPPER:** `EntitySpawnService` acts as a dedicated diagnostic injector.
**EVIDENCE STATUS:** Exact migrated diagnostic behavior for `TEST OBJ1014` is VERIFIED. General systems are PARTIAL.
**REGRESSION RISKS:** Treating the probe as a general gameplay feature.
**MINIMUM SMOKE TEST:** The diagnostic NPC (`TEST OBJ1014`) successfully renders and is selectable in scene.
**ROLLBACK CONDITION:** Diagnostic NPC fails to render, fails to be selectable, or causes any fatal client exception.

### PHASE 7: VISIBILITY / INITIAL POPULATION BOUNDARY
**GOAL:** Implement the minimal population logic without inventing unseen systems.
**FILES TO CREATE:** `visibility/InitialPopulationController.py`, `visibility/RuntimeUpdateController.py` (Placeholder).
**V026 CODE / FUNCTIONS TO MOVE:** Injection trigger logic post-scene-ready.
**COMPATIBILITY WRAPPER:** `InitialPopulationController` is the sole driver of `EntitySpawnService`.
**EVIDENCE STATUS:** Current diagnostic post-scene-ready injection behavior is VERIFIED. Dedicated spatial AOI/despawn behavior is NOT PROVEN.
**REGRESSION RISKS:** Inventing despawn or AOI logic.
**MINIMUM SMOKE TEST:** `InitialPopulationController` correctly triggers `EntitySpawnService` once upon `cmd10`.
**ROLLBACK CONDITION:** Controller attempts to perform any action other than the single verified diagnostic injection.

### PHASE 8: MOVEMENT SERVICE EXTRACTION
**GOAL:** Isolate player movement logic into a dedicated service.
**FILES TO CREATE:** `services/MovementService.py`
**V026 CODE / FUNCTIONS TO MOVE:** `decode_client_move133()`, existing `ROLE/player X/Y` update behavior.
**COMPATIBILITY WRAPPER:** `MovementService` handles the decoding and coordinate updating.
**EVIDENCE STATUS:** Existing `cmd133` behavior is VERIFIED.
**REGRESSION RISKS:** Introducing complex logic where only simple decoding is required.
**MINIMUM SMOKE TEST:** Send a valid `cmd133` path; verify decoded coordinates match expected values; verify `ROLE/player` coordinates update exactly as before.
**ROLLBACK CONDITION:** Coordinate decode mismatch or state mismatch.

### PHASE 9: NPC INTERACTION SERVICE EXTRACTION
**GOAL:** Isolate current diagnostic NPC interaction behavior.
**FILES TO CREATE:** `services/NpcInteractionService.py`
**V026 CODE / FUNCTIONS TO MOVE:** `npc_function_list_body()`, `npc_talk_body()`, `cmd120/cmd73` diagnostic handling/encoding path.
**COMPATIBILITY WRAPPER:** `NpcInteractionService` acts as the handler for these specific commands.
**EVIDENCE STATUS:** Exact diagnostic path for `cmd120/cmd73` is VERIFIED.
**REGRESSION RISKS:** Assuming direction or functionality beyond diagnostic path.
**MINIMUM SMOKE TEST:** `TEST OBJ1014` diagnostic interaction behaves exactly as current v026 behavior.
**ROLLBACK CONDITION:** Interaction response deviates from current diagnostic behavior.

### PHASE 10: FINAL DISPATCHER / INTEGRATION
**GOAL:** Rebuild the server entrypoint to delegate all tasks to the newly created services.
**FILES TO CREATE:** `server/truthan_local_server_v027.py`.
**V026 CODE / FUNCTIONS TO MOVE:** Core command routing logic of the monolithic script.
**COMPATIBILITY WRAPPER:** `v027_Dispatcher` delegates all command handling to the appropriate service.
**EVIDENCE STATUS:** Dispatcher confirms delegation to all specialized services.
**REGRESSION RISKS:** Incorrect command routing.
**MINIMUM SMOKE TEST:** End-to-end successful command execution from a network packet to the relevant service method.
**ROLLBACK CONDITION:** Any command is not routed to a specific, existing service.

---

## 🛑 Explicit UNKNOWN / NOT PROVEN

*   Tru Than runtime-ID allocation
*   Tru Than gameplay entity template system
*   Real starter NPC population
*   Real monster population
*   General spawn/despawn lifecycle
*   Network/spatial AOI
*   Quests
*   Combat
*   Drops
*   Inventory
*   AI behavior
*   Respawn scheduling
*   Persistence

---

## 📋 Future Placeholders

*   **Quests:** Logic for quest triggers, progress, and completion.
*   **Combat:** Damage calculation, hit registration, and effects.
*   **Drops:** Item spawning, loot tables, and pickup mechanics.
*   **Inventory:** Storage logic, item manipulation, and UI state.
*   **AI:** Complex entity logic beyond fixed diagnostic states.
*   **Persistence:** Database schemas or saving/loading logic.
*   **Respawn:** Scheduled entity revival logic.
*   **Real Starter NPC Population:** Not proven.
*   **Real Monster Population:** Not proven.
*   **AI Behavior:** Model remains TBD until Tru Than evidence is recovered.

---

## 📋 REGRESSION / SMOKE TEST MATRIX

| Command Sequence | Goal | Expected Outcome |
| :--- | :--- | :--- |
| `42 \to -42` | Authentication | Expected auth response is received and client proceeds normally. |
| `277` | Game Login | Server returns minimal login body and successful session state. |
| `20/18/16` | Role Flow | Server returns valid role templates/creation acknowledgment. |
| `6 \to 7` | JOIN\_GAME | Server responds with a minimal character state and success status. |
| `32` | Scene Load | Server responds with the correct scene ID (e.g., 9068). |
| `10` | ENTER\_SCENE\_READY | Normal `ENTER_SCENE_READY` behavior preserved; diagnostic mode may inject `TEST OBJ1014` afterward. |
| `133` | Movement | Internal `ROLE` coordinates update precisely according to packet decoding. |
| `11` | Resource | Server generates correct resource chunks for requested IDs, or correct clear message for missing resources. |
| `diagnostic cmd132` | Diagnostic Spawn | `TEST OBJ1014` renders and is selectable in scene. |
| `diagnostic 120/73` | Diagnostic Interaction | `cmd120/73` returns expected diagnostic response for `TEST OBJ1014`. |