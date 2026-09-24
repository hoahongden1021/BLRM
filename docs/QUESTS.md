# Quest / Tutorial Notes

## Current status

Quest **accept/deliver wire protocol** is not yet reconstructed against the local server.

Status: `UNKNOWN` (protocol)

### Static quest tables (research 2026-09-24)

- PC jar has loader `main.b.a.a.D` for `conf/Tasks_language.dat` (≥7 columns,
  key + 6 string fields), but **`Tasks_language.dat` is absent** from the jar,
  `TTpc\assets`, and the revived `TruThan.apk` `assets/conf/`. Runtime load → 0 rows.
- Original Android 1.17 APK has **no** conf quest tables; UI strings live in
  `Language/Language0–32.str` via `Language.getStr`.
- On the original client, quest state is **packet-driven**: `RoleQuest` is built only
  in `GameWorld.getFunctioRoleQuest()` (`GameWorld.java:2234`). Type/state/condition
  enums are in `QuestConstants.java`. See `docs/research/PC_SKILLS_EQUIPMENT_QUESTS.md`.
  Skill/class/weapon provenance (separate from quests): `docs/research/SKILL_CLASS_WEAPON_MAP.md`.

Status for static PC quest text source in these trees: `VERIFIED` **absent**.

---

## Starter/tutorial clues

Client-side logic references at least:

- NPC/name: `彩云仙子`
- mob/name: `火狐妖`

These are relevant to early tutorial/new-character flow.

The exact quest ID, dialogue sequence, kill count, reward, and command numbers are not yet verified.

---

## Planned reverse order

1. spawn/identify the correct starter NPC;
2. capture client packet when selecting/talking to NPC;
3. reverse dialogue response;
4. identify quest list/accept fields;
5. capture quest accept;
6. identify `火狐妖` entity;
7. reverse targeting/attack;
8. observe quest progress update;
9. reverse quest completion/reward.

Do not build quest logic by guessing IDs or expected MMO behavior.
