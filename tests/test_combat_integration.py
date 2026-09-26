"""Integration check for the RECONSTRUCTED combat loop (TRUTHAN_COMBAT).

Runs the real server subprocess on isolated ports (offset 30000) with
TRUTHAN_DATA_SPAWN=1 and drives it with real client frames:

  ON  : login -> join -> cmd10 -> cmd27 push + 5x cmd132 population ->
        cmd136 -> cmd137 (hp 60 -> 45 -> 30 -> 15 -> 0) ->
        NPC/unknown-target cmd136 rejected without cmd137 ->
        respawn cmd132 resend + runtime-state hp reset ->
        fresh monster attackable again from full HP.
  OFF : cmd27 is not pushed and cmd136 gets no cmd137 (clean mode).

cmd136 body mirrors GameWorld.sendAttackMessage() (19 bytes).
cmd137 body is decoded with GameWorld.processSpriteSkillResultMessage()'s
reader order.  Both were reverified from build/research/jadx/sources.
"""
from __future__ import annotations

import json
import os
import socket
import struct
import subprocess
import sys
import time
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SERVER = ROOT / "server" / "truthan_local_server_v026.py"

from tests.test_map_entry_integration import (  # noqa: E402
    ENTER_SCENE_READY,
    GET_ROLE_LIST,
    JOIN_GAME,
    JOIN_GAME_RSP,
    LOGIN_GAME,
    ROLE_ENTER_SCENE,
    SPRITE_VIEW_MESSAGE,
    mkclient_frame,
    parse_all,
    recv_count,
    recv_until,
    stop_server,
)

ROLE_SKILL_MESSAGE = 27
SPRITE_SKILL_MESSAGE = 136
SPRITE_SKILL_RESULT_MESSAGE = 137
SET_SPRITE_AUTO_GUAJI = 381
TEST_PORT_OFFSET = 30000
TEST_GAME_PORT = 19000 + TEST_PORT_OFFSET

MONSTER_ID = 230110
NPC_ID = 230010


def attack_body(target_id=MONSTER_ID, target_type=2, target_x=210,
                target_y=232, src_x=180, src_y=230):
    """GameWorld.sendAttackMessage() layout (i32 i8 i16 i16 i8 i8 i8 i16 i16 i16 i8)."""
    return struct.pack(">ibhhbbbhhhb", target_id, target_type, target_x,
                       target_y, 5, 9, 3, -1, src_x, src_y, 40)


def decode_cmd137(body: bytes) -> dict:
    """GameWorld.processSpriteSkillResultMessage() reader order."""
    pos = 0
    flags = body[pos]; pos += 1
    src_id = struct.unpack_from(">i", body, pos)[0]; pos += 4
    src_type = body[pos]; pos += 1
    tgt_id = struct.unpack_from(">i", body, pos)[0]; pos += 4
    tgt_type = body[pos]; pos += 1
    pos += 2
    move_mode = body[pos]; pos += 1
    src_hp = struct.unpack_from(">i", body, pos)[0]; pos += 4
    src_mp = struct.unpack_from(">i", body, pos)[0]; pos += 4
    pos += 1
    pos += 1                                   # dir
    for _ in range(3):
        pos += 1                               # actionId
        obj_id = struct.unpack_from(">h", body, pos)[0]; pos += 2
        if obj_id != -1:
            pos += 2                           # seId only when objId != -1
    prop_count = body[pos]; pos += 1
    prop_id = struct.unpack_from(">i", body, pos)[0]; pos += 4
    prop_type = body[pos]; pos += 1
    hit_result = body[pos]; pos += 1
    damage = struct.unpack_from(">i", body, pos)[0]; pos += 4
    pos += 4                                   # value2
    hp = struct.unpack_from(">i", body, pos)[0]; pos += 4
    mp = struct.unpack_from(">i", body, pos)[0]; pos += 4
    max_hp = struct.unpack_from(">i", body, pos)[0]; pos += 4
    max_mp = struct.unpack_from(">i", body, pos)[0]; pos += 4
    speed = body[pos]; pos += 1
    wuxing = struct.unpack_from(">b", body, pos)[0]; pos += 1
    assert pos == len(body), f"reader stopped at {pos}, body {len(body)}"
    assert flags == 0
    assert prop_count == 1
    return {
        "src_id": src_id, "src_type": src_type, "tgt_id": tgt_id,
        "tgt_type": tgt_type, "move_mode": move_mode, "src_hp": src_hp,
        "src_mp": src_mp, "prop_id": prop_id, "prop_type": prop_type,
        "hit_result": hit_result, "damage": damage, "hp": hp, "mp": mp,
        "max_hp": max_hp, "max_mp": max_mp, "speed": speed, "wuxing": wuxing,
        "length": len(body),
    }


