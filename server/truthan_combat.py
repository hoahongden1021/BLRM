#!/usr/bin/env python3
"""RECONSTRUCTED local combat loop for the BLRM Tru Than server.

WIRE EVIDENCE (classes.dex / build/research/jadx/sources/com/t4game):
  cmd136 client -> server : GameWorld.sendAttackMessage()        (19-byte body)
  cmd137 server -> client : GameWorld.processSpriteSkillResultMessage() reader
                            (66-byte body with one GNPC property record)
  cmd27  server -> client : GameWorld.processRoleSkillMessage(),
                            readGeniusTree(), readRoleSkill()
                            (client NPEs in heroAttack() without it because
                             normalAttackActionId[] is only allocated there)
  cmd132 respawn          : GameWorld.processViewSpriteMessage() add branch +
                            GScene.updateDeathTest() revive/remove path
  hit semantics           : hitResult 5 is outside {0,1,2,3,4,6,7,8,9}, so the
                            client renders setBooldUp(value1) (normal red number)

PROVENANCE: the packet layouts above are REVERIFIED against client code
(VERIFIED).  Every gameplay number in CombatConfig is RECONSTRUCTED and
configurable; none of these values are claimed to be original server data:

  TRUTHAN_COMBAT              master switch, default 0 (OFF)
  TRUTHAN_COMBAT_RANGE        px, default 64; mirrored into the client as
                              normalAttackHitDistance via cmd27 so the client
                              and server range checks cannot disagree
  TRUTHAN_COMBAT_COOLDOWN_MS  default 500 (client cadence is 1000 ms:
                              attackSpeed 10 x 100 from join_game_rsp)
  TRUTHAN_COMBAT_DAMAGE       default 15 (Fire Fox 60 HP -> 4 hits)
  TRUTHAN_COMBAT_RESPAWN_MS   default 5000
  TRUTHAN_COMBAT_ATTACK_ACTION default 9 = CommonConstants.SPRITE_ACTION_ATTACK0;
                              asset-verified: actionAnimList state0/action9 has
                              frames for all 4 directions in obj 1..4
"""
from __future__ import annotations

import math
import os
import struct
import time

# Command ids (MessageCommands.java): 27 ROLE_SKILL_MESSAGE, 136 attack
# request, 137 skill result, 132 sprite view (respawn reuse).
ROLE_SKILL_CMD = 27
ATTACK_CMD = 136
RESULT_CMD = 137
ATTACK_BODY_LEN = 19
RESULT_BODY_LEN = 66
GNPC_TYPE = 2
GUSER_TYPE = 3
# processSpriteSkillResultMessage special hit results:
# 0 miss, 1 dodge, 2 block, 3 zhaojia, 4 baoji, 6 xishou, 7 huomian,
# 8 dikang, 9 mianyi; every other value renders the normal damage number.
HITRESULT_DAMAGE = 5
DEFAULT_PLAYER_HP = 100
DEFAULT_PLAYER_MP = 100


def pstr(s):
    b = str(s).encode("utf-8")
    return struct.pack(">H", len(b)) + b


class CombatConfig:
    """RECONSTRUCTED gameplay numbers; every field is env-overridable."""

    def __init__(self, attack_range=64, cooldown_ms=500, damage=15,
                 respawn_ms=5000, attack_action_id=9):
        if not 1 <= int(attack_range) <= 4096:
            raise ValueError("TRUTHAN_COMBAT_RANGE must be 1..4096")
        if int(cooldown_ms) < 0 or int(damage) < 1 or int(respawn_ms) < 0:
            raise ValueError("invalid combat config value")
        if not 0 <= int(attack_action_id) <= 19:
            raise ValueError("TRUTHAN_COMBAT_ATTACK_ACTION must be 0..19 "
                             "(actionAnimList has 20 action slots)")
        self.attack_range = int(attack_range)
        self.cooldown_ms = int(cooldown_ms)
        self.damage = int(damage)
        self.respawn_ms = int(respawn_ms)
        self.attack_action_id = int(attack_action_id)

    @classmethod
    def from_env(cls, env=None):
        env = os.environ if env is None else env
        return cls(
            attack_range=env.get("TRUTHAN_COMBAT_RANGE", "64"),
            cooldown_ms=env.get("TRUTHAN_COMBAT_COOLDOWN_MS", "500"),
            damage=env.get("TRUTHAN_COMBAT_DAMAGE", "15"),
            respawn_ms=env.get("TRUTHAN_COMBAT_RESPAWN_MS", "5000"),
            attack_action_id=env.get("TRUTHAN_COMBAT_ATTACK_ACTION", "9"),
        )


