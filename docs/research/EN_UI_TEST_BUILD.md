# English UI test build (com.t4game.en) — build, translation map and test record

Date: 2026-09-26
Scope: separately named English UI test build of the Android 1.17 client for
navigation UI only (start menu, login, role select/create, enter game,
confirm/cancel/back, NPC interaction, inventory, combat). Gameplay data,
protocol fields, resource IDs and placeholders are untouched.

## Evidence labels used below

- VERIFIED — observed on the real client with a fresh ADB screenshot.
- PARTIAL — implemented and built, but not yet observed end to end.
- UNKNOWN — no evidence yet (not guessed).

## 1. Translation sources (all local, no invented text)

| Source | Content | Where applied |
| --- | --- | --- |
| `classes.dex` `const-string` literals | UI labels, messages, dialogs | `decoded/smali/**.smali` |
| `/Language/Language{i/100}.str` | indexed string table (header `0x0c97`, u16-BE length + UTF-8) | `decoded/unknown/Language/*.str` |
| PNG image assets | baked labels (no text in dex/arsc) | `decoded/unknown/…` pixel replacement |
| `resources.arsc` | a few strings (`退出游戏`) | left as is (not required by observed screens) |

`AndroidManifest.xml` was changed only for the separate identity:
`package="com.t4game.en"`, `android:authorities="downloads.com.t4game.en"`,
`android:label="TruThan EN"`. The `getui.permission.GetuiService`
`<uses-permission>` stays; the redundant `<permission>` declaration was removed
because it caused `INSTALL_FAILED_DUPLICATE_PERMISSION`.

## 2. Translation map and scripts

- `build/english_test/build_en_ui.py` — the authoritative map: **341**
  `(zh, en)` pairs (core 11, start menu, login, role, NPC function names (79),
  inventory, combat, left-menu, society/player menus, plus a 2026-09-26 batch
  for login/auth validation, loading and confirmations). Applies exact matches
  to smali `const-string` and to `Language*.str`; re-runnable (idempotent).
- `build/english_test/verify_en_ui.py` — post-apply verification.
- `build/english_test/apply_report.txt` — per-entry hit report of the last run.
- `build/english_test/translate_assets.py` — pixel translator for
  `sysui/t_m_menu_*.png` (start-menu art family).
- `build/english_test/translate_menu_labels.py` — pixel translator for
  `login/botton{1..6,11..16}.png`, the real start-menu labels (see §3).

Last verification output:

```
mapping entries still present in Chinese: 0
MainMenu: 0 Chinese literals left
AuthenticateCommon: 0 Chinese literals left
RoleLogin: 4 Chinese literals left   (class descriptions — deferred)
Language: 2 Chinese literals left    (internal index error messages)
Language*.str: 2879 / 3223 entries still Chinese (intentionally untranslated)
```

## 3. Start-menu labels are images, not text (VERIFIED)

- The four start-menu buttons are **baked PNG labels** in `login/`:
  `botton1/11` 开始游戏→`Start Game`, `botton2/12` 快速进入→`Quick Enter`,
  `botton3/13` 快速注册→`Quick Register`, `botton4/14` 退出游戏→`Exit Game`,
  `botton5/15` 修复游戏→`Repair Game`, `botton6/16` 联网选择→`Network Select`
  (1..6 = normal 155x44, 11..16 = bright 189x59). Selected in
  `AuthenticateCommon` (`imgBottonImage` / `imgBrightBottonImage`).
- `开始游戏`/`快速进入`/`快速注册` do **not** exist in the built APK's dex,
  arsc or `Language*.str` — image-only, as expected.
- `sysui/t_m_menu_*.png` are also baked labels but are **not** what the running
  start menu draws; they were translated anyway and left in place.
- `mm4.png` / `mm5.png` (`imgMainMenuFontNormal`/`Bright`) are 608x15
  decoration strips with no readable text.
- Glyph replacement rule: colour-classify glyph vs. decorative swirl
  (`fill = r>b+40 and g>b+40`, `edge = r>g+10 and r>b+10 and r>35`), erase the
  dilated glyph mask but keep swirl pixels, then draw Arial Bold with a stroke
  in the sampled label colours (cream/maroon normal, gold/red bright).

### PNG colour-type finding (VERIFIED by experiment)

Rebuilding `login/botton*.png` as RGBA (PNG colour type 6) made the client hang
forever on `读取中...100%`; the same art re-saved as the original **palette PNG
(colour type 3)** loads normally. All translated `login/botton*.png` are
therefore written with `quantize(colors=256, method=FASTOCTREE)`, which keeps a
per-index `tRNS` alpha table like the source art.

## 4. Build and install