def decode_cmd27(body: bytes) -> dict:
    """GameWorld.processRoleSkillMessage() + readGeniusTree() + readRoleSkill()."""
    pos = 0
    tree_id = struct.unpack_from(">h", body, pos)[0]; pos += 2
    name_len = struct.unpack_from(">H", body, pos)[0]; pos += 2 + name_len
    blob_len = struct.unpack_from(">h", body, pos)[0]; pos += 2
    blob = body[pos:pos + blob_len]; pos += blob_len
    skill_count = struct.unpack_from(">b", body, pos)[0]; pos += 1
    skill_id = struct.unpack_from(">h", body, pos)[0]; pos += 2
    is_normal = body[pos]; pos += 1
    hit_distance = struct.unpack_from(">h", body, pos)[0]; pos += 2
    action_count = struct.unpack_from(">b", body, pos)[0]; pos += 1
    actions = []
    for _ in range(action_count):
        aid = struct.unpack_from(">b", body, pos)[0]; pos += 1
        obj = struct.unpack_from(">h", body, pos)[0]; pos += 2
        if obj != -1:
            pos += 2
        actions.append((aid, obj))
    assert pos == len(body), f"reader stopped at {pos}, body {len(body)}"
    return {
        "tree_id": tree_id, "blob": blob, "skill_count": skill_count,
        "skill_id": skill_id, "is_normal": is_normal,
        "hit_distance": hit_distance, "action_count": action_count,
        "actions": actions,
    }


def start_server(combat: int) -> tuple:
    env = os.environ.copy()
    for key in (
        "TRUTHAN_EXPERIMENTAL_SPAWN", "TRUTHAN_NPC_ASSET_PROBE",
        "TRUTHAN_SINGLE_NPC_PROBE", "TRUTHAN_MOB_ASSET_PROBE",
        "TRUTHAN_CAIYUN_OBJ", "TRUTHAN_HUOHUYAO_OBJ",
        "TRUTHAN_COMBAT_RANGE", "TRUTHAN_COMBAT_DAMAGE",
        "TRUTHAN_COMBAT_ATTACK_ACTION",
    ):
        env.pop(key, None)
    env["TRUTHAN_DATA_SPAWN"] = "1"
    env["TRUTHAN_COMBAT"] = str(combat)
    # Fast deterministic timers for the test only (values are still
    # RECONSTRUCTED; the defaults are exercised by the unit tests).
    env["TRUTHAN_COMBAT_COOLDOWN_MS"] = "100"
    env["TRUTHAN_COMBAT_RESPAWN_MS"] = "1500"
    env["TRUTHAN_PORT_OFFSET"] = str(TEST_PORT_OFFSET)
    env["TRUTHAN_SCENE"] = "9068"
    state_file = ROOT / "server" / "truthan_packet_logs" / f"itest_combat_{combat}.json"
    state_file.parent.mkdir(exist_ok=True)
    for stale in (state_file,):
        stale.unlink(missing_ok=True)
    env["TRUTHAN_STATE_FILE"] = str(state_file)
    env["PYTHONIOENCODING"] = "utf-8"
    env["PYTHONUTF8"] = "1"
    proc = subprocess.Popen(
        [sys.executable, "-u", str(SERVER)],
        cwd=str(ROOT / "server"),
        env=env,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
    )
    for _ in range(80):
        if proc.poll() is not None:
            raise RuntimeError("combat test server exited early")
        try:
            with socket.create_connection(("127.0.0.1", TEST_GAME_PORT), timeout=0.2):
                break
        except OSError:
            time.sleep(0.1)
    else:
        proc.kill()
        raise RuntimeError(f"test server {TEST_GAME_PORT} never opened")
    return proc, state_file


