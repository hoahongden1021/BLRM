"""Unit tests for server/truthan_combat.py.

Every decoder here mirrors a concrete client reader in
build/research/jadx/sources/com/t4game (classes.dex):
  cmd136 parse  <- GameWorld.sendAttackMessage() writer
  cmd137 body   <- GameWorld.processSpriteSkillResultMessage() reader
  cmd27 body    <- GameWorld.processRoleSkillMessage()/readGeniusTree()/readRoleSkill()
"""
import struct
import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "server"))

import truthan_combat as combat


def client_attack_body(target_id=230110, target_type=2, target_x=210,
                       target_y=232, action_type=5, action_id=9, dir_=3,
                       skill_id=-1, src_x=180, src_y=230, speed=40):
    """Exact GameWorld.sendAttackMessage() field order (19 bytes)."""
    return struct.pack(">ibhhbbbhhhb", target_id, target_type, target_x,
                       target_y, action_type, action_id, dir_, skill_id,
                       src_x, src_y, speed)


def monster_ent(sprite_id=230110, x=210, y=232, hp=60, max_hp=60, kind="monster"):
    return {
        sprite_id: {
            "sprite_id": sprite_id, "name": "Fire Fox", "kind": kind,
            "x": x, "y": y, "hp": hp, "max_hp": max_hp, "mp": 20,
            "max_mp": 20, "speed": 40, "can_hit": 0 if kind == "npc" else 1,
            "can_select": 1, "respawn_at": None,
        }
    }


def make_session(cfg=None, ents=None, view_bodies=None):
    cfg = cfg or combat.CombatConfig(attack_range=64, cooldown_ms=500,
                                      damage=15, respawn_ms=5000)
    ents = ents if ents is not None else monster_ent()
    view_bodies = view_bodies or {sid: b"VIEWBODY" + bytes([i])
                                  for i, sid in enumerate(ents)}
    return combat.CombatSession(ents, view_bodies, cfg, player_id=100001,
                                player_pos=(180, 230))


class TestAttackRequest(unittest.TestCase):
    def test_roundtrip_matches_send_attack_message_layout(self):
        req = combat.parse_attack_request(client_attack_body())
        self.assertEqual(req["target_id"], 230110)
        self.assertEqual(req["target_type"], 2)
        self.assertEqual(req["target_x"], 210)
        self.assertEqual(req["target_y"], 232)
        self.assertEqual(req["src_action_type"], 5)
        self.assertEqual(req["src_action_id"], 9)
        self.assertEqual(req["src_dir"], 3)
        self.assertEqual(req["skill_id"], -1)
        self.assertEqual(req["src_x"], 180)
        self.assertEqual(req["src_y"], 230)
        self.assertEqual(req["speed_byte"], 40)

    def test_rejects_wrong_length(self):
        with self.assertRaises(ValueError):
            combat.parse_attack_request(client_attack_body()[:-1])
        with self.assertRaises(ValueError):
            combat.parse_attack_request(b"")


class TestRoleSkillBody(unittest.TestCase):
    def test_decodes_with_client_reader_order(self):
        cfg = combat.CombatConfig(attack_range=64)
        body = combat.build_role_skill_body(cfg)
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
            action_id = struct.unpack_from(">b", body, pos)[0]; pos += 1
            obj_id = struct.unpack_from(">h", body, pos)[0]; pos += 2
            self.assertEqual(obj_id, -1, "no seId short follows objId -1")
            actions.append((action_id, obj_id))
        self.assertEqual(pos, len(body), "reader must consume the whole body")
        self.assertEqual(tree_id, 1)
        self.assertEqual(name_len, 0)
        self.assertEqual(blob, b"\x00", "empty genius tree: u8 entryCount 0")
        self.assertEqual(blob[0], 0)
        self.assertEqual(skill_count, 1)
        self.assertEqual(skill_id, -1)
        self.assertEqual(is_normal, 1, "boolean true selects the normal-attack branch")
        self.assertEqual(hit_distance, 64)
        self.assertEqual(action_count, 3, "heroAttack() reads indices [1] and [2]")
        self.assertEqual(actions, [(9, -1), (9, -1), (9, -1)])

    def test_attack_action_range_validation(self):
        with self.assertRaises(ValueError):
            combat.CombatConfig(attack_action_id=20)
        with self.assertRaises(ValueError):
            combat.CombatConfig(attack_action_id=-1)


