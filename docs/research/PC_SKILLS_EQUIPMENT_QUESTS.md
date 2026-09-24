# VERIFIED — PC gameplay content: skills / equipment / quests (three-location compare)

Status vocabulary: `VERIFIED` / `PARTIAL` / `CANDIDATE` / `UNKNOWN` / `REJECTED`.
Evidence date: 2026-09-24.
Method: jar bytecode (`javap -c -p`) + runtime execution of the jar's own loaders
(`DumpGameplay`, `CountRows`, `SkillStats` harnesses with `Gdx.files` proxy,
base = `TTpc\assets` so `conf/<name>` resolves).

## Locations (kept separate)

| Column | Path | SHA-256 (identity) |
|---|---|---|
| **PC** | `C:\Users\Mech\Desktop\TTpc` + `ZhuShen-1.0.0.jar` | jar `E94F41EE433CA3B62D7C8F2D31151077A920C1D3AEB37B2BCBEBCF85B25EC4E8` |
| **Revived** | `BLRM-local-inputs\TruThan.apk` `assets/conf/*` | APK `E5C96454DF43AB43F8C4CCA0D913552E9803E46F875A5B81A387FF3EC0B77B10` |
| **Original 1.17** | `server\truthan_resources_v1.17.apk` | APK `E76D1C735A40F36C382D1123585BBE8584B1A65463504D691EF5CC454807DDE8` |

Encrypted conf tables use AES-ECB key `1234567812345678` (`main.b.a.a.f.a`);
path resolve `main.b.a.a.e.b`; line split `H.a` / `H.b`.

**Case-collision trap (Windows extraction):** jar classes under `main.b.a.a` include
both cases. Loaders for this doc are **uppercase** `A` (skills) and **D** (tasks).
Lowercase `a` = AchievementLoader, `d` = `client_config.properties`. Do not read
extracted `a.class`/`d.class` after a case-insensitive extract; use `javap -cp jar`.

---

## 1. Skills — `zsSkills_language.dat` → `main.b.a.a.A`

| Item | Value | Status |
|---|---|---|
| Loader | `A.a(String lang)` | `VERIFIED` |
| File present PC | `assets/conf/zsSkills_language.dat` (raw 160784 B; decrypted ~105702 chars) | `VERIFIED` |
| File present Revived | same SHA-256 as PC | `VERIFIED` |
| File present Original | **absent** (no `conf/*` entries) | `VERIFIED` |
| Data rows | **384** (plus 1 header) | `VERIFIED` |
| Header cols | **16** | `VERIFIED` |
| Min cols to accept row | ≥ 16 (`bipush 16` in `A.a`) | `VERIFIED` |
| Hashtable field | `A.b`, key = `parts[0]` (id string), value = `String[15]` = trimmed `parts[1..15]` | `VERIFIED` |

### Header (exact, runtime)

```
id,name_vn,name_cn,name_e,description_1vn,description_1cn,description_1e,description_3vn,description_3cn,description_3e,description_5vn,description_5cn,description_5e,needWeaponType_vn,needWeaponType_cn,needWeaponType_e
```

### Value index map (after key strip → stored `String[15]`)

| Stored idx | Header field | Accessor (language selection) |
|---|---|---|
| 0,1,2 | name vn/cn/e | `A.a(int)` → 0 / 1 / 2 |
| 3,4,5 | description_1 vn/cn/e | `A.b(int)` → 3 / 4 / 5, then `H.c` (`;`/`|` → `,`) |
| 6,7,8 | description_3 vn/cn/e | `A.c(int)` → 6 / 7 / 8, then `H.c` |
| 9,10,11 | description_5 vn/cn/e | used by `A.b(String)` search path (idx 0–2 of raw for search helpers) |
| 12,13,14 | needWeaponType vn/cn/e | `A.e(int)` → 12 / 13 / 14, then `H.c` |

Language fallback: empty `ver_cn`/`ver_e` cell falls back to vn column.

### ID range and structure (`SkillStats`, VERIFIED)

- IDs: min **17101**, max **17584**, all unique (**384**).
- Family key `id/100`: `171`→80, `172`→22, `173`→97, `174`→100, `175`→85 (5 families).
- Adjacent IDs (e.g. 17101…17106) share the same name and differ in description text
  damage percentage (120%…160% weapon damage) — **level-step text, not numeric columns**.
- `needWeaponType_*` columns are **empty for all 384 rows** in this tree.
- `description_1_*` non-empty for all 384 rows.

### Runtime template (`A.b(int, String)`)

When lang ≠ `ver_vn`, builds a label hashtable for tags such as cooldown, MP, range,
target, cast time, need weapon, Max LV, attributes (`#HH` split). This is UI label
localization only — **no combat balance numbers are stored in this table**.

### What this table is / is not

- **Is:** localized skill **name + multi-paragraph description text** keyed by skill id.
- **Is not:** verified numeric damage formula table, cooldown ticks, MP cost, or
  level requirement columns. Percentages appear only **inside description prose**.
- Combat/runtime skill state for Android comes from packets (see §3).

---