class AttackOutcome:
    """Result of one cmd136 handling attempt (accepted or rejected)."""

    def __init__(self, accepted, reason, request=None, damage=0,
                 new_hp=0, died=False, distance=0.0, result_body=None):
        self.accepted = accepted
        self.reason = reason
        self.request = request
        self.damage = damage
        self.new_hp = new_hp
        self.died = died
        self.distance = distance
        self.result_body = result_body

    def __repr__(self):
        return (f"AttackOutcome(accepted={self.accepted!r}, reason={self.reason!r}, "
                f"damage={self.damage!r}, new_hp={self.new_hp!r}, died={self.died!r})")


def parse_attack_request(body):
    """Decode GameWorld.sendAttackMessage()'s 19-byte cmd136 body.

      i32 targetId, i8 targetType, i16 targetMapX, i16 targetMapY,
      i8 srcActionType, i8 srcActionId, i8 srcDir, i16 skillId,
      i16 srcMapX, i16 srcMapY, i8 speedByte
    """
    body = bytes(body)
    if len(body) != ATTACK_BODY_LEN:
        raise ValueError(f"cmd136 body length {len(body)} != {ATTACK_BODY_LEN}")
    (target_id, target_type, target_x, target_y, src_action_type,
     src_action_id, src_dir, skill_id, src_x, src_y,
     speed_byte) = struct.unpack(">ibhhbbbhhhb", body)
    return {
        "target_id": target_id,
        "target_type": target_type,
        "target_x": target_x,
        "target_y": target_y,
        "src_action_type": src_action_type,
        "src_action_id": src_action_id,
        "src_dir": src_dir,
        "skill_id": skill_id,
        "src_x": src_x,
        "src_y": src_y,
        "speed_byte": speed_byte,
    }


def build_role_skill_body(cfg):
    """cmd27 body for GameWorld.processRoleSkillMessage().

    readGeniusTree(): i16 treeId, pstr name, i16 blobLen + blob.  The blob is
    parsed by GGeniusTreeData.init(): u8 entryCount then per-entry records; a
    single 0x00 byte is a valid empty tree (no per-entry rows follow).
    Then i8 skillCount and readRoleSkill() records; the normal-attack record is
    i16 skillId, boolean true, i16 hitDistance, i8 actionCount, then per action
    (i8 actionId, i16 objDataId, and i16 seDataId only when objDataId != -1).
    actionCount must be >= 3 because heroAttack() reads indices [1] and [2].
    """
    blob = b"\x00"
    b = bytearray()
    b += struct.pack(">h", 1)                 # genius tree id (RECONSTRUCTED)
    b += pstr("")                             # genius tree name
    b += struct.pack(">h", len(blob)) + blob  # empty parsed tree
    b += struct.pack(">b", 1)                 # one skill record
    b += struct.pack(">h", -1)                # skill id; -1 mirrors QUICK_SKILL_ID
    b += b"\x01"                              # boolean true -> normal attack branch
    b += struct.pack(">h", cfg.attack_range)  # normalAttackHitDistance
    b += struct.pack(">b", 3)                 # actionCount (heroAttack needs [1],[2])
    for _ in range(3):
        b += struct.pack(">b", cfg.attack_action_id)
        b += struct.pack(">h", -1)            # no special-effect object
    return bytes(b)


