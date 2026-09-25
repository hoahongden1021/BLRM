"""
Integration check: actual server map-entry send path (cmd10 ENTER_SCENE_READY
-> send_starter_probe_entities -> SPRITE_VIEW_MESSAGE frames), not only
isolated AST-loaded helpers.

Exercises:
  - real `send()` + real socket client receiving frames
  - real `send_starter_probe_entities` / `starter_probe_entities` /
    `data_spawn_entities` / `npc_view_body` from the live server module
  - TRUTHAN_DATA_SPAWN on: valid cmd132 bodies for TEST OBJ1014 and
    RECONSTRUCTED TEST OBJ1155 (hittable)
  - TRUTHAN_DATA_SPAWN off: no cmd132
  - login (cmd277) + join (cmd7) + scene load (cmd32) still work
"""
from __future__ import annotations

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

MAGIC = 0x2425
LOGIN_GAME = 277
JOIN_GAME = 6
JOIN_GAME_RSP = 7
ROLE_ENTER_SCENE = 32
ENTER_SCENE_READY = 10
GET_ROLE_LIST = 20
SPRITE_VIEW_MESSAGE = 132
SPRITE_MOVE_MESSAGE = 133
NPC_FUNCTION_LIST = 120
NPC_FUNCTION_TALK = 73
TEST_PORT_OFFSET = 20000
TEST_GAME_PORT = 19000 + TEST_PORT_OFFSET


def mkclient_frame(cmd, body=b"", sid=0, sess=0, fe=False):
    if fe:
        ln = len(body) + 10
        return (struct.pack(">HH", MAGIC, ln) + bytes([0xFE])
                + struct.pack(">B", sid) + struct.pack(">I", sess)
                + struct.pack(">h", cmd) + body)
    ln = len(body) + 9
    return (struct.pack(">HH", MAGIC, ln) + struct.pack(">B", sid)
            + struct.pack(">I", sess) + struct.pack(">h", cmd) + body)


def parse_all(buf: bytes):
    out = []
    i = 0
    while i + 11 <= len(buf):
        if buf[i:i + 2] != bytes([MAGIC >> 8, MAGIC & 0xFF]):
            i += 1
            continue
        ln = struct.unpack_from(">H", buf, i + 2)[0]
        total = 2 + ln
        if ln < 9 or i + total > len(buf):
            break
        sid = buf[i + 4]
        sess = struct.unpack_from(">I", buf, i + 5)[0]
        cmd = struct.unpack_from(">h", buf, i + 9)[0]
        body = buf[i + 11:i + total]
        out.append((sid, sess, cmd, body, buf[i:i + total]))
        i += total
    return out, buf[i:]


def recv_until(sock: socket.socket, want_cmds, timeout=5.0):
    sock.settimeout(timeout)
    buf = bytearray()
    deadline = time.time() + timeout
    found = {}
    while time.time() < deadline:
        try:
            chunk = sock.recv(65535)
        except socket.timeout:
            break
        if not chunk:
            break
        buf.extend(chunk)
        frames, rest = parse_all(bytes(buf))
        buf = bytearray(rest)
        for fr in frames:
            found.setdefault(fr[2], []).append(fr)
            if all(c in found for c in want_cmds):
                return found
    return found


def recv_count(sock: socket.socket, want_cmd: int, count: int, timeout=10.0):
    """Collect a known number of repeated records without waiting for later actions."""
    sock.settimeout(timeout)
    buf = bytearray()
    deadline = time.time() + timeout
    found = {}
    while time.time() < deadline:
        try:
            chunk = sock.recv(65535)
        except socket.timeout:
            break
        if not chunk:
            break
        buf.extend(chunk)
        frames, rest = parse_all(bytes(buf))
        buf = bytearray(rest)
        for frame in frames:
            found.setdefault(frame[2], []).append(frame)
        if len(found.get(want_cmd, ())) >= count:
            return found
    return found


