# Reverse-Engineering Findings

This is the chronological technical notebook. Only stable conclusions should be copied into `PROJECT_STATE.md`.

---

## PC gameplay conf tables (2026-09-24)

Research catalog: `docs/research/PC_SKILLS_EQUIPMENT_QUESTS.md`.

- `zsSkills_language.dat` → loader `main.b.a.a.A` (uppercase): 384 rows, 16 cols,
  id 17101–17584; names/descriptions only; damage % only inside description prose.
- 15 equipment/item language tables → `main.b.a.a.p`: combined 4603 keys, 7-col
  name+desc only (no ATK/level columns).
- `Tasks_language.dat` → `main.b.a.a.D`: file **missing** in jar, TTpc, and revived
  APK; original 1.17 has zero conf tables. Quest runtime on original client is
  packets → `RoleQuest` (`getFunctioRoleQuest`).
- All sampled PC conf SHA-256 values equal revived APK `assets/conf/*`.

Loader case trap: uppercase `A`/`D` are skills/tasks; lowercase `a`/`d` are
achievement/`client_config.properties`.

---

## Skill families, classes, weapon limits (2026-09-24)

Catalog: `docs/research/SKILL_CLASS_WEAPON_MAP.md`,
CSV `docs/research/skill_family_catalog.csv` (DESCRIPTION_ONLY).

- Families `id/100`: 171=80, 172=22, 173=97, 174=100, 175=85 (384 total);
  adjacent same-name IDs = rank-step groups (usually 6, sometimes 2).
- **No static family→class table** in PC conf or original DEX → class column
  UNKNOWN. Do not infer class from 171xx prefixes or skill names.
- Original `OCCUPATION_NAMES` = 力士,刺客,唤雷师,天师,武神,圣仙;
  create-role uses first four (`RoleLogin` `length-2`); 4/5 via NewJob.
- `WEAPONTYPE_NAMES` = 刀,剑,斧,法剑,羽扇,法杖.
- Skill weapon/job restrictions and MP/CD/level are **packet-driven**
  (`RoleQuickUse.setWuQiXianZhi`/`setJobXianZhi`, `processSkillDetail`,
  `readRoleSkill`); `needWeaponType_*` empty in conf (not “no rules”).
- PC SkillTree logs `rank`/`lv`/`needSkillId` from `main.b.a.f.M` network fields.
- `GSkillData` appears unused (no external smali refs this session).

---

## Current milestone

The project has crossed the minimum world-entry milestone:

- login works;
- role creation/listing works;
- join game works;
- correct starter scene loads;
- player appears at a valid walkable position;
- movement works;
- movement speed is normal.

This means the next blocking layer is no longer basic world entry. It is the server-driven entity/gameplay layer.

---

## Movement investigation

### Bad state

At spawn `(100,100)`:

- player body animated;
- joystick/input was active;
- client still emitted movement packets;
- character did not traverse the scene.

Conclusion:

The position was blocked/invalid for normal movement.

### Fix

Spawn changed to:

- `(180,230)`

Result:

- movement works.

Status: `VERIFIED`

---

## Speed investigation

A low server value (`5`) produced obviously slow movement.

Client/default evidence indicated speed `40`.

After changing server speed to `40`:

- user confirmed movement speed is normal.

Status: `VERIFIED`

---

## Entity spawn investigation

An early `cmd=132` probe was built from incomplete assumptions.

Result:

- strange malformed entities appeared;
- client rendering produced divide-by-zero behavior in sprite rendering;
- this confirmed that required entity state/animation/resource fields were incomplete or invalid.

Conclusion:

Do not continue by filling missing fields with arbitrary zeros/default guesses.

Next attempt must be reconstructed from the exact client reader and real asset metadata.

---

## Current research target

Identify the real starter NPC and build one correct entity spawn end-to-end.

Preferred evidence chain:

`client handler -> packet schema -> .obj/.img identity -> single spawn -> click/talk capture`

Only after that can the project proceed to mobs/combat.

## 2026-09-22: cmd132 static research checkpoint

Status: `PARTIAL`. Baseline login/starter map/spawn/movement remains as confirmed
by the user. Research source revision: `37005b1`; server/gameplay unchanged.
The bundled resource APK contains classes.dex. Downloaded official JADX 1.5.6
and Apktool 3.0.3 into `%LOCALAPPDATA%/TruThan_RE_tools`; used Android Studio's

---

## 2026-09-22: Test Execution Failure

- **Test Run**: `02_test_npc_probe.bat`
- **Issue**: Server failed to start with `ERROR: Input redirection is not supported, exiting the process immediately.`
- **Impact**: No new packet data or client behavior was captured in this run.
- **Action**: Need to investigate the Python server start command in the batch script to fix input redirection for Windows environment.

Status: `REJECTED` (Current test run result).