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
        if ln < 9 or i + ln > len(buf):
            break
        sid = buf[i + 4]
        sess = struct.unpack_from(">I", buf, i + 5)[0]
        cmd = struct.unpack_from(">h", buf, i + 9)[0]
        body = buf[i + 11:i + ln]
        out.append((sid, sess, cmd, body, buf[i:i + ln]))
        i += ln
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


def start_server(data_spawn: int) -> subprocess.Popen:
    env = os.environ.copy()
    env["TRUTHAN_DATA_SPAWN"] = str(data_spawn)
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
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
        encoding="utf-8",
        errors="replace",
    )
    # Wait for 19000
    for _ in range(80):
        if proc.poll() is not None:
            out = proc.stdout.read() if proc.stdout else ""
            raise RuntimeError(f"server exited early: {out}")
        try:
            with socket.create_connection(("127.0.0.1", 19000), timeout=0.2):
                break
        except OSError:
            time.sleep(0.1)
    else:
        proc.kill()
        raise RuntimeError("server 19000 never opened")
    return proc


def stop_server(proc: subprocess.Popen):
    if proc.poll() is None:
        proc.terminate()
        try:
            proc.wait(timeout=5)
        except subprocess.TimeoutExpired:
            proc.kill()
            proc.wait(timeout=5)
    if proc.stdout:
        try:
            proc.stdout.close()
        except OSError:
            pass


def run_map_entry_flow(data_spawn: int) -> dict:
    proc = start_server(data_spawn)
    try:
        with socket.create_connection(("127.0.0.1", 19000), timeout=3) as s:
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
            after_ready = recv_until(
                s, [ENTER_SCENE_READY, SPRITE_VIEW_MESSAGE, SPRITE_MOVE_MESSAGE],
                timeout=6,
            )

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
            }
            return cmds_seen
    finally:
        stop_server(proc)


class TestMapEntrySendPath(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        # Kill any leftover local server that would steal port 19000.
        import subprocess
        subprocess.run(
            ["powershell", "-NoProfile", "-Command",
             "Get-CimInstance Win32_Process -Filter \"Name like 'python%'\" | "
             "Where-Object { $_.CommandLine -match 'truthan_local_server_v026' } | "
             "ForEach-Object { Stop-Process -Id $_.ProcessId -Force }"],
            capture_output=True, timeout=30,
        )
        time.sleep(0.5)

    def test_data_spawn_on_emits_cmd132_test_obj1014(self):
        cmds = run_map_entry_flow(1)
        # login / join / scene must work
        self.assertIsNotNone(cmds[LOGIN_GAME], "login cmd277 missing")
        self.assertEqual(cmds[LOGIN_GAME][0][3][0], 1, "login success byte")
        self.assertIsNotNone(cmds[JOIN_GAME_RSP], "join cmd7 missing")
        self.assertEqual(cmds[JOIN_GAME_RSP][0][3][0], 0, "join result success")
        self.assertIsNotNone(cmds[ROLE_ENTER_SCENE], "scene load cmd32 missing")
        self.assertIsNotNone(cmds[ENTER_SCENE_READY], "cmd10 ready missing")

        frames = cmds[SPRITE_VIEW_MESSAGE]
        self.assertTrue(frames, "TRUTHAN_DATA_SPAWN=1 must emit cmd132")
        # Find TEST OBJ1014 (sprite 220010) and RECONSTRUCTED OBJ1155 (220011)
        found_npc = None
        found_monster = None
        for sid, sess, cmd, body, wire in frames:
            if cmd != SPRITE_VIEW_MESSAGE or len(body) < 35:
                continue
            sprite_id = struct.unpack(">i", body[0:4])[0]
            if sprite_id not in (220010, 220011):
                continue
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
            if sprite_id == 220010:
                self.assertEqual((x, y), (203, 253))
                self.assertEqual(object_data_id, 1014)
                found_npc = (sprite_id, x, y, object_data_id)
            else:
                # RECONSTRUCTED monster: assets VERIFIED, position walkable,
                # identity vs original spawn UNKNOWN.
                self.assertEqual((x, y), (196, 238))
                self.assertEqual(object_data_id, 1155)
                found_monster = (sprite_id, x, y, object_data_id)
        self.assertIsNotNone(found_npc, "TEST OBJ1014 sprite 220010 not in cmd132")
        self.assertIsNotNone(
            found_monster, "TEST OBJ1155 sprite 220011 not in cmd132"
        )
        # canHit is in the fixed header: byte 16 of body (after auto/init at 12-13)
        # Layout from VERIFIED encoder: ... can* 14..16, hp 17..
        # Actually verify canHit via known offsets: body[15] is canSelect? Use
        # encoder-known field: after xy(8-11) auto/init(12-13) can*(14-16).
        # Safer: re-parse the monster body for canHit from the verified layout.
        mon_body = None
        for sid, sess, cmd, body, wire in frames:
            if cmd == SPRITE_VIEW_MESSAGE and len(body) >= 35:
                if struct.unpack(">i", body[0:4])[0] == 220011:
                    mon_body = body
                    break
        self.assertIsNotNone(mon_body, "monster body missing for canHit check")
        # From npc_view_body / VERIFIED layout: header 0..7, xy 8..11,
        # auto 12, init 13, can_select 14, can_hit 15 (i8 each after xy).
        # Confirm against encoder: send path uses same layout as run112928.
        # body[14] can_select, body[15] can_hit for GNPC without horse/buff.
        self.assertEqual(mon_body[14], 1, "monster can_select")
        self.assertEqual(mon_body[15], 1, "monster can_hit")
        print("INTEGRATION_ON_OK", found_npc, found_monster)

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
