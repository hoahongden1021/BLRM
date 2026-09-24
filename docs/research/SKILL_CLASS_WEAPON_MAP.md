# VERIFIED — Character classes, skill families, weapon restrictions (three-location)

Status vocabulary: `VERIFIED` / `PARTIAL` / `CANDIDATE` / `UNKNOWN` / `REJECTED`.
Evidence date: 2026-09-24.
Base: continues `docs/research/PC_SKILLS_EQUIPMENT_QUESTS.md` (do not re-decode that catalog here).
Method: original APK jadx (`GameWorld`, `CommonConstants`, `RoleQuickUse`, `RoleGoods`,
`RoleOutfit`, `RoleSkill`, `GSkillData`, `GGenius*`, `MessageCommands`) + smali ref scan
+ PC jar `javap` of `main.b.a.g.g` SkillTree readers + AES decode of
`zsSkills_language.dat` (Java `SkillCsv`/`SkillCatalog2`, key `1234567812345678`).

## Locations (kept separate)

| Column | Path | SHA-256 (identity) |
|---|---|---|
| **PC** | `C:\Users\Mech\Desktop\TTpc` + `ZhuShen-1.0.0.jar` | jar `E94F41EE433CA3B62D7C8F2D31151077A920C1D3AEB37B2BCBEBCF85B25EC4E8` |
| **Revived** | `BLRM-local-inputs\TruThan.apk` | APK `E5C96454DF43AB43F8C4CCA0D913552E9803E46F875A5B81A387FF3EC0B77B10` |
| **Original 1.17** | `server\truthan_resources_v1.17.apk` | APK `E76D1C735A40F36C382D1123585BBE8584B1A65463504D691EF5CC454807DDE8` |

Derived DESCRIPTION_ONLY CSV: `docs/research/skill_family_catalog.csv` (384 data rows).

---

## 1. Occupations / classes (Original 1.17 DEX)

| Fact | Evidence | Status |
|---|---|---|
| `OCCUPATION_NAMES` = `{力士, 刺客, 唤雷师, 天师, 武神, 圣仙}` | `CommonConstants.java:598` | `VERIFIED` |
| Named constants for first four | `OCCUPATION_LISHI=0`, `OCCUPATION_CIKE=1`, `OCCUPATION_HUANLEISHI=2`, `OCCUPATION_TIANSHI=3` at `CommonConstants.java:329–332` | `VERIFIED` |
| Create-role picker uses first **4** occupations only | `RoleLogin.java:307` / `:948` — `OCCUPATION_NAMES.length - 2` | `VERIFIED` |
| Jobs 4–5 (武神 / 圣仙) are post-create “化神/NewJob” classes | `NewJob.java:31` jobInfo texts; `GameWorld.java:4648` `user.job > 3` forge labels; `GUser.java:206–208` | `VERIFIED` (existence); full unlock rules not fully traced |
| Runtime `user.job` is a **packet byte**, not conf | `GameWorld.java:6113` `setJob(readBuffer.getByte())`; `NewJob.java:255` | `VERIFIED` |
| Display uses `OCCUPATION_NAMES[job]` | `GameWorld.java:13340`, `GameScreen.java:41027`, etc. | `VERIFIED` |

### Weapon type enum (Original)

| Index | Name | Evidence |
|---:|---|---|
| 0 | 刀 | `CommonConstants.WEAPONTYPE_NAMES` `:606` `VERIFIED` |
| 1 | 剑 | same |
| 2 | 斧 | same |
| 3 | 法剑 | same |
| 4 | 羽扇 | same |
| 5 | 法杖 | same |

Equipped weapon type lives on outfit slot 4: `RoleOutfit.weaponTyte`
(`RoleOutfit.java:9`), filled from network when outfit is applied
(`GameWorld.java:6147`, `NewJob.java:116`).

**Job×weapon narrative only (display strings, not a skill-family map):**
`GameWorld.java:4648–4657` when `user.job > 3` (武神/圣仙) appends forge labels
`(斧武神)/(刀武神)/(扇圣仙)/(剑圣仙)` from `daZaoJob` byte. That is equipment
crafting UI, **not** ownership of skill families 171–175.