def build_skill_result_body(*, source_id, target_id, target_type=GNPC_TYPE,
                            damage, hp, mp, max_hp, max_mp, speed,
                            player_hp=DEFAULT_PLAYER_HP,
                            player_mp=DEFAULT_PLAYER_MP):
    """cmd137 body for GameWorld.processSpriteSkillResultMessage().

    Exact reader order (classes.dex):
      u8 flags; i32 srcId; u8 srcType; i32 tgtId; u8 tgtType; i16 ignored;
      u8 moveMode (0/1 adds two i16 destination shorts; 2 skips them);
      i32 srcHp; i32 srcMp; u8 ignored; u8 dir;
      3 x readSkillActionSEData: i8 actionId, i16 objId, [i16 seId if objId!=-1];
      u8 propertyCount; per record:
        i32 spriteId, u8 spriteType, u8 hitResult, i32 value1, i32 value2,
        i32 hp, i32 mp, then readSpriteUpdateProperty:
        i32 maxHp, i32 maxMp, u8 speed, i8 wuxing (-1 -> client uses 5)
        (3 extra bytes only for spriteType 3; this record is GNPC type 2).

    With flags == 0 and srcType == 3 (the local player), the client skips the
    source animation block, so srcHp/srcMp overwrite the player's values: they
    must be the real tracked player HP/MP (never 0 or the client dies).
    """
    b = bytearray()
    b += struct.pack(">b", 0)                       # flags: no beat-back/fabao bits
    b += struct.pack(">i", int(source_id))          # source = local player
    b += struct.pack(">b", GUSER_TYPE)
    b += struct.pack(">i", int(target_id))
    b += struct.pack(">b", int(target_type))
    b += struct.pack(">h", 0)                       # ignored short
    b += struct.pack(">b", 2)                       # moveMode: skip destination shorts
    b += struct.pack(">i", int(player_hp))
    b += struct.pack(">i", int(player_mp))
    b += struct.pack(">b", 0)                       # ignored byte
    b += struct.pack(">b", 0)                       # source dir (unused when flags==0)
    for _ in range(3):                              # readSkillActionSEData x3
        b += struct.pack(">b", -1)                  # actionId -1
        b += struct.pack(">h", -1)                  # objDataId -1 -> no seId short
    b += struct.pack(">b", 1)                       # one property record
    b += struct.pack(">i", int(target_id))
    b += struct.pack(">b", int(target_type))
    b += struct.pack(">b", HITRESULT_DAMAGE)        # -> client setBooldUp(value1)
    b += struct.pack(">i", int(damage))             # value1: red damage number
    b += struct.pack(">i", 0)                       # value2
    b += struct.pack(">i", int(hp))                 # target HP after damage
    b += struct.pack(">i", int(mp))
    b += struct.pack(">i", int(max_hp))             # readSpriteUpdateProperty
    b += struct.pack(">i", int(max_mp))
    b += struct.pack(">B", int(speed) & 0xff)
    b += struct.pack(">b", -1)                      # wuxing marker
    return bytes(b)