class TestSkillResultBody(unittest.TestCase):
    def build(self, **kw):
        base = dict(source_id=100001, target_id=230110, damage=15, hp=45,
                    mp=20, max_hp=60, max_mp=20, speed=40,
                    player_hp=100, player_mp=100)
        base.update(kw)
        return combat.build_skill_result_body(**base)

    def test_length_is_66(self):
        self.assertEqual(len(self.build()), combat.RESULT_BODY_LEN)
        self.assertEqual(combat.RESULT_BODY_LEN, 66)

    def test_header_and_property_decode_with_client_order(self):
        body = self.build()
        pos = 0
        flags = body[pos]; pos += 1
        src_id = struct.unpack_from(">i", body, pos)[0]; pos += 4
        src_type = body[pos]; pos += 1
        tgt_id = struct.unpack_from(">i", body, pos)[0]; pos += 4
        tgt_type = body[pos]; pos += 1
        pos += 2                                   # ignored short
        move_mode = body[pos]; pos += 1
        src_hp = struct.unpack_from(">i", body, pos)[0]; pos += 4
        src_mp = struct.unpack_from(">i", body, pos)[0]; pos += 4
        pos += 1                                   # ignored byte
        src_dir = body[pos]; pos += 1
        se_records = []
        for _ in range(3):
            action_id = struct.unpack_from(">b", body, pos)[0]; pos += 1
            obj_id = struct.unpack_from(">h", body, pos)[0]; pos += 2
            self.assertEqual(obj_id, -1, "seId short only follows objId != -1")
            se_records.append((action_id, obj_id))
        prop_count = body[pos]; pos += 1
        prop_id = struct.unpack_from(">i", body, pos)[0]; pos += 4
        prop_type = body[pos]; pos += 1
        hit_result = body[pos]; pos += 1
        value1 = struct.unpack_from(">i", body, pos)[0]; pos += 4
        value2 = struct.unpack_from(">i", body, pos)[0]; pos += 4
        hp = struct.unpack_from(">i", body, pos)[0]; pos += 4
        mp = struct.unpack_from(">i", body, pos)[0]; pos += 4
        max_hp = struct.unpack_from(">i", body, pos)[0]; pos += 4
        max_mp = struct.unpack_from(">i", body, pos)[0]; pos += 4
        speed = body[pos]; pos += 1
        wuxing = struct.unpack_from(">b", body, pos)[0]; pos += 1
        self.assertEqual(pos, len(body), "reader must consume the whole body")
        self.assertEqual(flags, 0)
        self.assertEqual(src_id, 100001)
        self.assertEqual(src_type, combat.GUSER_TYPE)
        self.assertEqual(tgt_id, 230110)
        self.assertEqual(tgt_type, combat.GNPC_TYPE)
        self.assertNotIn(move_mode, (0, 1), "mode 2 skips the destination shorts")
        self.assertEqual(src_hp, 100, "player HP must be the tracked value")
        self.assertEqual(src_mp, 100)
        self.assertEqual(se_records, [(-1, -1)] * 3)
        self.assertEqual(prop_count, 1)
        self.assertEqual(prop_id, 230110)
        self.assertEqual(prop_type, 2)
        self.assertEqual(hit_result, 5, "5 renders the normal red damage number")
        self.assertEqual(value1, 15)
        self.assertEqual(value2, 0)
        self.assertEqual((hp, mp, max_hp, max_mp), (45, 20, 60, 20))
        self.assertEqual(speed, 40)
        self.assertEqual(wuxing, -1)

    def test_player_hp_passthrough(self):
        body = self.build(player_hp=57, player_mp=42)
        # flags(1)+srcId(4)+srcType(1)+tgtId(4)+tgtType(1)+ignored(2)+mode(1)=14
        src_hp, src_mp = struct.unpack_from(">ii", body, 14)
        self.assertEqual((src_hp, src_mp), (57, 42))


