# Quest / Tutorial Notes

## Current status

Quest protocol is not yet reconstructed.

Status: `UNKNOWN`

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