**Physical vs magic fight-attribute UI split:**
`GameWorld.java:14577` `user.job < 2 || user.job == 4` → physical crit labels;
else magic labels. Display-only partition of jobs {0,1,4} vs {2,3,5}. Not skill IDs.

**Revived APK:** UTF-8 string scan of `classes.dex` hits 力士/刺客/唤雷师/天师/武神/圣仙
and `RoleSkill` / `zsSkills`. Same occupation vocabulary exists. Full method-level
diff vs original was not done this session → structure `PARTIAL`.

---

## 2. Skill ID families (PC language table only)

Source: `assets/conf/zsSkills_language.dat` → loader `main.b.a.a.A` (see prior catalog).

| Family key `id/100` | Rows | Unique display names | Sample `name_e` | Sample `description_1` EN tag |
|---:|---:|---:|---|---|
| 171 | 80 | 15 | Soul Reaver Slash | Single Target |
| 172 | 22 | 5 | Heir of Xuanyuan | Passive |
| 173 | 97 | 18 | Bone Piercer | Single Target |
| 174 | 100 | 19 | Flying Sword | Single Target |
| 175 | 85 | 16 | Lightning Flash | Passive |

- IDs observed: **17101–17584**; family counts sum to **384** (`VERIFIED`).
- Same display name on **adjacent IDs** forms a **rank/level-step group**
  (typically **6** consecutive IDs, sometimes **2**), e.g.
  `Đoạt Phách Trảm → 17101–17106` (`VERIFIED` structure from table keys).
- One name crosses the 171/172 boundary: `Hiên Viên Truyền Nhân` →
  **17196–17201** (group min in 171, max in 172). Family = `id/100` is therefore
  a **bucket on the raw id**, not a guarantee that one display name stays inside
  one bucket.
- `needWeaponType_vn/cn/e` empty for **all 384** rows (`VERIFIED`).
- Description EN tags (`Single Target` / `Passive` / etc.) are **UI taxonomy
  strings**, not class ownership.

### Class → family ownership

| Question | Result | Status |
|---|---|---|
| Static map family 171–175 → occupation 0–5 in original DEX | **Not found** (no constants/arrays keyed by 171xx…175xx; no `job ==` + skill-id join) | `UNKNOWN` |
| Static map in PC jar (`needWeaponType`, class tables) | Conf language has no weapon/class column; jar string scan found no family→job table | `UNKNOWN` |
| Infer class from family prefix or skill name | **Forbidden by task rules**; not done | n/a |

**Conclusion:** With current evidence, **class ownership of each 171xx–175xx family
is UNKNOWN** for PC, Revived and Original. Do not publish a filled class column.

---

## 3. Where weapon / job / numeric skill values actually come from

### 3.1 Original 1.17 — packet-driven (`VERIFIED` readers)

