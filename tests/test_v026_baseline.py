import unittest
import struct
import sys
import ast
from pathlib import Path

# --- STEP 1 & 2: AST LOADER ---

def load_ast_helpers():
    """
    Reads a Python file using the AST module, extracts the bodies of specified
    functions and constants, and executes only them in a controlled scope,
    bypassing server startup code.
    """
    # Rule 1: SERVER_PATH must be based on __file__
    SERVER_PATH = (
        Path(__file__).resolve().parents[1]
        / "server"
        / "truthan_local_server_v026.py"
    )

    if not SERVER_PATH.exists():
        raise FileNotFoundError(f"Server file not found at expected path: {SERVER_PATH}")

    # Read source code, ensuring UTF-8 decoding
    with open(SERVER_PATH, 'r', encoding='utf-8') as f:
        source_code = f.read()

    # Rule 2: Parse full source with ast.parse
    try:
        tree = ast.parse(source_code)
    except SyntaxError as e:
        print(f"AST Parse Error (Syntax): {e}")
        raise

    # Identify required nodes
    target_names = [
        'MAGIC', 'mkframe', 'parse_frames', 'decode_client_move133',
        'parse_update_resource_request', 'resource_chunk_bodies',
        'missing_resource_clear_body', 'pstr', 'npc_view_body',
        'data_spawn_entities',
    ]

    selected_nodes = []

    # Walk the AST to find specific definitions / module-level assignments.
    # DATA_SPAWN / DATA_SPAWN_FIXTURES are injected below (fixture assign would
    # work, but DATA_SPAWN reads os.environ which this loader does not import).
    assign_ok = {'MAGIC'}
    for node in ast.walk(tree):
        if isinstance(node, ast.Assign) and node.targets:
            tgt = node.targets[0]
            if isinstance(tgt, ast.Name) and tgt.id in assign_ok:
                selected_nodes.append(node)
        elif isinstance(node, ast.FunctionDef) and node.name in target_names:
            selected_nodes.append(node)

    # Build the minimal module
    module = ast.Module(body=selected_nodes, type_ignores=[])
    ast.fix_missing_locations(module)

    # Rule 3: Define scope
    scope = {
        "__builtins__": __builtins__,
        "struct": struct,
        "Path": Path,
        # data_spawn_entities path (switch-off must not need ROLE/os)
        "DATA_SPAWN": False,
        "DATA_SPAWN_FIXTURES": (),
        "current_scene_id": lambda: 9068,
        "_validated_probe_entity": lambda **kw: dict(kw),
    }

    # Execute the module to define the required names in scope
    try:
        exec(
            compile(module, str(SERVER_PATH), "exec"),
            scope,
        )
    except Exception as e:
        print(f"Execution Error: {e}")
        raise

    return scope

# --- STEP 3: LOADER SMOKE CHECK & EXECUTION ---
try:
    server_scope = load_ast_helpers()

    # Smoke Test: Check if helpers were loaded
    helpers = [
        "MAGIC", "mkframe", "parse_frames", "decode_client_move133",
        "parse_update_resource_request", "resource_chunk_bodies",
        "missing_resource_clear_body", "pstr", "npc_view_body",
        "data_spawn_entities", "DATA_SPAWN", "DATA_SPAWN_FIXTURES",
    ]
    # DATA_SPAWN* are injected defaults, not AST-loaded (see loader comments).

    found_helpers = []
    for name in helpers:
        if name in server_scope:
            found_helpers.append(name)
        else:
            raise NameError(f"Helper '{name}' not found in scope.")

    # Rule 5: Smoke check
    print("HELPERS_LOADED")
    print(f"Loaded helpers: {', '.join(found_helpers)}")

except Exception as e:
    # Failure of smoke test
    print(f"LOAD ERROR: {e}")
    sys.exit(1)


# --- STEP 4-11: TEST IMPLEMENTATION ---

