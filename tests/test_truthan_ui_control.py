"""Safety/verification tests; runtime PASS is recorded separately in research notes."""
import json
from pathlib import Path
import struct
import sys
import time
from types import SimpleNamespace
from unittest.mock import patch
import unittest

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "tools"))
import truthan_ui_control as ui


class ControllerTests(unittest.TestCase):
    def test_role_creation_requires_ui_and_packet_agreement(self):
        self.assertEqual(ui.role_action(0, 4, False, {}), "create")
        self.assertEqual(ui.role_action(0, 4, False, {"existing_role_observed": True}), "create")
        self.assertEqual(ui.role_action(1, 3, True, {"attempted": True}), "enter")
        self.assertEqual(ui.role_action(None, 3, True, {}), "enter")
        for args in [(None, 4, False, {}), (0, 3, False, {}), (0, 4, False, {"attempted": True}),
                     (0, 4, False, {"existing_role_observed": False}), (1, 3, False, {})]:
            with self.assertRaises(ui.Blocked):
                ui.role_action(*args)

    def test_name_visibility_tolerates_android_text_cursor_only(self):
        self.assertTrue(ui.name_visible([{"text": "CodexU|"}], "CodexU"))
        self.assertTrue(ui.name_visible([{"text": "CodexU"}], "CodexU"))
        self.assertFalse(ui.name_visible([{"text": "CodexU2|"}], "CodexU"))
        self.assertFalse(ui.name_visible([{"text": "codexu|"}], "CodexU"))
        self.assertFalse(ui.name_visible([{"text": "DONE"}], "CodexU"))

    def test_creation_guard_is_scoped_to_one_server_session(self):
        other_server = {"attempted": True, "started": 1.0, "server_pid": 11,
                        "server_creation": "/Date(1000)/"}
        self.assertEqual(ui.role_action(0, 4, False, other_server,
                                        {"server_creation": "/Date(2000)/"}), "create")
        with self.assertRaisesRegex(ui.Blocked, "duplicate"):
            ui.role_action(0, 4, False, other_server, {"server_creation": "/Date(1000)/"})
        with self.assertRaisesRegex(ui.Blocked, "duplicate"):
            ui.role_action(0, 4, False, other_server, None)
        with self.assertRaisesRegex(ui.Blocked, "duplicate"):
            ui.role_action(0, 4, False, {"attempted": True}, {"server_creation": "/Date(1)/"})
        self.assertFalse(ui.creation_record_blocks({"existing_role_observed": True},
                                                   {"server_creation": "/Date(2000)/"}))
        record = ui.creation_record({"started": 5.0, "server_pid": 7,
                                     "server_creation": "/Date(9)/"})
        self.assertEqual(record["server_creation"], "/Date(9)/")
        self.assertEqual(record["server_pid"], 7)
        self.assertTrue(record["attempted"])

    def test_unchanged_stale_other_scene_or_role_is_not_movement(self):
        before = dict(game_connected=True, scene={"id": 9068}, updated_unix_ms=100,
                      player=dict(id=1, x=180, y=230, position_source="server_scene_state"))
        after = json.loads(json.dumps(before))
        after["updated_unix_ms"] = 201
        after["player"].update(y=254, position_source="cmd133")
        self.assertTrue(ui.movement_verified(before, after, 200))
        for key, value in [("game_connected", False), ("updated_unix_ms", 199), ("scene", {"id": 1})]:
            changed = dict(after, **{key: value})
            self.assertFalse(ui.movement_verified(before, changed, 200))
        for key, value in [("y", 230), ("id", 2), ("position_source", "server_scene_state")]:
            changed = dict(after, player=dict(after["player"], **{key: value}))
            self.assertFalse(ui.movement_verified(before, changed, 200))

    def test_connection_alone_cannot_prove_in_game(self):
        state = dict(game_connected=True, updated_unix_ms=2000, scene={"id": 9068}, player=dict(id=1,x=180,y=230))
        self.assertFalse(ui.world_verified("WORLD_HUD", state, {"ready": False}, 1))
        self.assertFalse(ui.world_verified("ACCOUNT_LOGIN", state, {"ready": True}, 1))
        self.assertFalse(ui.world_verified("WORLD_HUD", state, {"ready": True}, 3))
        self.assertTrue(ui.world_verified("WORLD_HUD", state, {"ready": True}, 1))

    def test_utf8_hud_labels_are_classified(self):
        items = [dict(text=text, score=.99) for text in ("\u804a\u5929", "\u793e\u4ea4", "\u83dc\u5355")]
        self.assertEqual(ui.classify(items), "WORLD_HUD")
        readable_hud = [dict(text=text, score=.99) for text in ("\u804a\u5929", "\u753b\u8d28")]
        self.assertEqual(ui.classify(readable_hud), "WORLD_HUD")

    def test_name_input_prompt_accepts_observed_ocr_confidence(self):
        items = [dict(text="\u8f93\u5165\u89d2\u8272\u7684\u540d\u5b57\uff1a CodexU", score=.84),
                 dict(text="\u786e\u5b9a", score=1.0)]
        self.assertEqual(ui.classify(items), "NAME_INPUT")
        items[0]["score"] = .79
        self.assertEqual(ui.classify(items), "UNKNOWN")

    def test_session_identity_uses_process_start_time_without_wmi(self):
        value = {"server_pid": 1234, "started": 100.0, "server_creation": "/Date(100000)/"}
        with patch.object(ui.gui, "run", return_value=SimpleNamespace(
                stdout='{"ProcessName":"python","CreationDate":"/Date(100000)/"}')) as run:
            self.assertTrue(ui.session_alive(value))
            self.assertIn("Get-Process", run.call_args.args[0][-1])
        with patch.object(ui.gui, "run", return_value=SimpleNamespace(
                stdout='{"ProcessName":"python","CreationDate":"/Date(200000)/"}')):
            self.assertFalse(ui.session_alive(value))

    def test_reuse_session_refuses_stale_runtime_without_starting_server(self):
        with patch.object(ui, "session_alive", return_value=False), \
             patch.object(ui, "start_session", side_effect=AssertionError("fresh server started")):
            with self.assertRaisesRegex(ui.Blocked, "--reuse-session"):
                ui.require_reusable_session({"server_pid": 1234})
        live = {"server_pid": 1234}
        with patch.object(ui, "session_alive", return_value=True):
            self.assertIs(ui.require_reusable_session(live), live)

    def test_packet_connection_boundary_and_sanitization(self):
        directory = ROOT / "runtime/agent/ui_control_test_fixture"
        directory.mkdir(parents=True, exist_ok=True)
        old = directory / "20260925_010000_p19000_old.log"
        current = directory / "20260925_020000_p19000_new.log"
        try:
            old.write_text("\n".join(f"[01:00] {d}-FRAME 12 bytes port=19000 cmd={c} wire=NORMAL"
                                    for d,c in (("RX",6),("TX",7),("TX",32),("RX",10),("TX",10))))
            self.assertTrue(ui.packet_evidence(0,directory)["ready"])
            frame = b"\x24\x25" + struct.pack(">HBIh",14,0,0,20) + b"\x01" + struct.pack(">i",0)
            current.write_text("[02:00] RX-FRAME 12 bytes port=19000 cmd=6 wire=FE-PREAUTH\n"
                               + "[02:00] RX-FRAME 52 bytes port=19000 cmd=277 wire=FE-PREAUTH\nHEX secret\nASCII password\n"
                               + "[02:00] TX-FRAME 16 bytes port=19000 cmd=20 wire=SERVER-NORMAL\nHEX " + frame.hex())
            evidence = ui.packet_evidence(0,directory)
            self.assertFalse(evidence["ready"])
            self.assertEqual(evidence["role_count"],0)
            self.assertNotIn("password",json.dumps(evidence))
            self.assertNotIn("HEX",json.dumps(evidence))
        finally:
            old.unlink(missing_ok=True)
            current.unlink(missing_ok=True)
            directory.rmdir()

    def test_redacts_ocr_secrets_and_player_name(self):
        obs=dict(items=[dict(text="secret",box=[[0,0]]*4,score=1),dict(text="登录游戏",box=[[0,0]]*4,score=1)],
                 runtime={"player":{"name":"private"}})
        safe=ui.safe_observation(obs)
        self.assertNotIn("secret",json.dumps(safe))
        self.assertNotIn("private",json.dumps(safe))
        self.assertEqual(obs["runtime"]["player"]["name"],"private")
        command = ui.safe_command(["shell", "input", "text", "CodexU"])
        self.assertNotIn("CodexU", json.dumps(command))
        self.assertIn("length=6", json.dumps(command))

    def test_expired_observation_never_taps(self):
        controller=ui.Controller.__new__(ui.Controller)
        with self.assertRaisesRegex(ui.Blocked,"expired"):
            controller.action({"captured":time.time()-60},["shell","input","tap","1","1"],"test")

    def test_observation_expiring_during_action_checks_never_taps(self):
        controller=ui.Controller.__new__(ui.Controller)
        # Second check happens after the ADB image-to-OCR processing window
        # (6.0s budget for source=adb); 106.1-99.9=6.2s must expire.
        clock=iter((100.0,106.1))
        with patch("truthan_screen_watch._device_screen_size",return_value=(200,200)), \
             patch.object(ui.gui,"current_focus",return_value={"truthan_foreground":True}), \
             patch.object(ui,"time") as mocked_time, \
             patch.object(controller,"record"), \
             patch.object(ui.gui,"adb") as adb:
            mocked_time.time.side_effect=lambda: next(clock)
            with self.assertRaisesRegex(ui.Blocked,"expired"):
                controller.action({"captured":99.9,"source":"adb","dimensions":[200,200],
                                   "items":[],"runtime":{}},
                                  ["shell","input","tap","1","1"],"test")
            adb.assert_not_called()

    def test_watcher_observation_rejects_stale_frame_or_ocr(self):
        controller=ui.Controller.__new__(ui.Controller)
        for field, age in (("frame_age_ms", 1001), ("ocr_age_ms", 1501)):
            obs={"captured":time.time(), "source":"watcher", "frame_age_ms":0,
                 "ocr_age_ms":0, field:age}
            with self.subTest(field=field), self.assertRaisesRegex(ui.Blocked,"stale"):
                controller.action(obs,["shell","input","tap","1","1"],"test")

    def test_delayed_watcher_observation_falls_back_to_fresh_adb_ocr(self):
        controller=ui.Controller.__new__(ui.Controller)
        controller.started=time.time()-10
        fallback={"source":"adb", "captured":time.time(), "screen":"START_MENU"}
        now=time.time()
        delayed={"screen_state":{
            "frame_timestamp_epoch":now-2.0,
            "ocr_timestamp_epoch":now-1.8,
            "frame_id":42,
            "frame_image_frame_id":42,
            "device_size":[2992,1344],
        }}
        with patch.object(ui.gui,"current_focus",return_value={"truthan_foreground":True}), \
             patch("truthan_screen_watch.watcher_observe",return_value=delayed) as observe, \
             patch("truthan_screen_watch._device_screen_size",return_value=(2992,1344)), \
             patch.object(controller,"observe_adb",return_value=fallback) as adb_observe, \
             patch.object(controller,"record"):
            self.assertIs(controller.observe(source="auto"),fallback)
        observe.assert_called_once_with(timeout=8.0,include_frame=True)
        adb_observe.assert_called_once_with()

    def test_adb_only_controller_never_waits_on_watcher(self):
        controller=ui.Controller.__new__(ui.Controller)
        controller.adb_only=True
        result={"source":"adb"}
        with patch.object(controller,"observe_adb",return_value=result) as adb_observe, \
             patch("truthan_screen_watch.watcher_observe",side_effect=AssertionError("watcher used")):
            self.assertIs(controller.observe(),result)
        adb_observe.assert_called_once_with()

    def test_bootstrap_no_create_stops_before_role_creation_action(self):
        controller=ui.Controller.__new__(ui.Controller)
        controller.started=time.time()
        observation={
            "in_game":False,
            "screen":"ROLE_LIST",
            "items":[{"text":"\u521b\u5efa\u65b0\u89d2\u8272","score":.99} for _ in range(4)],
            "packets":{"role_count":0,"headers":[]},
        }
        with patch.object(controller,"observe",return_value=observation), \
             patch.object(controller,"record"), \
             patch.object(controller,"tap_label") as tap_label, \
             self.assertRaisesRegex(ui.Blocked,"--no-create"):
            controller.bootstrap(allow_create=False)
        tap_label.assert_not_called()

    def test_delayed_label_action_reobserves_and_recomputes_target(self):
        controller=ui.Controller.__new__(ui.Controller)
        label="ç™»å½•æ¸¸æˆ"
        def item(x):
            return {"text":label,"score":.99,
                    "box":[[x,100],[x+40,100],[x+40,140],[x,140]]}
        delayed={"source":"adb","captured":time.time(),"dimensions":[2992,1344],
                 "items":[item(100)]}
        fresh={"source":"adb","captured":time.time(),"dimensions":[2992,1344],
               "items":[item(500)]}
        tapped=[]
        def tap(_obs,xy,_basis):
            tapped.append(xy)
            if len(tapped)==1:
                raise ui.Blocked("Observation expired; obtain a fresh screenshot")
            return "tap sent"
        with patch.object(controller,"observe_adb",return_value=fresh) as adb_observe, \
             patch.object(controller,"record"), patch.object(controller,"tap",side_effect=tap):
            result=controller.tap_label(delayed,label)
        self.assertEqual(result,"tap sent")
        self.assertEqual(tapped,[[120,120],[520,120]])
        adb_observe.assert_called_once_with()

    def test_move_reobserves_and_rematches_after_pre_input_expiration(self):
        controller=ui.Controller.__new__(ui.Controller)
        now=time.time()*1000
        before={"in_game":True,"dimensions":[2992,1344],"screenshot":"unused.png",
                "runtime":{"game_connected":True,"updated_unix_ms":now-10000,
                           "scene":{"id":9068},"player":{"id":100001,"x":180,"y":230}},
                "screen":"WORLD_HUD","items":[]}
        fresh={**before,"captured":time.time()}
        after={"in_game":True,"runtime":{"game_connected":True,"updated_unix_ms":now+1000,
                                          "scene":{"id":9068},"player":{"id":100001,"x":180,"y":238,
                                                                          "position_source":"cmd133"}},
               "screen":"WORLD_HUD","items":[]}
        reads=[]
        def action(*_args):
            if not reads:
                reads.append("expired")
                raise ui.Blocked("Observation expired; obtain a fresh screenshot")
            reads.append("sent")
            return after
        with patch.object(controller,"observe",side_effect=[before,fresh]) as observe, \
             patch.object(controller,"match_down",side_effect=[(1.0,(500,1100)),(1.0,(510,1110))]) as match, \
             patch("cv2.imread",return_value=SimpleNamespace(shape=(20,20))), \
             patch.object(controller,"record") as record, \
             patch.object(controller,"action",side_effect=action):
            result=controller.move(600)
        self.assertTrue(result["verified"])
        self.assertEqual(reads,["expired","sent"])
        self.assertEqual(observe.call_count,2)
        self.assertEqual(match.call_count,2)
        self.assertEqual(record.call_args_list[0].kwargs["event"],"movement_action_refresh")

    def test_dimension_mismatch_never_taps(self):
        controller=ui.Controller.__new__(ui.Controller)
        obs={"captured":time.time(), "source":"adb", "dimensions":[100,100]}
        with patch("truthan_screen_watch._device_screen_size", return_value=(200,200)), \
             patch.object(ui.gui, "current_focus", return_value={"truthan_foreground":True}), \
             patch.object(ui.gui, "adb") as adb:
            with self.assertRaisesRegex(ui.Blocked,"dimensions changed"):
                controller.action(obs,["shell","input","tap","1","1"],"test")
            adb.assert_not_called()

    def test_native_center_and_duplicate_target(self):
        item=dict(text="确定",score=.99,box=[[100,200],[200,200],[200,240],[100,240]])
        self.assertEqual(ui.center(item),[150,220])
        controller=ui.Controller.__new__(ui.Controller)
        with self.assertRaises(ui.Blocked):
            controller.target({"items":[item,item]},"确定")