| Value | Runtime field | Reader / source | Kind |
|---|---|---|---|
| Learned skill identity | `RoleSkill.id` short | `GameWorld.readRoleSkill` `:16750` | runtime field |
| Skill display name | `RoleSkill.name` | same (`getString`) | runtime field |
| Max level | `RoleSkill.maxLevel` byte | same | runtime field |
| Level requirement | `RoleSkill.limitLevel` byte | same; also `processAddOrDelSkill` `:2798–2799` | runtime field |
| Current level | `RoleSkill.level` | same | runtime field |
| Icon | `RoleSkill.iconId` short | same | runtime field |
| Action/passive flag | `RoleSkill.actionType` | same (`0` → hotbar skill) | runtime field |
| Genius/talent tree topology | `GGeniusTreeData` / `GGeniusData` | `readGeniusTree` `:16612` from `ROLE_SKILL_MESSAGE=27` (`processRoleSkillMessage` `:10258`); also `GET_GENIUS_TREE_MESSAGE=287` | runtime field |
| Skill detail name/level/next-level | packet strings/bytes | `processSkillDetail` `:11040` after `ROLE_SKILL_DETAILS_MESSAGE=129` → `processMagicGeniusDetailMessage` `:6317` | runtime field |
| **Weapon type list for a skill** | `byte[]` → `RoleQuickUse.WuQiXianZhiList` | detail packet `:11069–11077` / `:4328–4336`; quick slot `setWuQiXianZhi` `:16713–16719` | runtime field |
| **Job list for a skill** | `byte[]` → `RoleQuickUse.jobXianZhiList` | quick slot `setJobXianZhi` `:16721–16727` | runtime field |
| MP cost (quick slot) | `QUICK_SKILL_consumeMP` short | `readRoleQuickAction` `:16682` | runtime field |
| HP cost (quick slot) | `QUICK_SKILL_consumeHP` short | `:16683` | runtime field |
| Cooldown (quick slot) | `QUICK_SKILL_CDTIME` int | `:16690` | runtime field |
| Cast time / cooldown (detail UI) | bytes/shorts; cooldown displayed as `short/10` seconds | `processSkillDetail` `:11079–11091` | runtime field |
| Range | byte → “尺” | same | runtime field |
| Weapon gate at cast | `testWuQiXianZhi(equipped.weaponTyte)` | `GameWorld.java:21214` fail msg `武器类型不符合！` | runtime check |
| Job gate at cast | `testJobXianZhi(user.job)` | `:21220` fail msg `你的职业不能使用！` | runtime check |
| Equipment job flag | `RoleGoods.jobCanUse` | `setCanUse` from goods packet (`RoleGoods.java:41–54`) | runtime field |
| Equipment level req | `limitUseLevel` | goods/outfit readers | runtime field |
| Equipment weapon type | `RoleOutfit.weaponTyte` | outfit apply packet | runtime field |

`SKILL_RESTRICT=316` maps to `processLimitSkillMessage` (`GameWorld.java:7759`
→ `:6222`) which only sets a **sprite special state**; it is **not** a skill
job/weapon restriction table (`VERIFIED` rename trap).

`GSkillData` (`name`, `description`, `rank`, `rankData[][][]`) is **defined** in
DEX/smali but **no external smali references** to `Lcom/t4game/GSkillData` were
found outside its own file this session → likely **dead/unused** for the live
skill path (`PARTIAL`: absence of refs ≠ proof of zero reflective use, but
current call graph does not use it).

### 3.2 PC jar — SkillTree network model (`PARTIAL` for full schema)

`main.b.a.g.g` methods log:

- `[SkillTree] recv active/passive id=… lv=… rank=… treeRow=… treeCol=… needSkillId=`
- `[SkillTree] upd active/passive …` same fields

Bytecode reader `a/b(DataInputStream, main.b.a.f.M)` field order (VERIFIED from
`javap`): `int id` → `byte lv` → `byte rank` → `byte treeCol` → `short treeRow`
→ `int needSkillId` (log labels: `id`, `lv`, `rank`, `treeRow`, `treeCol`,
`needSkillId`). Display name via `main.b.a.a.A.a(int)` / `A.b(int,String)`.

So **rank and level for the PC skill tree are network fields on class
`main.b.a.f.M`**, not columns of `zsSkills_language.dat`.

Language UI keys (loader `main.b.a.c.aw`): `STRING_OPTION_WEAPON`,
`STRING_SKILL_DETAIL_NEED_LEVEL`, `STRING_SKILL_DETAIL_COST`,
`STRING_SKILL_TREE_*` — labels only.

### 3.3 What is **not** a stored numeric balance table

| Claim | Status |
|---|---|
| `zsSkills_language.dat` stores damage formula / MP / CD / level req | `REJECTED` (text-only columns) |
| Description “120%…” is a parsed balance constant | `REJECTED` (quoted prose; DESCRIPTION_ONLY) |
| `needWeaponType_*` empty ⇒ no weapon rules | `REJECTED` — rules exist but are **packet fields** |
| Static class column for families 171–175 | `UNKNOWN` (not present in shipped conf/DEX constants) |
| Damage formula on client | `UNKNOWN` — no client-side formula verified; combat resolution is server-side for this project’s evidence priority |

---

## 4. Three-column summary

