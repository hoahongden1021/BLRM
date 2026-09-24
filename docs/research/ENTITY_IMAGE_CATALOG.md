# Entity ↔ image catalog

Generated 2026-09-24. Status: VERIFIED / PARTIAL / CANDIDATE / UNKNOWN / REJECTED.

## Counts

```json
{
  "objects": 377,
  "objects_with_images": 295,
  "images_total": 2027,
  "images_referenced_by_obj": 303,
  "images_unmatched": 1724,
  "npc_names": 512,
  "monster_names": 624,
  "mount_names": 108,
  "weapon_names": 720,
  "fabao_names": 30,
  "skills": 384,
  "pgg_groups": 6,
  "prop_png": 441,
  "prop_v5_png": 457,
  "status_counts_objects": {
    "VERIFIED": 377,
    "PARTIAL": 0,
    "UNKNOWN": 0
  }
}
```

## Artifacts

- `entity_image_catalog.html` — local visual catalog
- `catalog_resolution_rules.csv` — ID→image rules with status
- `catalog_objects_images.csv` — all .obj → linked .img (VERIFIED chain)
- `catalog_npc_names.csv`, `catalog_monster_names.csv`, `catalog_mount_names.csv`, `catalog_weapon_names.csv`, `catalog_fabao_names.csv` — name-only tables
- `catalog_skills.csv` — DESCRIPTION_ONLY skills + packet icon rule
- `catalog_pgg_groups.csv` — pgg index rules
- `catalog_unmatched_images.csv` — images not in any obj slot
- `catalog_prop_pngs.csv` — prop/prop_v5 inventory (key UNKNOWN)
- `catalog_counts.json` — machine counts
- `catalog_previews/` — PNG previews extracted from .img

## Unresolved

| Join | Status | Next evidence |
|---|---|---|
| skill id → iconId | UNKNOWN | server skill config / packet samples |
| item id → iconId | UNKNOWN | goods config with icon column |
| ModelID → objectDataId | UNKNOWN | packet capture cmd9/cmd132 |
| prop/{id}.png → entity | UNKNOWN | PC ImageManager call-site args |
| anuId ≥ 9000 skill effect | CANDIDATE | confirm against Original DEX (currently apk_skill_effects.json) |

## Related docs

- `SKILL_CLASS_WEAPON_MAP.md`
- `MODELID_MAP_SPAWN_JOIN.md`
- `PC_SKILLS_EQUIPMENT_QUESTS.md`
- `entity_asset_evidence.json`