def handshake(s: socket.socket) -> dict:
    """cmd277 -> cmd20 -> cmd6/7 -> cmd32/10; returns received frames."""
    s.settimeout(3)
    got = {}
    s.sendall(mkclient_frame(LOGIN_GAME, fe=True))
    got.update(recv_until(s, [LOGIN_GAME], timeout=4))
    s.sendall(mkclient_frame(GET_ROLE_LIST))
    got.update(recv_until(s, [GET_ROLE_LIST], timeout=4))
    s.sendall(mkclient_frame(JOIN_GAME))
    got.update(recv_until(s, [JOIN_GAME_RSP, ROLE_ENTER_SCENE], timeout=5))
    if ROLE_ENTER_SCENE not in got:
        s.sendall(mkclient_frame(45))
        got.update(recv_until(s, [ROLE_ENTER_SCENE], timeout=4))
    s.sendall(mkclient_frame(ENTER_SCENE_READY))
    got.update(recv_until(s, [ENTER_SCENE_READY, ROLE_SKILL_MESSAGE], timeout=6))
    return got


def read_state(state_file: Path) -> dict:
    return json.loads(state_file.read_text(encoding="utf-8"))


def wait_for_row(state_file: Path, sprite_id: int, predicate, timeout=3.0):
    """Poll until the runtime-state row for sprite_id satisfies predicate.

    The server writes the state file right after sending the frame, so a test
    that reads immediately after receiving cmd137/cmd132 can observe the
    previous revision; poll instead of racing.
    """
    deadline = time.time() + timeout
    row = {}
    while time.time() < deadline:
        row = state_row(read_state(state_file), sprite_id)
        if predicate(row):
            return row
        time.sleep(0.05)
    return row


def state_row(state: dict, sprite_id: int) -> dict:
    for row in state.get("npcs", state.get("entities", [])):
        if int(row.get("id", -1)) == sprite_id:
            return row
    return {}