Pipeline (Java 8 PATH for apktool 3.0.3, build-tools 36.0.0):

```
java -jar tools\apktool\apktool.jar b build\english_test\decoded -o build\english_test\truthan_en_ui_test.apk
zipalign -f 4 <in> <aligned>
apksigner sign --ks <keystore> --ks-pass pass:password --ks-key-alias alias_name --out <signed> <aligned>
adb install -r build\english_test\truthan_en_ui_test_signed.apk
```

- Package: `com.t4game.en`, `versionCode 215`, label `TruThan EN`,
  installed **alongside** `com.t4game` (nothing uninstalled, nothing cleared).
- First install failed with `INSTALL_FAILED_DUPLICATE_PERMISSION` (getui
  permission re-declared) → fixed by dropping the `<permission>` element.
- First launch threw
  `SecurityException: getDeviceId … uid 10209 does not meet the requirements`
  → fixed with
  `adb shell pm grant com.t4game.en android.permission.READ_PHONE_STATE`
  (the original package has the same grant).
- Same-package upgrade is impossible: the LocalDev v0.12 keystore is missing, so
  Route A (separate package) is used. Route B (in-place upgrade) only becomes
  possible if that keystore is supplied.
- Server accepts any account/password (`auth_body()` in
  `server/truthan_local_server_v026.py`); roles are global, not per account.

## 5. Tool changes (`tools/truthan_ui_control.py`)

- `LABEL_ALIASES` + `label_matches()`: every canonical Chinese label can match
  its English spelling, and space differences (`StartGame` vs `Start Game`) are
  ignored. Chinese OCR support is unchanged.
- `classify()` now also matches English screens using a space-free
  reading-order concatenation of the OCR items, so labels split by the detector
  still classify: `START_MENU`, `ACCOUNT_LOGIN`, `ROLE_LIST`, `CREATE_ROLE`,
  `NAME_INPUT`, `NETWORK_ERROR`.
- `target()` falls back to the leading token of a split English label (its box
  centre is still inside the control) when no whole-label match exists.
- Focused suite after every change:
  `py -m unittest tests.test_truthan_ui_control tests.test_v026_baseline tests.test_map_entry_integration`
  → **Ran 50 tests, OK**.

## 6. Real-client test results (fresh ADB screenshots, 2992x1344)

Runtime always recreated with `$env:TRUTHAN_PACKAGE="com.t4game.en"; py tools\truthan_gui.py launch`
(fresh server, ADB reverse rules, force-stop + relaunch). Watcher OFF.

| Screenshot | Screen | Result |
| --- | --- | --- |
| `run_20260926_en_05_start_menu.png` | `START_MENU` | VERIFIED English `Start Game`, `Quick Register`, `Repair Game`, `Exit Game`; no clipping |
| `run_20260926_en_06_after_start_game.png` | `ACCOUNT_LOGIN` | VERIFIED tap on `Start Game` opens the login dialog |
| `run_20260926_en_07_after_log_in_tap.png` | `ACCOUNT_LOGIN` | VERIFIED `Log In`, `Register`, `Account`, `Change I…`, `Repair Gi…`, `zs000.lvh.me` |
| `run_20260926_en_08_start_menu_en.png` | `START_MENU` | VERIFIED after the 2026-09-26 message batch rebuild |
| `run_20260926_en_09_login_dialog_en.png` | `ACCOUNT_LOGIN` | VERIFIED navigation reproduced |
| `run_20260926_en_10_login_validation.png` | `ACCOUNT_LOGIN` | VERIFIED message `Please enter a username and password` (was `请输入用户名和密码`) |

All taps used OCR box centres only (`build/english_test/tap_label.py`); no
guessed coordinates.

## 7. Blocker and next action

- **Blocker:** the login fields are empty on this fresh package and the
  controller rule is *saved credentials only, never invent or fill credentials*
  (`tools/truthan_ui_control.py:492`). `run-as` shows no stored account
  (`files/` holds only `run.pid`, no `shared_prefs`), so `ROLE_LIST`,
  `CREATE_ROLE`, world HUD, inventory, NPC dialog and combat cannot be reached
  in the English build yet.
- **Next action:** supply a credential pair for the EN test package (or extend
  the controller with an explicit, documented saved-credential source), then run
  `bootstrap --reuse-session --adb-only` against `com.t4game.en` and capture the
  role list, role create, world HUD, menu→inventory and NPC dialog screens.
- Deferred by scope: lore/quests/item descriptions, 2879 remaining
  `Language*.str` entries, the `读取中` family beyond what was translated, and
  the tiny HUD PNGs `菜单`/`画质`/`聊天` (38-44 px; Chinese OCR branch still
  works there).