## 2. Equipment / items — 15 conf tables → `main.b.a.a.p`

Loader `p.a(String lang)` loads (error tag string `ItemNameTranslator`):

`zsbelt`, `zsclothes`, `zsweapon`, `zsearring`, `zshat`, `zsmantle`, `zsshoes`,
`zsglove`, `zspaint`, `zsrings`, `zsmedicament`, `zsmaterial`, `zsshoulder`,
`zsspecial`, `zsthoitrang`

| Item | Value | Status |
|---|---|---|
| Combined Hashtable | `p.c`, **4603** rows after load | `VERIFIED` |
| Per-file header (equipment slots) | `ID,name_vn,name_cn,name_e,desc_vn,desc_cn,desc_e` (7 cols) | `VERIFIED` |
| Per-file header (medicament/material/special) | `id,name_vn,name_cn,name_e,des_vn,des_cn,des_e` (7 cols) | `VERIFIED` |
| Min cols | ≥ 7 | `VERIFIED` |
| Key | `parts[0]` (numeric ID string e.g. `1108001`) | `VERIFIED` |
| Value | `String[6]` = name vn/cn/e + desc vn/cn/e | `VERIFIED` |
| PC ↔ Revived SHA-256 | **EQ** for all 15 files (spot-checked weapon; full conf set previously all EQ) | `VERIFIED` |
| Original 1.17 | **0** such entries | `VERIFIED` |

### Data row counts (CountRows, header excluded)

| File | Rows |
|---|---|
| zsweapon_language.dat | 720 |
| zsclothes / zshat / zsbelt / zsglove / zsshoes / zsrings / zspaint | 320 each |
| zsearring_language.dat | 321 |
| zsmantle_language.dat | 136 |
| zsshoulder_language.dat | 264 |
| zsmedicament_language.dat | 91 |
| zsmaterial_language.dat | 134 |
| zsspecial_language.dat | 683 |
| zsthoitrang_language.dat | 26 |
| special_language.dat (sibling, 7-col item names) | 671 |

Sample (runtime): `1108001` → VN `Lôi Đình Đoản Chiến Kiếm` / CN `雷霆短战剑`.

### What these tables are / are not

- **Are:** item **display name + description** localization only.
- **Are not:** verified ATK/DEF/level-requirement/cooldown numeric tables.
  No numeric balance columns exist in the 7-column headers.

### Other name-only loaders (same pattern)

| Loader | File | Rows | Header | Status |
|---|---|---|---|---|
| `w` | zsmount_language.dat | 108 | `MountID,name_vn,name_cn,name_e,desc_*` | `VERIFIED` |
| `j` | zsfabao_language.dat | 30 | `ModelID,name_vn,name_cn,name_e` | `VERIFIED` |
| `l` | zsFunction_language.dat | 473 | `name_vn,name_cn,name_e` (key = vn name string) | `VERIFIED` |
| `r` | language_data.dat | 1177 | `String,ver_vn,ver_cn,ver_e` (UI keys e.g. `INGAME_MAINMENU_SKILL`) | `VERIFIED` |

---

## 3. Quests / tasks — `Tasks_language.dat` and packet path

### 3.1 `Tasks_language.dat` → `main.b.a.a.D`

| Item | Value | Status |
|---|---|---|
| Loader exists | `D.a(String)` requires ≥ **7** cols; key=`parts[0]`, value=`String[6]` | `VERIFIED` |
| Error if missing | `Khong tim thay conf/Tasks_language.dat`; clear table; **return** | `VERIFIED` |
| Present in jar `conf/` | **NO** (raw jar string search + `jar tf`) | `VERIFIED` |
| Present in TTpc assets | **NO** (recursive glob) | `VERIFIED` |
| Present in Revived APK `assets/conf/` | **NO** | `VERIFIED` |
| Present in Original 1.17 | **NO** (no conf tables at all) | `VERIFIED` |
| Runtime rows when missing | **0** (`Tasks via D rows=0`) | `VERIFIED` |
| Callers | `main.b.a.a.n` (init), `main.b.a.g.g` / `main.b.a.g.h` call `D.b` / `D.c` for display strings | `VERIFIED` |
| Fallback behavior of `D.b`/`D.c` when table empty | not fully decompiled this session | `UNKNOWN` |

**Conclusion:** static PC quest **text table is absent from every shipped tree**.
Quest display on a working PC client must rely on packet-delivered strings or empty
fallback — not on a local `Tasks_language.dat` in these assets.

### 3.2 Android original — quests are packet-driven