class TestCombatSession(unittest.TestCase):
    def test_damage_sequence_to_death_and_hp_floor(self):
        session = make_session()
        hp_trace = []
        for i in range(4):
            out = session.handle_attack(client_attack_body(), now_ms=1000.0 + i * 1000)
            self.assertTrue(out.accepted, out.reason)
            hp_trace.append(out.new_hp)
            self.assertEqual(out.died, i == 3, "death only on the final hit")
        self.assertEqual(hp_trace, [45, 30, 15, 0])
        self.assertTrue(out.died)
        self.assertEqual(session.entities[230110]["hp"], 0)
        self.assertIsNotNone(session.entities[230110]["respawn_at"])
        self.assertEqual(session.death_count, 1)

        rejected = session.handle_attack(client_attack_body(), now_ms=99000.0)
        self.assertFalse(rejected.accepted)
        self.assertEqual(rejected.reason, "target_dead")

    def test_npc_is_protected(self):
        ents = monster_ent(sprite_id=230010, kind="npc")
        session = make_session(ents=ents)
        out = session.handle_attack(
            client_attack_body(target_id=230010, target_type=2), now_ms=1000.0)
        self.assertFalse(out.accepted)
        self.assertEqual(out.reason, "npc_protected")

    def test_unknown_target_and_wrong_type_rejected(self):
        session = make_session()
        out = session.handle_attack(
            client_attack_body(target_id=999999), now_ms=1000.0)
        self.assertEqual(out.reason, "unknown_target")
        out = session.handle_attack(
            client_attack_body(target_type=3), now_ms=2000.0)
        self.assertEqual(out.reason, "target_type_not_gnpc")

    def test_can_hit_zero_rejected(self):
        ents = monster_ent()
        ents[230110]["can_hit"] = 0
        session = make_session(ents=ents)
        out = session.handle_attack(client_attack_body(), now_ms=1000.0)
        self.assertEqual(out.reason, "not_hittable")

    def test_range_boundary_and_rejection(self):
        # monster at (210,232), player at (180,230): distance ~30.07
        session = make_session()
        out = session.handle_attack(client_attack_body(), now_ms=1000.0)
        self.assertTrue(out.accepted)
        self.assertAlmostEqual(out.distance, 30.0666, places=3)

        far = make_session(ents=monster_ent(x=400, y=400))
        out = far.handle_attack(
            client_attack_body(target_x=400, target_y=400), now_ms=1000.0)
        self.assertFalse(out.accepted)
        self.assertEqual(out.reason, "out_of_range")

        # distance exactly equal to the range is still accepted
        edge = make_session(ents=monster_ent(x=244, y=230))
        out = edge.handle_attack(
            client_attack_body(target_x=244, target_y=230), now_ms=1000.0)
        self.assertTrue(out.accepted, out.reason)
        self.assertEqual(out.distance, 64.0)

    def test_cooldown_rejects_faster_than_configured(self):
        session = make_session()
        first = session.handle_attack(client_attack_body(), now_ms=1000.0)
        self.assertTrue(first.accepted)
        early = session.handle_attack(client_attack_body(), now_ms=1300.0)
        self.assertFalse(early.accepted)
        self.assertEqual(early.reason, "cooldown")
        later = session.handle_attack(client_attack_body(), now_ms=1600.0)
        self.assertTrue(later.accepted, later.reason)

    def test_respawn_due_returns_view_body_and_resets_hp(self):
        session = make_session(view_bodies={230110: b"VIEWBODY"})
        out = session.handle_attack(client_attack_body(), now_ms=1000.0)
        self.assertTrue(out.accepted)
        # force lethal: set hp low then kill
        session.entities[230110]["hp"] = 5
        out = session.handle_attack(client_attack_body(), now_ms=2000.0)
        self.assertTrue(out.died)
        self.assertEqual(out.new_hp, 0)

        self.assertEqual(session.due_respawns(now_ms=3000.0), [])
        self.assertAlmostEqual(
            session.seconds_to_next_respawn(now_ms=3000.0), (7000 - 3000) / 1000)
        due = session.due_respawns(now_ms=7001.0)
        self.assertEqual(len(due), 1)
        sprite_id, body, ent = due[0]
        self.assertEqual(sprite_id, 230110)
        self.assertEqual(body, b"VIEWBODY")
        self.assertEqual(ent["hp"], ent["max_hp"])
        self.assertIsNone(ent["respawn_at"])
        self.assertIsNone(session.seconds_to_next_respawn(now_ms=7002.0))
        self.assertEqual(session.respawn_count, 1)

        # the respawned monster is attackable again from full health
        again = session.handle_attack(client_attack_body(), now_ms=8000.0)
        self.assertTrue(again.accepted, again.reason)
        self.assertEqual(again.new_hp, 45)

    def test_reject_counters_accumulate(self):
        session = make_session()
        session.handle_attack(client_attack_body(target_id=1), now_ms=1.0)
        session.handle_attack(client_attack_body(target_id=2), now_ms=2.0)
        session.handle_attack(b"short", now_ms=3.0)
        self.assertEqual(session.reject_counts["unknown_target"], 2)
        self.assertEqual(session.reject_counts["malformed_body"], 1)
        self.assertEqual(len(session.reject_counts), 2)


class TestConfigFromEnv(unittest.TestCase):
    def test_defaults(self):
        cfg = combat.CombatConfig.from_env({})
        self.assertEqual((cfg.attack_range, cfg.cooldown_ms, cfg.damage,
                          cfg.respawn_ms, cfg.attack_action_id),
                         (64, 500, 15, 5000, 9))

    def test_overrides(self):
        cfg = combat.CombatConfig.from_env({
            "TRUTHAN_COMBAT_RANGE": "48",
            "TRUTHAN_COMBAT_COOLDOWN_MS": "100",
            "TRUTHAN_COMBAT_DAMAGE": "7",
            "TRUTHAN_COMBAT_RESPAWN_MS": "250",
            "TRUTHAN_COMBAT_ATTACK_ACTION": "10",
        })
        self.assertEqual((cfg.attack_range, cfg.cooldown_ms, cfg.damage,
                          cfg.respawn_ms, cfg.attack_action_id),
                         (48, 100, 7, 250, 10))

    def test_invalid_values_rejected(self):
        with self.assertRaises(ValueError):
            combat.CombatConfig.from_env({"TRUTHAN_COMBAT_DAMAGE": "0"})
        with self.assertRaises(ValueError):
            combat.CombatConfig.from_env({"TRUTHAN_COMBAT_RANGE": "0"})


if __name__ == "__main__":
    unittest.main()