class TestCombatLoopOn(unittest.TestCase):
    def test_attack_death_respawn_rejects(self):
        proc, state_file = start_server(combat=1)
        try:
            with socket.create_connection(
                    ("127.0.0.1", TEST_GAME_PORT), timeout=3) as s:
                got = handshake(s)

                # --- population + cmd27 push -------------------------------
                pop_frames = list(got.get(SPRITE_VIEW_MESSAGE, []))
                if len(pop_frames) < 5:
                    more = recv_count(s, SPRITE_VIEW_MESSAGE, 5 - len(pop_frames),
                                      timeout=6)
                    pop_frames += more.get(SPRITE_VIEW_MESSAGE, [])
                self.assertEqual(len(pop_frames), 5, "five cmd132 population frames")
                skill_frames = got.get(ROLE_SKILL_MESSAGE, [])
                self.assertEqual(len(skill_frames), 1, "cmd27 pushed after cmd10")
                skill = decode_cmd27(skill_frames[0][3])
                self.assertEqual(skill["blob"], b"\x00")
                self.assertEqual(skill["skill_count"], 1)
                self.assertEqual(skill["skill_id"], -1)
                self.assertEqual(skill["is_normal"], 1)
                self.assertEqual(skill["hit_distance"], 64)
                self.assertEqual(skill["action_count"], 3)
                self.assertEqual(skill["actions"], [(9, -1)] * 3)

                # --- four hits: 60 -> 45 -> 30 -> 15 -> 0 -------------------
                hp_trace = []
                for i in range(4):
                    s.sendall(mkclient_frame(SPRITE_SKILL_MESSAGE, attack_body()))
                    frames = recv_count(s, SPRITE_SKILL_RESULT_MESSAGE, 1, timeout=5)
                    results = frames.get(SPRITE_SKILL_RESULT_MESSAGE, [])
                    self.assertEqual(len(results), 1, f"hit {i + 1}: one cmd137")
                    dec = decode_cmd137(results[0][3])
                    self.assertEqual(dec["tgt_id"], MONSTER_ID)
                    self.assertEqual(dec["prop_id"], MONSTER_ID)
                    self.assertEqual(dec["tgt_type"], 2)
                    self.assertEqual(dec["src_type"], 3)
                    self.assertEqual(dec["src_hp"], 100, "player HP must stay 100")
                    self.assertEqual(dec["hit_result"], 5, "normal damage render")
                    self.assertEqual(dec["damage"], 15)
                    self.assertEqual(dec["max_hp"], 60)
                    self.assertEqual(dec["length"], 66, "cmd137 body is 66 bytes")
                    self.assertEqual(dec["move_mode"] if dec["move_mode"] in (0, 1) else 2, 2)
                    hp_trace.append(dec["hp"])
                    if i < 3:
                        time.sleep(0.12)       # COOLDOWN_MS=100
                self.assertEqual(hp_trace, [45, 30, 15, 0], "full HP drain")
                print("COMBAT_ITEST_HP_TRACE", hp_trace)

                # --- runtime state shows dead monster -----------------------
                row = wait_for_row(state_file, MONSTER_ID,
                                   lambda r: r.get("hp") == 0)
                self.assertEqual(row.get("hp"), 0)
                self.assertFalse(row.get("alive", True))
                self.assertIsNotNone(row.get("respawn_in_s"))
                # respawn_at is monotonic milliseconds; a seconds/millis mix-up
                # once produced ~2.7e8 here.  The countdown must stay within the
                # configured 1.5s window.
                self.assertGreaterEqual(row.get("respawn_in_s"), 0.0)
                self.assertLessEqual(row.get("respawn_in_s"), 1.5)

                # --- rejected attacks get NO cmd137 -------------------------
                s.sendall(mkclient_frame(SPRITE_SKILL_MESSAGE,
                                         attack_body(target_id=NPC_ID,
                                                     target_x=210, target_y=230)))
                s.sendall(mkclient_frame(SPRITE_SKILL_MESSAGE,
                                         attack_body(target_id=999999)))
                s.sendall(mkclient_frame(SPRITE_SKILL_MESSAGE,
                                         attack_body(target_type=3)))
                s.sendall(mkclient_frame(SET_SPRITE_AUTO_GUAJI, b"\x00\x00"))
                quiet = recv_count(s, SPRITE_SKILL_RESULT_MESSAGE, 1, timeout=0.6)
                self.assertNotIn(SPRITE_SKILL_RESULT_MESSAGE, quiet,
                                 "rejected attacks must send nothing")

                # --- respawn: cmd132 resend + HP reset ----------------------
                respawn = recv_count(s, SPRITE_VIEW_MESSAGE, 1, timeout=4)
                frames = respawn.get(SPRITE_VIEW_MESSAGE, [])
                self.assertTrue(frames, "respawn must resend cmd132")
                ids = [struct.unpack(">i", fr[3][0:4])[0] for fr in frames]
                self.assertIn(MONSTER_ID, ids, "respawned monster cmd132")
                row = wait_for_row(state_file, MONSTER_ID,
                                   lambda r: r.get("hp") == 60)
                self.assertEqual(row.get("hp"), 60, "HP reset after respawn")
                self.assertTrue(row.get("alive", False))

                # --- fresh monster is attackable again from full HP ---------
                time.sleep(0.12)
                s.sendall(mkclient_frame(SPRITE_SKILL_MESSAGE, attack_body()))
                again = recv_count(s, SPRITE_SKILL_RESULT_MESSAGE, 1, timeout=5)
                results = again.get(SPRITE_SKILL_RESULT_MESSAGE, [])
                self.assertEqual(len(results), 1, "respawned monster attackable")
                dec = decode_cmd137(results[0][3])
                self.assertEqual(dec["hp"], 45, "second life starts at 60 HP")
                self.assertEqual(dec["max_hp"], 60)
                print("COMBAT_ITEST_OK respawn+second-life hp=45")
        finally:
            stop_server(proc)


class TestCombatLoopOff(unittest.TestCase):
    def test_clean_mode_no_cmd27_no_cmd137(self):
        proc, _ = start_server(combat=0)
        try:
            with socket.create_connection(
                    ("127.0.0.1", TEST_GAME_PORT), timeout=3) as s:
                got = handshake(s)
                pop_frames = list(got.get(SPRITE_VIEW_MESSAGE, []))
                if len(pop_frames) < 5:
                    more = recv_count(s, SPRITE_VIEW_MESSAGE, 5 - len(pop_frames),
                                      timeout=6)
                    pop_frames += more.get(SPRITE_VIEW_MESSAGE, [])
                self.assertEqual(len(pop_frames), 5,
                                 "population still sent in clean mode")
                self.assertNotIn(ROLE_SKILL_MESSAGE, got,
                                 "cmd27 must not be pushed when combat is off")

                s.sendall(mkclient_frame(SPRITE_SKILL_MESSAGE, attack_body()))
                quiet = recv_count(s, SPRITE_SKILL_RESULT_MESSAGE, 1, timeout=0.6)
                self.assertNotIn(SPRITE_SKILL_RESULT_MESSAGE, quiet,
                                 "clean mode must ignore cmd136 (no cmd137)")
                print("COMBAT_ITEST_OFF_OK no_cmd27 no_cmd137")
        finally:
            stop_server(proc)


if __name__ == "__main__":
    unittest.main()
