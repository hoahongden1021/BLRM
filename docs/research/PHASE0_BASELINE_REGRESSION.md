# Phase 0 - Baseline / Regression Lock Audit (FINAL V026)

## 1. Baseline Purpose
This document establishes the verified state of the Tru Than / 诛神OL Android 1.17 server (`truthan_local_server_v026.py`) and its testing infrastructure. The goal was to document existing behavior and accurately identify coverage gaps before any modifications are made. The regression suite has been implemented and passed all deterministic unit tests, locking down the protocol helpers.

## 2. Files Actually Inspected
The following files and directories were analyzed:

- **Project State:** [PROJECT_STATE.md](C:/Users/Mech/Desktop/TruThan_RE/PROJECT_STATE.md)
- **Workflow Definition:** [docs/TEST_WORKFLOW.md](C:/Users/Mech/Desktop/TruThan_RE/docs/TEST_WORKFLOW.md)
- **Server Source:** [server/truthan_local_server_v026.py](C:/Users/Mech/Desktop/TruThan_RE/server/truthan_local_server_v026.py)
- **Regression Suite:** [tests/test_v026_baseline.py](C:/Users/Mech/Desktop/TruThan_RE/tests/test_v026_baseline.py)

## 3. Existing BAT Audit

| Script | Role | Function | Key Takeaways |
| :--- | :--- | :--- | :--- |
| `00_setup_env.bat` | Setup | Initializes environment variables and locates Python/ADB. | Robust setup confirmed. |
| `01_test_capture.bat` | Capture | Launches server, captures logs, screenshots, and metadata. | **Capture Capability** (Can record evidence). |
| `02_test_npc_probe.bat` | Targeted Test | Sets probe flags and calls `01_test_capture.bat`. | **Capture Capability** (Can record evidence). |

## 4. Targeted V026 Audit (Server Functions)

| Function | Behavior / Status |
| :--- | :--- |
| **`get_local_resource`** | Retrieves bundled resource bytes. If not found, returns `None` and the resource name, allowing the client to trigger a missing-resource handler. |
| **`missing_resource_clear_body`** | Defines the structure for the `cmd11` missing resource notification. |
| **`starter_probe_entities`** | The client contains tutorial target names `彩云仙子` and `火狐妖`. Their original server objectDataId/runtime IDs/coordinates remain UNKNOWN. The diagnostic probe must not associate OBJ1014 with either name. |
| **`send_starter_probe_entities`** | **Default Mode**: Executes in "clean mode" and **does not** inject verified NPC/mob population. |
| **Command Handlers** | All major commands are handled within the `handle()` function, confirming the dispatch paths. |

## 5. Golden Baseline Matrix (Updated)

The following table outlines the verified baseline behaviors (v0.26) and their current state of coverage, using conservative evidence metrics.

| BEHAVIOR | COMMAND | EXACT V026 PATH/FUNCTION | EXISTING AUTOMATED ASSERTION | CAPTURE TOOL AVAILABLE | EXISTING VERIFIED CLIENT EVIDENCE | CLIENT REQUIRED | VISUAL CONFIRMATION REQUIRED | EXPECTED RESULT |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **AUTH** | 42 -> -42 | `handle()` | NO | YES | PARTIAL | YES | NO | Successful authentication flow. |
| **GAME LOGIN** | 277 | `handle()` | NO | YES | VERIFIED | YES | NO | Successful role list/create flow. |
| **ROLE LIST** | 20 | `handle()` | NO | YES | VERIFIED | YES | NO | Returns list of roles. |
| **ROLE ORIGINAL** | 18 | `handle()` | NO | YES | VERIFIED | YES | NO | Role creation/original request handled. |
| **CREATE ROLE** | 16 | `handle()` | NO | YES | VERIFIED | YES | NO | Role creation finalized. |
| **JOIN GAME** | 6 -> 7 | `handle()` | NO | YES | VERIFIED | YES | NO | Client requests join, server responds with join. |
| **SCENE LOAD** | 32 | `handle()` | NO | YES | VERIFIED | YES | NO | Client requests scene, server responds with position. |
| **ENTER SCENE READY** | 10 | `handle()` | NO | YES | VERIFIED | YES | NO | Client confirms scene readiness. |
| **MOVEMENT** | 133 | `decode_client_move133` | **PASS** | YES | YES | YES | NO | Decoder is automatable offline and passed unit tests. |
| **RESOURCE** | 11 | `handle()` | **PASS** | YES | PARTIAL | YES | NO | Resource request/update logic exists; end-to-end transfer is NOT VERIFIED. |
| **DIAGNOSTIC ENTITY** | 132 | `send_starter_probe_entities` | NO | YES | VERIFIED | YES | YES | `TEST OBJ1014` is rendered, selectable, and visible (run112928). |
| **DIAGNOSTIC INTERACTION** | 120/73 | `npc_function_list_body`/`npc_talk_body` | NO | YES | PARTIAL | YES | YES | Encoder/handler produces byte structure; client interaction remains to be verified. |

## 6. Locked run112928 Reference
The run `112928` is the canonical tested path for the diagnostic command `cmd132`. This state is VERIFIED.

- **Runtime ID**: `220010`
- **Object Data ID**: `1014`
- **Image ID**: `7197`
- **Name**: `TEST OBJ1014`
- **Scene**: `9068`
- **Position**: `203,253`
- **State**: Positive HP/MP, rendered, selectable, name/portrait/HP/MP visible.
- **Observation**: No fatal client exceptions were matched in the full Logcat.

## 7. Coverage Summary & Status

| Metric | Count (Behavior Rows) |
| :--- | :--- |
| **AUTOMATED COVERAGE** | 2 (133, 11) |
| **CAPTURE CAPABILITY** | 12 |
| **VERIFIED CLIENT EVIDENCE** | 7 |
| **VISUAL CONFIRMATION REQUIRED** | 2 |

**Phase 0 Status**: **READY** for Phase 1.

## 8. Blocker Summary & Next Steps
The project is ready to proceed to Phase 1: **NETWORK / FRAMING EXTRACTION**. 

All minimum deterministic tests (byte/state helpers) have passed. The critical gates (`mkframe` and `parse_frames` logic) are validated, and `run112928` remains the locked visual diagnostic reference.

**Next Phase Focus:**
*   **Phase 1: NETWORK / FRAMING EXTRACTION**
*   **Critical Gate:** `mkframe` PASS, `parse_frames` PASS.
*   **High-Value Helpers:** `decode_client_move133` PASS, `parse_update_resource_request` PASS, `resource_chunk_bodies` PASS, `missing_resource_clear_body` PASS.

**Partially Locked (Non-Blocking for Phase 1):**
*   `cmd11` Object type-1 real-client transfer.
*   `cmd120/73` real-client interaction.

**Next Action:** Proceed with Phase 1 planning.
