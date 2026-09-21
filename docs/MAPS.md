# Maps / Scenes

## Starter scene

Current starter scene:

- ID: `9068` / `0x236C`
- Name/context: `轩辕奇境`
- Status: `VERIFIED` visually in current client test

Known-good player spawn:

- X = `180`
- Y = `230`

Status: `VERIFIED`

---

## Rejected spawn

- `(100,100)` — `REJECTED`

Reason:

The player appeared at the edge/blocked area, played movement animation, but could not actually traverse the map.

---

## Older map experiments

### Map 7000

- rendered successfully in earlier experimentation;
- later determined not to be the correct starter scene.

Status: `REJECTED` as starter scene, still potentially useful for future map research.

### Map 6000

- attempted earlier;
- missing asset `9174` was encountered.

Status: `PARTIAL / unresolved`

---

## Scene research rules

When documenting a scene, record:

- scene ID
- name
- `.scn` filename/path
- required `.obj`
- required `.img`
- walkable/collision observations
- portals/transitions
- NPC/mob references if proven
- evidence source

## 2026-09-22: scene loader boundary for NPC research

Status: PARTIAL, static analysis only. GScene.initFromJar/initFromBytes inflate
the .scn contents before GScene.init(InputStream) reads them. All 437 gzip-bearing
APK entries are .scn files; the research extractor now scans their decompressed
bytes as well. See docs/research/entity_asset_evidence.json for hashes/results.

GScene.init (JADX GScene.java:1514; smali GScene.smali:11183) reads map dimensions,
tile images/animations, grid data, GDoodadObject decorations, transfer areas,
scene metadata and optional background. Its decoration loop allocates pool type
1, not GNPC type 2. GDoodadObject.init reads object resource ID/layer/grid Y/grid X/
mirror flags; it does not read an NPC name. This loader does not supply an
authoritative 彩云仙子 named-spawn record. Exact smali methods are retained in
docs/research/entity_spawn_smali.txt. No map data or server map behavior changed.
