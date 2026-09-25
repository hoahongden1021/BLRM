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
        clock=iter((100.0,103.1))
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


if __name__ == "__main__":
    unittest.main()