def start_server(data_spawn: int) -> subprocess.Popen:
    env = os.environ.copy()
    # Isolate each integration case from operator-level probe toggles.
    for key in (
        "TRUTHAN_EXPERIMENTAL_SPAWN", "TRUTHAN_NPC_ASSET_PROBE",
        "TRUTHAN_SINGLE_NPC_PROBE", "TRUTHAN_MOB_ASSET_PROBE",
        "TRUTHAN_CAIYUN_OBJ", "TRUTHAN_HUOHUYAO_OBJ",
    ):
        env.pop(key, None)
    env["TRUTHAN_DATA_SPAWN"] = str(data_spawn)
    # Keep the integration server isolated from an operator's live Android server.
    env["TRUTHAN_PORT_OFFSET"] = str(TEST_PORT_OFFSET)
    env["TRUTHAN_SCENE"] = "9068"
    env["TRUTHAN_STATE_FILE"] = str(
        ROOT / "server" / "truthan_packet_logs" / f"itest_state_{data_spawn}.json"
    )
    # Server print() labels include Chinese scene names; child stdout must be UTF-8.
    env["PYTHONIOENCODING"] = "utf-8"
    env["PYTHONUTF8"] = "1"
    proc = subprocess.Popen(
        [sys.executable, "-u", str(SERVER)],
        cwd=str(ROOT / "server"),
        env=env,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
    )
    # Wait for 19000
    for _ in range(80):
        if proc.poll() is not None:
            out = proc.stdout.read() if proc.stdout else ""
            raise RuntimeError(f"server exited early: {out}")
        try:
            with socket.create_connection(("127.0.0.1", TEST_GAME_PORT), timeout=0.2):
                break
        except OSError:
            time.sleep(0.1)
    else:
        proc.kill()
        raise RuntimeError(f"test server {TEST_GAME_PORT} never opened")
    return proc


def stop_server(proc: subprocess.Popen):
    if proc.poll() is None:
        proc.terminate()
        try:
            proc.wait(timeout=5)
        except subprocess.TimeoutExpired:
            proc.kill()
            proc.wait(timeout=5)


def run_map_entry_flow(data_spawn: int) -> dict:
    proc = start_server(data_spawn)
    try:
        with socket.create_connection(("127.0.0.1", TEST_GAME_PORT), timeout=3) as s:
            s.settimeout(3)
            # LOGIN 277
            s.sendall(mkclient_frame(LOGIN_GAME, fe=True))
            after_login = recv_until(s, [LOGIN_GAME], timeout=4)

            # ROLE LIST
            s.sendall(mkclient_frame(GET_ROLE_LIST))
            after_roles = recv_until(s, [GET_ROLE_LIST], timeout=4)

            # JOIN GAME 6 -> server replies cmd7 JOIN_GAME_RSP, then pushes cmd32
            s.sendall(mkclient_frame(JOIN_GAME))
            after_join = recv_until(
                s, [JOIN_GAME_RSP, ROLE_ENTER_SCENE], timeout=5
            )

            # If server pushed cmd32 already use it; else request
            if ROLE_ENTER_SCENE not in after_join:
                s.sendall(mkclient_frame(45))  # ROLE_ENTER_SCENE_REQUEST
                after_join.update(recv_until(s, [ROLE_ENTER_SCENE], timeout=4))

            # ENTER_SCENE_READY 10 -> triggers send_starter_probe_entities
            s.sendall(mkclient_frame(ENTER_SCENE_READY))
            # Collect anything that arrives, including cmd132
            after_ready = recv_until(s, [ENTER_SCENE_READY], timeout=6)
            population = (
                recv_count(s, SPRITE_VIEW_MESSAGE, 5, timeout=15)
                if data_spawn else {}
            )
            after_ready.update(population)

            s.sendall(mkclient_frame(NPC_FUNCTION_LIST, struct.pack(">i", 230010)))
            after_npc_list = recv_until(s, [NPC_FUNCTION_LIST], timeout=10)
            s.sendall(mkclient_frame(NPC_FUNCTION_TALK, struct.pack(">i", 230010)))
            after_npc_talk = recv_until(s, [NPC_FUNCTION_TALK], timeout=10)

            # movement still accepted (no echo required)
            wx, wy = 180, 230
            b0 = ((wx >> 8) & 0x0F) | ((wy >> 4) & 0xF0)
            bx = wx & 0xFF
            by = wy & 0xFF
            ctl = (1 << 5) | 0
            s.sendall(mkclient_frame(SPRITE_MOVE_MESSAGE, bytes([b0, bx, by, ctl])))
            time.sleep(0.3)

            cmds_seen = {
                LOGIN_GAME: after_login.get(LOGIN_GAME),
                GET_ROLE_LIST: after_roles.get(GET_ROLE_LIST),
                JOIN_GAME_RSP: after_join.get(JOIN_GAME_RSP),
                ROLE_ENTER_SCENE: after_join.get(ROLE_ENTER_SCENE),
                ENTER_SCENE_READY: after_ready.get(ENTER_SCENE_READY),
                SPRITE_VIEW_MESSAGE: after_ready.get(SPRITE_VIEW_MESSAGE, []),
                NPC_FUNCTION_LIST: after_npc_list.get(NPC_FUNCTION_LIST),
                NPC_FUNCTION_TALK: after_npc_talk.get(NPC_FUNCTION_TALK),
            }
            return cmds_seen
    finally:
        stop_server(proc)


