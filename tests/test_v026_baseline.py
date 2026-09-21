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
        'missing_resource_clear_body'
    ]

    selected_nodes = []

    # Walk the AST to find specific definitions
    for node in ast.walk(tree):
        if isinstance(node, ast.Assign) and node.targets and node.targets[0].id == 'MAGIC':
            selected_nodes.append(node)
        elif isinstance(node, ast.FunctionDef) and node.name in target_names[1:]:
            selected_nodes.append(node)

    # Build the minimal module
    module = ast.Module(body=selected_nodes, type_ignores=[])
    ast.fix_missing_locations(module)

    # Rule 3: Define scope
    scope = {
        "__builtins__": __builtins__,
        "struct": struct,
        "Path": Path,
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
        "parse_update_resource_request", "resource_chunk_bodies", "missing_resource_clear_body"
    ]

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
    # Rule 3: Access functions directly from the scope
    mkframe = server_scope["mkframe"]
    parse_frames = server_scope["parse_frames"]
    decode_client_move133 = server_scope["decode_client_move133"]
    parse_update_resource_request = server_scope["parse_update_resource_request"]
    resource_chunk_bodies = server_scope["resource_chunk_bodies"]
    missing_resource_clear_body = server_scope["missing_resource_clear_body"]

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
        cmd = -42
        payload = b'test'
        actual = self.mkframe(cmd, body=payload, sid=1, sess=1)
        self.assertEqual(struct.unpack(">h", actual[8:10]), cmd)

    # 5. PARSE_FRAMES — NORMAL
    def test_parse_frames_normal(self):
        sid, sess, cmd = 1, 1, 0x0001
        body = b'test'
        # Normal length field = 9 + len(body)
        frame = struct.pack(">HHBIh", server_scope["MAGIC"], 9 + len(body), sid, sess, cmd) + body
        results = self.parse_frames(bytearray(frame))

        self.assertEqual(len(results), 1)
        res = results[0]
        self.assertEqual(res[1], "NORMAL")
        self.assertEqual(res[3], sid)
        self.assertEqual(res[4], sess)
        self.assertEqual(res[5], cmd)
        self.assertEqual(res[6], body)

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
        self.assertEqual(res[3], sid)
        self.assertEqual(res[4], sess)
        self.assertEqual(res[5], cmd)
        self.assertEqual(res[6], body)

        # Buffer must be fully consumed
        remaining_buffer = bytearray(frame)[len(frame):]
        self.assertEqual(len(remaining_buffer), 0)


    # 7. PARSE_FRAMES — BUFFER BEHAVIOR
    def test_parse_frames_incomplete(self):
        # Valid frame minus last byte
        frame = struct.pack(">HHBIh", server_scope["MAGIC"], 11, 1, 1, 1, b't')[:-1]
        results = self.parse_frames(bytearray(frame))
        self.assertEqual(len(results), 0) # Frame must remain buffered

    def test_parse_frames_two_complete(self):
        frame1 = struct.pack(">HHBIh", server_scope["MAGIC"], 11, 1, 1, 1, b'body')
        frame2 = struct.pack(">HHBIh", server_scope["MAGIC"], 11, 2, 2, 2, b'other')
        combined = frame1 + frame2

        results = self.parse_frames(bytearray(combined))
        self.assertEqual(len(results), 2)
        self.assertEqual(results[0][5], 1)
        self.assertEqual(results[1][5], 2)
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


# --- STEP 13: RUN ---
if __name__ == '__main__':
    # Use Verbose mode for detailed test output
    unittest.main(argv=[0])