| Fact | Evidence | Status |
|---|---|---|
| `RoleQuest` fields filled only from network buffer | `GameWorld.getFunctioRoleQuest()` `GameWorld.java:2234–2287` | `VERIFIED` |
| Quest list / desc / update / remove handlers | `processRoleQuestListMessage` `:10143`, `processRoleQuestDescMessage` `:10055`, `processRoleQuestUpDateMessage` `:10164`, `processRoleQuestRemoveMessage` `:10154` | `VERIFIED` |
| Command numbers (JADX `MessageCommands`) | `QUEST_DETAILS=118`, `ACCEPT=122`, `DELIVER=123`, `REMOVE=124`, `ROLE_QUEST_DETAILS=126`, `QUEST_CHAIN_DETAIL=332`, `DEL_ROLE_QUEST=334`, `QUEST_ACCEPTABLE_LIST=426` | `VERIFIED` (client constants; server side not yet matched) |
| Quest type / state / condition enums | `QuestConstants.java` `QUEST_ITEM_*`, `QUEST_ORDER_*`, `ROLE_QUEST_STATE_*`, `CONDITION_LIMITTYPE_*` | `VERIFIED` |
| Static quest catalog file in Original APK | **none** found (`Language/*.str` = UI strings only; no conf/quest tables) | `VERIFIED` |
| Runtime goods/skills also packet-filled | `functionReadRoleGoods` `:14697`, `readGoods` `:13095`, `readRoleSkill` `:16750`, `processRoleSkillMessage` `:10258` | `VERIFIED` |

`getFunctioRoleQuest` field order (VERIFIED from jadx, bytes in order):

`bDaily, titleColor, type, id(int), name, intro, level(byte→short), state nibble+flags
(typeTime/normalType/shareFlag), [typeTimeTotalTick short], finishConditionCount,
then per condition: name, finishedTotal, alreadyFinish, unit name;
npcCount then per npc: name, X, Y, Z (shorts); keyCount then per key: name, type byte`.

### 3.3 Original skill/goods runtime fields (packet)

| Type | Fields from buffer | Source |
|---|---|---|
| `RoleSkill` | `id short`, `name`, `maxLevel byte`, `limitLevel byte`, `actionType byte`, `level byte`, `iconId short` (or normal-attack branch with hit distance + action/object/SE ids) | `readRoleSkill` `:16750` |
| `RoleGoods` base (`readGoods`) | `id int`, `name`, `iconId short`, `limitUseLevel`, `canUse flags byte`, `binded/limitTime/color`, `num`, `subType0` | `:13095` |
| Outfit extra | `maxHoleNum/upGrade` nibble byte, optional `holeNum`, `upGrade`, `breakage`, `imageId`, enhance flags | `functionReadRoleGoods` `:14697` |
| Quest good | base goods + `questId int` | `:14729` |

**Numeric equipment stats (ATK etc.) are not in conf language tables** — any such
numbers must be proven from packets, server logic, or other binary assets.

---

## 4. Three-column summary (PC / Revived / Original)

| Concern | PC (TTpc+jar) | Revived APK | Original 1.17 |
|---|---|---|---|
| Skill **names/text** | `zsSkills_language.dat` 384 rows, loader `A` | same file SHA-EQ | absent (no conf) |
| Skill **runtime levels/icons** | network (jar) | network | packets → `RoleSkill` |
| Equipment **names** | 15× 7-col tables, `p`, 4603 combined keys | SHA-EQ to PC | absent |
| Equipment **stats/limits** | not in conf tables | not in conf tables | packets → `readGoods`/`functionReadRoleGoods` |
| Quest **static text table** | `Tasks_language.dat` **missing**, `D` loads 0 rows | missing | missing |
| Quest **runtime state** | network | network | packets → `RoleQuest` (`getFunctioRoleQuest`) |
| UI strings | `language_data.dat` 1177 keys, loader `r` | SHA-EQ | `Language/Language0–32.str` + `Language.getStr` |
| Skill VFX assets | `apk_skill_effects.json` + `obj/9000.obj`… | (prior research) | `data/obj`, `GObjectData`/`GSEData` |

Matching conf file ≠ matching gameplay rules: Revived shares **name localization**
with PC; Original has a **different localization pipeline** and no conf tables.
Combat balance remains server-side / packet-side for all three until proven otherwise.

---

## 5. Explicit non-claims

- No damage formula, cooldown, MP cost, or level-requirement **numeric column** was
  verified in `zsSkills_language.dat` or equipment tables.
- Description-text percentages (e.g. “120% weapon damage”) are **quoted prose**, not
  parsed balance constants.
- `Tasks_language.dat` absence does **not** prove quests are unimplemented — only
  that this file is not the quest source in these three trees.
- Original APK `Language*.str` sizes/indexes were listed but not decoded as quest
  catalogs this session.
- Server `truthan_local_server_v026.py` was not modified.

---

## 6. Follow-up catalog (same day)

Class/skill-family/weapon provenance and numeric source tracing:
`docs/research/SKILL_CLASS_WEAPON_MAP.md` and
`docs/research/skill_family_catalog.csv`.

---

## 7. Working artifacts (temp, not committed)

- `C:\Users\Mech\AppData\Local\Temp\opencode\DumpGameplay.java` / `_out.txt`
- `...\DumpGameplay2.java` / `_out.txt` (equipment/mount/skill/lang dumps)
- `...\CountRows.java` / `_out.txt` (row counts + headers)
- `...\SkillStats.java` / `_out.txt` (skill id families)
- `...\gameplay_javap\A_full.txt`, `D_full.txt`, `p_full.txt`, `w_full.txt`