| Concern | PC (TTpc+jar) | Revived APK | Original 1.17 |
|---|---|---|---|
| Occupation names/indices | language_data / UI (not re-proven as 6-name array here) | dex string hits for 6 CN names + `RoleSkill` (`PARTIAL`) | `OCCUPATION_NAMES[6]` + first-4 create (`VERIFIED`) |
| Skill family 171–175 text | `zsSkills_language.dat` 384 rows | same file SHA-EQ to PC | absent |
| Family → class map | `UNKNOWN` | `UNKNOWN` | `UNKNOWN` |
| Skill weapon restriction | `needWeaponType` empty; SkillTree/network for active rules | conf empty + (likely) same packet path as original | packet `WuQiXianZhiList` + detail weapon byte list (`VERIFIED`) |
| Skill job restriction | not in conf | not in conf | packet `jobXianZhiList` + `testJobXianZhi` (`VERIFIED`) |
| Rank / level steps | adjacent IDs same name; SkillTree `rank`/`lv` from net (`PARTIAL` full parse) | same conf + (likely) packet | `RoleSkill.level/maxLevel/limitLevel` + genius tree (`VERIFIED`) |
| MP / CD / cast / range | not in conf; UI labels | not in conf | packets → `RoleQuickUse` / `processSkillDetail` (`VERIFIED`) |
| Damage % | description prose only | same | not a client conf number (`UNKNOWN` as formula) |
| Equipment job/level/weapon | 7-col name+desc only | SHA-EQ conf | `jobCanUse` / `limitUseLevel` / `weaponTyte` packets (`VERIFIED`) |

---

## 5. VERIFIED class → skill → rank → permitted weapon table (as far as evidence allows)

Because **class ownership of each family is UNKNOWN**, the honest table is:

| class_id | class_name | skill_family | rank_model | permitted_weapon_source | permitted_weapon_values | numeric_damage_mp_cd_level |
|---:|---|---|---|---|---|---|
| 0 | 力士 | UNKNOWN | adjacent-id groups (size 2 or 6) = rank steps; runtime `RoleSkill.level` / SkillTree `rank` | packet `jobXianZhiList` + `WuQiXianZhiList` per skill | UNKNOWN until captured | packet fields / description-only % |
| 1 | 刺客 | UNKNOWN | same | same | UNKNOWN | same |
| 2 | 唤雷师 | UNKNOWN | same | same | UNKNOWN | same |
| 3 | 天师 | UNKNOWN | same | same | UNKNOWN | same |
| 4 | 武神 | UNKNOWN (new-job path; not create-role) | same | same | UNKNOWN | same |
| 5 | 圣仙 | UNKNOWN (new-job path) | same | same | UNKNOWN | same |

Empty class/family cells are intentionally **UNKNOWN**, not blanks that invite guessing.

### Rank groups (DESCRIPTION_ONLY sample from PC table)

| family | group min–max | size | name_vn (from table) |
|---:|---|---:|---|
| 171 | 17101–17106 | 6 | Đoạt Phách Trảm |
| 171 | 17107–17108 | 2 | Phệ Hồn Phong Ma Trảm |
| 171 | 17120–17125 | 6 | Tịch Diệt Trảm |
| 172 | 17220–17221 | 2 | Vạn Kiếm Xuyên Tâm |
| 173 | 17301–17306 | 6 | Thứ Cốt |
| … | full list in CSV | | `skill_family_catalog.csv` |

---

## 6. Explicit non-claims

- No damage formula was derived or invented.
- No skill family was assigned to a class from ID prefix or skill name.
- No raw decrypted conf dump is published; only derived catalog columns
  (id/family/names/desc tags/needWeapon empty/group bounds).
- PC jar full SkillTree packet opcodes beyond the `M` field order were not
  fully mapped (`PARTIAL`).
- Server `truthan_local_server_v026.py` was not modified.
- No real-client combat/skill packet capture was performed this session.

---

## 7. Working artifacts (temp, not committed)

- `C:\Users\Mech\AppData\Local\Temp\opencode\SkillCsv.java` / `skill_family_catalog.csv`
- `...\SkillCatalog2.java` / `_out.txt`
- `...\FamilyNames.java` / `_out.txt`
- `...\gameplay_javap\skilltree_main_b_a_g_g.txt`, `skilltree_main_b_a_g_h.txt`
- `...\jar_scan2\` extracted jar tree (read-only scan)
- `...\revived_dex\` extracted `classes.dex` string scan