class TestV026Baseline(unittest.TestCase):
    # Rule 3: Access functions directly from the scope.
    # staticmethod keeps plain functions from becoming bound methods (self
    # would otherwise shift every positional argument).
    mkframe = staticmethod(server_scope["mkframe"])
    parse_frames = staticmethod(server_scope["parse_frames"])
    decode_client_move133 = staticmethod(server_scope["decode_client_move133"])
    parse_update_resource_request = staticmethod(
        server_scope["parse_update_resource_request"]
    )
    resource_chunk_bodies = staticmethod(server_scope["resource_chunk_bodies"])
    missing_resource_clear_body = staticmethod(
        server_scope["missing_resource_clear_body"]
    )

    # 4. MKFRAME TESTS
    def test_mkframe_empty(self):
        # A. empty body
        payload = b''
        sid = 1
        sess = 1
        frame_len = len(payload) + 9
        expected = struct.pack(">H", server_scope["MAGIC"]) + struct.pack(">H", frame_len) + \
                   struct.pack(">B", sid) + struct.pack(">I", sess) + \
                   struct.pack(">h", 0x0001) + payload
        self.assertEqual(self.mkframe(0x0001, body=payload, sid=sid, sess=sess), expected)

    def test_mkframe_negative(self):
        # D. negative command -42
        # Layout: MAGIC u16 | len u16 | sid u8 | sess u32 | cmd i16 | body
        # cmd starts at offset 9 (2+2+1+4), not 8.
        cmd = -42
        payload = b'test'
        actual = self.mkframe(cmd, body=payload, sid=1, sess=1)
        self.assertEqual(struct.unpack(">h", actual[9:11])[0], cmd)

    # 5. PARSE_FRAMES — NORMAL
    # parse_frames returns (fr, wire, sid, sess, cmd, body)
    def test_parse_frames_normal(self):
        sid, sess, cmd = 1, 1, 0x0001
        body = b'test'
        # Normal length field = 9 + len(body)
        frame = struct.pack(">HHBIh", server_scope["MAGIC"], 9 + len(body), sid, sess, cmd) + body
        results = self.parse_frames(bytearray(frame))

        self.assertEqual(len(results), 1)
        res = results[0]
        self.assertEqual(res[1], "NORMAL")
        self.assertEqual(res[2], sid)
        self.assertEqual(res[3], sess)
        self.assertEqual(res[4], cmd)
        self.assertEqual(res[5], body)

        # Buffer must be fully consumed (remaining data = 0)
        remaining_buffer = bytearray(frame)[len(frame):]
        self.assertEqual(len(remaining_buffer), 0)

    # 6. PARSE_FRAMES — FE PREAUTH
    def test_parse_frames_fe_preauth(self):
        sid, sess, cmd = 1, 1, 0x0002
        body = b'fe_data'
        # FE layout: length = 10 + len(body)
        frame = struct.pack(">HHBBIh", server_scope["MAGIC"], 10 + len(body), 0xFE, sid, sess, cmd) + body
        results = self.parse_frames(bytearray(frame))

        self.assertEqual(len(results), 1)
        res = results[0]
        self.assertEqual(res[1], "FE-PREAUTH")
        self.assertEqual(res[2], sid)
        self.assertEqual(res[3], sess)
        self.assertEqual(res[4], cmd)
        self.assertEqual(res[5], body)

        # Buffer must be fully consumed
        remaining_buffer = bytearray(frame)[len(frame):]
        self.assertEqual(len(remaining_buffer), 0)


    # 7. PARSE_FRAMES — BUFFER BEHAVIOR
    def test_parse_frames_incomplete(self):
        # Valid frame minus last body byte: MAGIC,len,sid,sess,cmd then partial body
        full = struct.pack(
            ">HHBIh", server_scope["MAGIC"], 11, 1, 1, 1
        ) + b't'
        frame = full[:-1]
        results = self.parse_frames(bytearray(frame))
        self.assertEqual(len(results), 0) # Frame must remain buffered

    def test_parse_frames_two_complete(self):
        frame1 = struct.pack(
            ">HHBIh", server_scope["MAGIC"], 13, 1, 1, 1
        ) + b'body'
        frame2 = struct.pack(
            ">HHBIh", server_scope["MAGIC"], 14, 2, 2, 2
        ) + b'other'
        combined = frame1 + frame2

        results = self.parse_frames(bytearray(combined))
        self.assertEqual(len(results), 2)
        self.assertEqual(results[0][4], 1)  # cmd
        self.assertEqual(results[1][4], 2)
        remaining_buffer = bytearray(combined)[len(combined):]
        self.assertEqual(len(remaining_buffer), 0)


    # 8. MOVEMENT — EXACT COMPACT 4 BYTE FORMAT
    def test_decode_move133_exact_compact(self):
        world_x, world_y, direction, action_low = 0x123, 0x456, 5, 0x0A

        b0 = (((world_y >> 8) & 0x0F) << 4) | ((world_x >> 8) & 0x0F)
        bx = world_x & 0xFF
        by = world_y & 0xFF
        ctl = ((direction & 7) << 5) | (action_low & 0x1F)
        body = bytes([b0, bx, by, ctl])

        decoded = self.decode_client_move133(body)

        self.assertEqual(decoded["world_x"], world_x)
        self.assertEqual(decoded["world_y"], world_y)
        self.assertEqual(decoded["direction"], direction)
        self.assertEqual(decoded["control"], ctl)
        self.assertEqual(decoded["action_low"], action_low)
        self.assertEqual(decoded["extra"], b"")

    def test_decode_move133_too_short(self):
        short_body = struct.pack(">H", 50)
        self.assertIsNone(self.decode_client_move133(short_body))

    # 9. RESOURCE REQUEST PARSER
    def test_parse_resource_request_empty(self):
        self.assertEqual(self.parse_update_resource_request(b''), [])

    def test_parse_resource_request_multiple_records(self):
        body = struct.pack('>B', 2) + struct.pack('>B h', 0, 0x0010) + struct.pack('>B h', 2, 0x0020)
        results = self.parse_update_resource_request(body)
        self.assertEqual(len(results), 2)

    def test_parse_resource_request_signed_record(self):
        # Signed short resource ID = -1 (0xFFFF)
        body = struct.pack('>B B h', 1, 1, -1)
        results = self.parse_update_resource_request(body)
        self.assertEqual(results[0], (1, -1))

    def test_parse_resource_request_truncated(self):
        # Count = 2, but only 1 record provided
        body = struct.pack('>B', 2) + struct.pack('>B h', 0, 0x0010)
        results = self.parse_update_resource_request(body)
        self.assertEqual(len(results), 1)

    # 10. RESOURCE CHUNK GENERATOR
    def test_resource_chunk_generator_one(self):
        dtype, rid = 0x00, 0x0010
        data = b"abcdef"
        chunk_size = 10

        results = list(self.resource_chunk_bodies(dtype, rid, data, chunk_size))
        self.assertEqual(len(results), 1)

        # Decoding helper
        def decode_chunk(b):
            status = b[0]
            dtype_check = b[1]
            rid_check = struct.unpack(">h", b[2:4])[0]
            int_field = struct.unpack(">i", b[4:8])[0]
            size = struct.unpack(">h", b[8:10])[0]
            payload = b[10:10+size]
            return status, dtype_check, rid_check, int_field, size, payload

        status, dtype_c, rid_c, int_f, size, payload = decode_chunk(results[0])

        self.assertEqual(status, 1)
        self.assertEqual(dtype_c, dtype)
        self.assertEqual(rid_c, rid)
        self.assertEqual(int_f, 6) # TOTAL_SIZE
        self.assertEqual(size, 6)
        self.assertEqual(payload, data)

    def test_resource_chunk_generator_multi(self):
        dtype, rid, chunk_size = 0x00, 0x0010, 4
        data = b"abcdefghij"

        results = list(self.resource_chunk_bodies(dtype, rid, data, chunk_size))
        self.assertEqual(len(results), 3)

        # Decoding helper
        def decode_chunk(b):
            status = b[0]
            dtype_check = b[1]
            rid_check = struct.unpack(">h", b[2:4])[0]
            int_field = struct.unpack(">i", b[4:8])[0]
            size = struct.unpack(">h", b[8:10])[0]
            payload = b[10:10+size]
            return status, dtype_check, rid_check, int_field, size, payload

        # Check first chunk
        s1, dt1, r1, i1, z1, p1 = decode_chunk(results[0])
        self.assertEqual(i1, 10) # Total size
        self.assertEqual(p1, data[0:4])

        # Check second chunk
        s2, dt2, r2, i2, z2, p2 = decode_chunk(results[1])
        self.assertEqual(i2, 4) # Offset
        self.assertEqual(p2, data[4:8])

        # Check third chunk
        s3, dt3, r3, i3, z3, p3 = decode_chunk(results[2])
        self.assertEqual(i3, 8) # Offset

    def test_resource_chunk_generator_zero(self):
        dtype, rid = 0x00, 0x0010
        results = list(self.resource_chunk_bodies(dtype, rid, b''))
        self.assertEqual(len(results), 1)

        # Decoding helper
        def decode_chunk(b):
            status = b[0]
            dtype_check = b[1]
            rid_check = struct.unpack(">h", b[2:4])[0]
            int_field = struct.unpack(">i", b[4:8])[0]
            size = struct.unpack(">h", b[8:10])[0]
            payload = b[10:10+size]
            return status, dtype_check, rid_check, int_field, size, payload

        status, dt_c, rid_c, int_f, size, payload = decode_chunk(results[0])
        self.assertEqual(size, 0)
        self.assertEqual(int_f, 0)


    # 11. MISSING RESOURCE CLEAR
    def test_missing_resource_clear_body(self):
        dtype, rid = 0x02, 0x0055
        expected = bytes([0, 1, dtype]) + struct.pack(">h", rid)
        self.assertEqual(self.missing_resource_clear_body(dtype, rid), expected)

    # 12. NPC VIEW BODY (cmd132 GNPC add) — decode field order from encoder
    def test_npc_view_body_header_and_fields(self):
        body = server_scope["npc_view_body"](
            sprite_id=220010, name="TEST OBJ1014", level=1, object_data_id=1014,
            x=203, y=253, hp=100, max_hp=100, mp=100, max_mp=100,
            can_select=1, can_hit=0, speed=40,
            appearance_effect_gate=1, flags=bytes([3]),
        )
        # Header: spriteId i32, spriteType i8=2, exType i8, gate i8, remove i8=0
        sprite_id = struct.unpack(">i", body[0:4])[0]
        sprite_type, ex_type, gate, remove = body[4], body[5], body[6], body[7]
        self.assertEqual(sprite_id, 220010)
        self.assertEqual(sprite_type, 2)
        self.assertEqual(ex_type, 0)
        self.assertEqual(gate, 1)
        self.assertEqual(remove, 0)

        # GNPC: x,y i16; autoControl i8; initialState i8
        x, y = struct.unpack(">hh", body[8:12])
        auto_ctl, initial_state = body[12], body[13]
        self.assertEqual(x, 203)
        self.assertEqual(y, 253)
        self.assertEqual(auto_ctl, 0)
        self.assertEqual(initial_state, 0)

        # block C: canSelect, canHit, relationState; then HP/MP i32 x4
        can_select, can_hit, relation = body[14], body[15], body[16]
        hp, max_hp, mp, max_mp = struct.unpack(">iiii", body[17:33])
        self.assertEqual(can_select, 1)
        self.assertEqual(can_hit, 0)
        self.assertEqual(relation, 0)
        self.assertEqual((hp, max_hp, mp, max_mp), (100, 100, 100, 100))

        # name str: u16 length + utf-8
        name_len = struct.unpack(">H", body[33:35])[0]
        name = body[35:35 + name_len].decode("utf-8")
        self.assertEqual(name, "TEST OBJ1014")
        pos = 35 + name_len
        # ignored byte, flagCount=1, flag[0]=3, trigger=0, country=0, speed, level
        self.assertEqual(body[pos], 0)          # ignored
        self.assertEqual(body[pos + 1], 1)      # flag count
        self.assertEqual(body[pos + 2], 3)      # flag byte
        self.assertEqual(body[pos + 3], 0)      # trigger_event
        self.assertEqual(body[pos + 4], 0)      # country
        self.assertEqual(body[pos + 5], 40)     # speed u8
        self.assertEqual(body[pos + 6], 1)      # level u8
        object_data_id = struct.unpack(">h", body[pos + 7:pos + 9])[0]
        self.assertEqual(object_data_id, 1014)

        # block V: imageCount i8=0, actionType/actionId/direction i8 x3 = 0
        v = pos + 9
        self.assertEqual(body[v], 0)
        self.assertEqual(body[v + 1:v + 4], bytes([0, 0, 0]))
        self.assertEqual(body[v + 4], -1 & 0xFF)  # horse marker -1 as signed byte
        self.assertEqual(body[v + 5], 0)          # buffCount
        self.assertEqual(body[v + 6], 0)          # ignored view byte
        self.assertEqual(body[v + 7], -1 & 0xFF)  # wuxing
        self.assertEqual(body[v + 8], -1 & 0xFF)  # fabao
        self.assertEqual(len(body), v + 9)

    def test_npc_view_body_rejects_zero_max_mp(self):
        with self.assertRaises(ValueError):
            server_scope["npc_view_body"](
                sprite_id=1, name="X", level=1, object_data_id=1014,
                x=0, y=0, hp=1, max_hp=1, mp=0, max_mp=0,
                can_select=1,
            )

    # 13. DATA-DRIVEN SPAWN SWITCH — OFF must stay empty / ON uses fixtures
    def test_data_spawn_switch_off_returns_empty(self):
        server_scope["DATA_SPAWN"] = False
        server_scope["DATA_SPAWN_FIXTURES"] = (
            {"label": "TEST", "name": "TEST OBJ1014", "object_data_id": 1014},
        )
        self.assertEqual(server_scope["data_spawn_entities"](), [])

    def test_data_spawn_switch_on_uses_test_fixture_first(self):
        server_scope["DATA_SPAWN"] = True
        server_scope["DATA_SPAWN_FIXTURES"] = (
            {
                "label": "TEST",
                "sprite_id": 220010,
                "name": "TEST OBJ1014",
                "object_data_id": 1014,
                "x": 203,
                "y": 253,
                "flags": bytes([3]),
            },
        )
        server_scope["current_scene_id"] = lambda: 9068
        ents = server_scope["data_spawn_entities"]()
        self.assertEqual(len(ents), 1)
        self.assertEqual(ents[0]["name"], "TEST OBJ1014")
        self.assertEqual(ents[0]["object_data_id"], 1014)
        self.assertNotIn("label", ents[0])

    def test_data_spawn_switch_on_wrong_scene_raises(self):
        server_scope["DATA_SPAWN"] = True
        server_scope["DATA_SPAWN_FIXTURES"] = ({"name": "TEST"},)
        server_scope["current_scene_id"] = lambda: 7000
        with self.assertRaises(ValueError):
            server_scope["data_spawn_entities"]()


# --- STEP 13: RUN ---
if __name__ == '__main__':
    # Use Verbose mode for detailed test output
    unittest.main(argv=[0])