class CombatSession:
    """Per-connection combat state.

    `entities` is the live visible_npcs dict of the connection: the session
    mutates each entity's `hp`/`respawn_at` in place so runtime telemetry
    reflects server-tracked HP without a second copy.  `view_bodies` keeps the
    exact cmd132 add-body sent at spawn for the respawn resend.
    """

    def __init__(self, entities, view_bodies, config, player_id,
                 player_hp=DEFAULT_PLAYER_HP, player_mp=DEFAULT_PLAYER_MP,
                 player_pos=(0, 0)):
        self.entities = entities
        self.view_bodies = dict(view_bodies)
        self.config = config
        self.player_id = int(player_id)
        self.player_hp = int(player_hp)
        self.player_mp = int(player_mp)
        self.player_pos = player_pos
        self.last_attack_ms = None
        self.attack_count = 0
        self.death_count = 0
        self.respawn_count = 0
        self.reject_counts = {}
        for ent in self.entities.values():
            if "hp" not in ent:
                ent["hp"] = int(ent.get("max_hp", 0))
            ent["respawn_at"] = None

    def _reject(self, reason, request=None):
        self.reject_counts[reason] = self.reject_counts.get(reason, 0) + 1
        return AttackOutcome(False, reason, request=request)

    def handle_attack(self, body, player_pos=None, now_ms=None):
        """Validate one cmd136 and, when accepted, apply damage.

        Returns an AttackOutcome; `outcome.accepted` tells the caller to send
        cmd137 (rejected attacks get no response at all, exactly like a real
        validation failure).
        """
        now = time.monotonic() * 1000.0 if now_ms is None else float(now_ms)
        try:
            req = parse_attack_request(body)
        except ValueError:
            return self._reject("malformed_body")
        if req["target_type"] != GNPC_TYPE:
            return self._reject("target_type_not_gnpc", req)
        ent = self.entities.get(req["target_id"])
        if ent is None:
            return self._reject("unknown_target", req)
        if ent.get("kind") != "monster":
            return self._reject("npc_protected", req)
        if int(ent.get("can_hit", 0)) != 1:
            return self._reject("not_hittable", req)
        if int(ent.get("hp", 0)) <= 0:
            return self._reject("target_dead", req)
        px, py = player_pos if player_pos is not None else self.player_pos
        distance = math.hypot(int(ent.get("x", 0)) - int(px),
                              int(ent.get("y", 0)) - int(py))
        if distance > self.config.attack_range:
            return self._reject("out_of_range", req)
        if self.last_attack_ms is not None and \
                now - self.last_attack_ms < self.config.cooldown_ms:
            return self._reject("cooldown", req)

        max_hp = int(ent.get("max_hp", 0))
        damage = self.config.damage
        new_hp = max(0, int(ent["hp"]) - damage)
        died = new_hp == 0 and int(ent["hp"]) > 0
        ent["hp"] = new_hp
        if died:
            ent["respawn_at"] = now + self.config.respawn_ms
            self.death_count += 1
        self.last_attack_ms = now
        self.attack_count += 1
        result_body = build_skill_result_body(
            source_id=self.player_id,
            target_id=req["target_id"],
            target_type=GNPC_TYPE,
            damage=damage,
            hp=new_hp,
            mp=int(ent.get("mp", 0)),
            max_hp=max_hp,
            max_mp=int(ent.get("max_mp", 0)),
            speed=int(ent.get("speed", 0)),
            player_hp=self.player_hp,
            player_mp=self.player_mp,
        )
        return AttackOutcome(True, "ok", request=req, damage=damage,
                             new_hp=new_hp, died=died, distance=distance,
                             result_body=result_body)

    def due_respawns(self, now_ms=None):
        """Return [(sprite_id, cmd132_body, ent)] for monsters whose timer elapsed.

        HP is reset to max before returning, so the next attack on the fresh
        sprite starts from full health.
        """
        now = time.monotonic() * 1000.0 if now_ms is None else float(now_ms)
        due = []
        for sprite_id in sorted(self.entities):
            ent = self.entities[sprite_id]
            respawn_at = ent.get("respawn_at")
            if respawn_at is None or now < respawn_at:
                continue
            ent["hp"] = int(ent.get("max_hp", 0))
            ent["respawn_at"] = None
            self.respawn_count += 1
            body = self.view_bodies.get(sprite_id)
            if body is None:
                continue
            due.append((sprite_id, body, ent))
        return due

    def seconds_to_next_respawn(self, now_ms=None):
        """Seconds until the earliest pending respawn, or None if none pending."""
        now = time.monotonic() * 1000.0 if now_ms is None else float(now_ms)
        pending = [ent["respawn_at"] for ent in self.entities.values()
                   if ent.get("respawn_at") is not None]
        if not pending:
            return None
        return max(0.0, (min(pending) - now) / 1000.0)