class TestMapEntrySendPath(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        # Isolated integration ports mean no operator process needs to stop.
        return

    def test_data_spawn_on_emits_cmd132_starter_population(self):
        cmds = run_map_entry_flow(1)
        # login / join / scene must work
        self.assertIsNotNone(cmds[LOGIN_GAME], "login cmd277 missing")
        self.assertEqual(cmds[LOGIN_GAME][0][3][0], 1, "login success byte")
        self.assertIsNotNone(cmds[JOIN_GAME_RSP], "join cmd7 missing")
        self.assertEqual(cmds[JOIN_GAME_RSP][0][3][0], 0, "join result success")
        self.assertIsNotNone(cmds[ROLE_ENTER_SCENE], "scene load cmd32 missing")
        self.assertIsNotNone(cmds[ENTER_SCENE_READY], "cmd10 ready missing")
        self.assertIsNotNone(cmds[NPC_FUNCTION_LIST], "cmd120 function list missing")
        function_body = cmds[NPC_FUNCTION_LIST][0][3]
        greeting_len = struct.unpack(">H", function_body[:2])[0]
        greeting = function_body[2:2 + greeting_len]
        group_pos = 2 + greeting_len
        self.assertEqual(greeting, b"Local reconstructed guide. Original NPC identity and quest data are unknown.")
        self.assertEqual(function_body[group_pos:group_pos + 4], bytes(4))
        self.assertEqual(function_body[group_pos + 4], 1, "one Talk function")
        self.assertIsNotNone(cmds[NPC_FUNCTION_TALK], "cmd73 talk response missing")
        talk_body = cmds[NPC_FUNCTION_TALK][0][3]
        self.assertEqual(talk_body[:2], bytes([0, 1]), "success and one dialogue topic")
        title_len = struct.unpack(">H", talk_body[2:4])[0]
        title_end = 4 + title_len
        text_len = struct.unpack(">H", talk_body[title_end:title_end + 2])[0]
        text = talk_body[title_end + 2:title_end + 2 + text_len]
        self.assertEqual(text, b"You are in the reconstructed starter area. Explore nearby creatures; original tutorial objectives are not yet recovered.")

        frames = cmds[SPRITE_VIEW_MESSAGE]
        self.assertTrue(frames, "TRUTHAN_DATA_SPAWN=1 must emit cmd132")
        self.assertEqual(len(frames), 5, "scene population has five configured entities")
        found = {}
        for sid, sess, cmd, body, wire in frames:
            if cmd != SPRITE_VIEW_MESSAGE or len(body) < 35:
                continue
            sprite_id = struct.unpack(">i", body[0:4])[0]
            if sprite_id not in (230010, 230011, 230012, 230110, 230111):
                self.fail(f"unexpected population sprite id {sprite_id}")
            self.assertEqual(body[4], 2, "spriteType GNPC")
            x, y = struct.unpack(">hh", body[8:12])
            name_len = struct.unpack(">H", body[33:35])[0]
            pos = 35 + name_len
            ignored = body[pos]
            flag_count = body[pos + 1]
            p = pos + 2 + flag_count
            trigger = body[p]; p += 1
            if trigger == 1:
                p += 1
                p += 2 + 2
                nlen = struct.unpack(">H", body[p:p + 2])[0]; p += 2 + nlen
            country = body[p]; p += 1
            speed = body[p]; p += 1
            level = body[p]; p += 1
            object_data_id = struct.unpack(">h", body[p:p + 2])[0]
            self.assertEqual(body[14], 1, "all population entities selectable")
            expected_hit = 1 if sprite_id >= 230110 else 0
            self.assertEqual(body[15], expected_hit, "kind-specific hit flag")
            found[sprite_id] = (x, y, object_data_id)
        self.assertEqual(set(found), {230010, 230011, 230012, 230110, 230111})
        print("INTEGRATION_ON_OK", found)

    def test_data_spawn_off_emits_no_cmd132(self):
        cmds = run_map_entry_flow(0)
        self.assertIsNotNone(cmds[LOGIN_GAME])
        self.assertEqual(cmds[LOGIN_GAME][0][3][0], 1)
        self.assertIsNotNone(cmds[JOIN_GAME_RSP])
        self.assertEqual(cmds[JOIN_GAME_RSP][0][3][0], 0, "join still works when spawn off")
        self.assertIsNotNone(cmds[ROLE_ENTER_SCENE])
        self.assertIsNotNone(cmds[ENTER_SCENE_READY])
        self.assertEqual(
            cmds[SPRITE_VIEW_MESSAGE], [],
            "TRUTHAN_DATA_SPAWN=0 must not emit cmd132",
        )
        print("INTEGRATION_OFF_OK no_cmd132")


if __name__ == "__main__":
    unittest.main()