class CredentialFillTests(unittest.TestCase):
    """Env-gated local-test credential fill (TRUTHAN_LOCAL_TEST_CREDENTIALS)."""

    def test_credentials_off_by_default(self):
        self.assertIsNone(ui.credentials({}))
        self.assertIsNone(ui.credentials({"TRUTHAN_LOCAL_TEST_CREDENTIALS": ""}))
        self.assertIsNone(ui.credentials({"TRUTHAN_LOCAL_TEST_CREDENTIALS": "  "}))

    def test_credentials_parses_user_pass_once(self):
        pair = ui.credentials({"TRUTHAN_LOCAL_TEST_CREDENTIALS": "blrmtest:blrmtest"})
        self.assertEqual(pair, ("blrmtest", "blrmtest"))
        pair = ui.credentials({"TRUTHAN_LOCAL_TEST_CREDENTIALS": "user:pa:ss"})
        self.assertEqual(pair, ("user", "pa:ss"))

    def test_credentials_rejects_malformed_values(self):
        for raw in ("nocolon", ":x", "x:", "blrmtest:blrm test", "a\tb:c"):
            with self.assertRaises(ui.Blocked):
                ui.credentials({"TRUTHAN_LOCAL_TEST_CREDENTIALS": raw})

    def test_field_hint_matches_is_scoped_to_login_fields(self):
        self.assertTrue(ui.field_hint_matches("Accou", "账号:"))
        self.assertTrue(ui.field_hint_matches("Passw", "密码:"))
        self.assertTrue(ui.field_hint_matches("Account", "账号:"))
        self.assertTrue(ui.field_hint_matches("Password", "密码:"))
        self.assertFalse(ui.field_hint_matches("Acc", "账号:"), "too short to trust")
        self.assertFalse(ui.field_hint_matches("Accou", "密码:"))
        self.assertFalse(ui.field_hint_matches("Accou", "登录游戏"))

    def test_field_content_visible_uses_input_bands_only(self):
        def item(x, y):
            return {"text": "x", "score": .99,
                    "box": [[x - 5, y - 5], [x + 5, y - 5],
                            [x + 5, y + 5], [x - 5, y + 5]]}
        items = [item(1247, 254), item(1564, 441)]  # hint + Save password
        self.assertFalse(ui.field_content_visible(items, "账号:"))
        self.assertFalse(ui.field_content_visible(items, "密码:"))
        items.append(item(1488, 243))               # account content
        self.assertTrue(ui.field_content_visible(items, "账号:"))
        self.assertFalse(ui.field_content_visible(items, "密码:"))
        items.append(item(1488, 333))               # password content/asterisks
        self.assertTrue(ui.field_content_visible(items, "密码:"))
        malformed = [{"text": "x", "score": .99, "box": [[0, 0]]}]
        self.assertFalse(ui.field_content_visible(malformed, "账号:"),
                         "malformed boxes are skipped, not fatal")

    def test_classify_register_form(self):
        def item(text):
            return {"text": text, "score": .99,
                    "box": [[0, 0], [1, 0], [1, 1], [0, 1]]}
        items = [item("Enter account:"), item("Enter password:"),
                 item("Note:"), item("OK"), item("Back")]
        self.assertEqual(ui.classify(items), "REGISTER")

    def test_classify_create_role_en_tolerates_lame_ocr(self):
        def item(text):
            return {"text": text, "score": .99,
                    "box": [[0, 0], [1, 0], [1, 1], [0, 1]]}
        # Live EN screen: 'Name' misread as 'lame', no whole 'Name' token.
        items = [item("Create Role"), item("lame"), item("Class"),
                 item("Warrior"), item("Create"), item("Back")]
        self.assertEqual(ui.classify(items), "CREATE_ROLE")
        # Role List wins earlier when its title is present.
        items.insert(0, item("Role List"))
        self.assertEqual(ui.classify(items), "ROLE_LIST")

    def test_target_uses_clipped_field_hint_and_topmost_match(self):
        def box(x, y):
            return [[x, y], [x + 80, y], [x + 80, y + 40], [x, y + 40]]
        hint = {"text": "Accou", "score": 1.0, "box": box(1200, 230)}
        button = {"text": "Account", "score": 1.0, "box": box(1350, 630)}
        controller = ui.Controller.__new__(ui.Controller)
        with self.assertRaises(ui.Blocked):
            controller.target({"items": [hint, button]}, "账号:")
        self.assertEqual(controller.target({"items": [hint, button]}, "账号:", first=True),
                         ui.center(hint))
        self.assertEqual(controller.target({"items": [hint]}, "账号:"), ui.center(hint))

    def _login_obs(self, items):
        return {"in_game": False, "screen": "ACCOUNT_LOGIN",
                "dimensions": [2992, 1344], "items": items,
                "packets": {"headers": [], "ready": False, "role_count": None}}

    def _field_item(self, x, y):
        return {"text": "content", "score": 1.0,
                "box": [[x - 20, y - 10], [x + 20, y - 10],
                        [x + 20, y + 10], [x - 20, y + 10]]}

    def test_bootstrap_fills_only_when_env_set(self):
        hint_items = [{"text": "Accou", "score": 1.0,
                       "box": [[1160, 219], [1335, 219], [1335, 288], [1160, 288]]},
                      {"text": "登录游戏", "score": .99,
                       "box": [[1291, 513], [1467, 513], [1467, 594], [1291, 594]]}]
        empty_obs = self._login_obs(hint_items)
        account_typed = self._login_obs(hint_items + [self._field_item(1488, 243)])
        filled_obs = self._login_obs(hint_items
                                     + [self._field_item(1488, 243),
                                        self._field_item(1488, 333)])
        role_obs = {"in_game": False, "screen": "ROLE_LIST",
                    "dimensions": [2992, 1344],
                    "items": [{"text": "创建新角色", "score": .99,
                               "box": [[0, 0], [1, 0], [1, 1], [0, 1]]}
                              for _ in range(4)],
                    "packets": {"headers": [], "ready": False, "role_count": 0}}
        taps, actions = [], []

        def fake_calibrated(_obs, xy):
            taps.append(list(xy))
            return _obs

        def fake_action(_obs, args, _basis):
            actions.append(list(args))
            return account_typed if len(actions) == 1 else filled_obs

        def fake_tap(_obs, label, first=False):
            return role_obs if label == "登录游戏" else _obs

        controller = ui.Controller.__new__(ui.Controller)
        controller.started = time.time()
        with patch.dict(ui.os.environ, {"TRUTHAN_LOCAL_TEST_CREDENTIALS":
                                        "blrmtest:blrmtest"}), \
             patch.object(controller, "observe", side_effect=[empty_obs, role_obs]), \
             patch.object(controller, "record"), \
             patch.object(controller, "calibrated", side_effect=fake_calibrated), \
             patch.object(controller, "action", side_effect=fake_action), \
             patch.object(controller, "tap_label", side_effect=fake_tap):
            with self.assertRaisesRegex(ui.Blocked, "--no-create"):
                controller.bootstrap(allow_create=False)
        self.assertEqual(taps, [[1488, 243], [1488, 333]],
                         "empty fields are focused at calibrated input centres")
        self.assertEqual(len(actions), 2)
        self.assertEqual(actions[0][:3], ["shell", "input", "text"])
        self.assertEqual(actions[0][3], "blrmtest")
        self.assertEqual(actions[1][3], "blrmtest")
        self.assertNotIn("blrmtest", " ".join(ui.safe_command(actions[0])))

    def test_fill_keeps_prefilled_account_and_password(self):
        hint_items = [{"text": "Accou", "score": 1.0,
                       "box": [[1160, 219], [1335, 219], [1335, 288], [1160, 288]]},
                      {"text": "登录游戏", "score": .99,
                       "box": [[1291, 513], [1467, 513], [1467, 594], [1291, 594]]}]
        prefilled = self._login_obs(hint_items
                                    + [self._field_item(1488, 243),
                                       self._field_item(1488, 333)])
        role_obs = {"in_game": False, "screen": "ROLE_LIST",
                    "dimensions": [2992, 1344],
                    "items": [{"text": "创建新角色", "score": .99,
                               "box": [[0, 0], [1, 0], [1, 1], [0, 1]]}
                              for _ in range(4)],
                    "packets": {"headers": [], "ready": False, "role_count": 0}}
        controller = ui.Controller.__new__(ui.Controller)
        controller.started = time.time()
        with patch.dict(ui.os.environ, {"TRUTHAN_LOCAL_TEST_CREDENTIALS":
                                        "blrmtest:blrmtest"}), \
             patch.object(controller, "observe", side_effect=[prefilled, role_obs]), \
             patch.object(controller, "record"), \
             patch.object(controller, "calibrated") as calibrated, \
             patch.object(controller, "action") as action, \
             patch.object(controller, "tap_label",
                          side_effect=lambda o, l, first=False:
                          role_obs if l == "登录游戏" else o):
            with self.assertRaisesRegex(ui.Blocked, "--no-create"):
                controller.bootstrap(allow_create=False)
        calibrated.assert_not_called()
        action.assert_not_called()

    def test_bootstrap_without_env_never_taps_field_labels(self):
        login_obs = {"in_game": False, "screen": "ACCOUNT_LOGIN",
                     "dimensions": [2992, 1344],
                     "items": [{"text": "登录游戏", "score": .99,
                                "box": [[0, 0], [1, 0], [1, 1], [0, 1]]}],
                     "packets": {"headers": [], "ready": False, "role_count": None}}
        controller = ui.Controller.__new__(ui.Controller)
        controller.started = time.time()
        labels = []
        with patch.dict(ui.os.environ, {}, clear=True), \
             patch.object(controller, "observe", return_value=login_obs), \
             patch.object(controller, "record"), \
             patch.object(controller, "tap_label",
                          side_effect=lambda o, l, first=False: labels.append(l) or o):
            with self.assertRaises(ui.Blocked):
                controller.bootstrap()
        self.assertTrue(labels)
        self.assertNotIn("账号:", labels)
        self.assertNotIn("密码:", labels)
        self.assertEqual(set(labels), {"登录游戏"})


if __name__ == "__main__":
    unittest.main()
