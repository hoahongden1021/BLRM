#!/usr/bin/env python3
"""Evidence-gated ADB/OCR controller. See docs/TRUTHAN_UI_CONTROL.md."""
from __future__ import annotations

import argparse
import datetime as dt
from io import BytesIO
import json
import os
from pathlib import Path
import re
import struct
import sys
import time

import truthan_gui as gui

ROOT = gui.ROOT
HOME = ROOT / "runtime/agent/ui_control"
SESSION = HOME / "session.json"
LEDGER = HOME / "creation.json"
LOGS = ROOT / "server/truthan_packet_logs"
LABELS = {"开始游戏", "修复游戏", "退出游戏", "登录游戏", "注册账号", "个人中心",
          "修改密码", "账号:", "密码:", "角色列表", "名称", "等级", "国家",
          "创建新角色", "创建角色", "名字", "性别", "职业", "创建", "男", "东国",
          "力士", "进入游戏", "删除角色", "输入角色的名字:", "确定", "返回", "选择",
          "DONE", "画质", "聊天", "社交", "菜单", "TEST OBJ1014", "TEST OBJ1155",
          "网络错误", "网络故障"}


class Blocked(RuntimeError):
    pass


def read_json(path):
    try:
        return json.loads(Path(path).read_text(encoding="utf-8-sig"))
    except (OSError, ValueError):
        return {}


def save_json(path, value):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_suffix(".tmp")
    tmp.write_text(json.dumps(value, ensure_ascii=True, indent=2) + "\n", encoding="utf-8")
    tmp.replace(path)


def safe_command(args):
    """Hide text-entry values from the durable trace while keeping lengths."""
    result = list(args)
    if len(result) >= 4 and result[:3] == ["shell", "input", "text"]:
        result[3:] = [f"[REDACTED_TEXT length={len(''.join(result[3:]))}]"]
    return result


def center(item):
    box = item["box"]
    if len(box) != 4 or any(len(p) != 2 for p in box):
        raise Blocked("Malformed OCR box")
    return [round(sum(p[i] for p in box) / 4) for i in (0, 1)]


def classify(items):
    normalize = lambda text: text.strip().replace("\uff1a", ":")
    texts = {i["text"].strip().replace("：", ":") for i in items if i["score"] >= .90}
    if texts & {"网络错误", "网络故障"}:
        return "NETWORK_ERROR"
    if {"开始游戏", "退出游戏", "修复游戏"} <= texts:
        return "START_MENU"
    if {"账号:", "登录游戏"} <= texts:
        return "ACCOUNT_LOGIN"
    if "角色列表" in texts:
        return "ROLE_LIST"
    if {"创建角色", "名字", "创建"} <= texts:
        return "CREATE_ROLE"
    if any("输入角色的名字" in s for s in texts) and "确定" in texts:
        return "NAME_INPUT"
    if any("\u8f93\u5165\u89d2\u8272\u7684\u540d\u5b57:" in normalize(i["text"]) and i["score"] >= .80
           for i in items) and "\u786e\u5b9a" in texts:
        return "NAME_INPUT"
    if "DONE" in texts:
        return "NAME_IME"
    # 画质 and 聊天 are consistently readable on the live HUD; the smaller
    # 社交/菜单 labels can fall below RapidOCR's confidence threshold.
    if {"聊天", "画质"} <= texts or {"聊天", "社交", "菜单"} <= texts:
        return "WORLD_HUD"
    return "UNKNOWN"


def packet_evidence(started, directory=LOGS):
    """Read only current connection; expose headers/count, never auth payloads."""
    candidates = []
    for path in Path(directory).glob("*_p19000_*.log"):
        if path.stat().st_mtime < started:
            continue
        data = path.read_text(encoding="utf-8", errors="replace")
        # The p19000 file can contain auth/session frames and later world
        # entry. A newly reconnected UI may still have only the prior role
        # count, so role choice also checks the visible Enter Game control.
        if (re.search(r"RX-FRAME .* cmd=277\b", data)
                or re.search(r"RX-FRAME .* cmd=6\b", data)):
            candidates.append((path.name, data))
    if not candidates:
        return {"headers": [], "ready": False, "role_count": None, "file": None}
    name, data = max(candidates)
    headers = re.findall(r"^\[.*(?:RX-FRAME|TX-FRAME).*$|^CLOSED .*$", data, re.M)
    count = None
    for match in re.finditer(r"TX-FRAME .* cmd=20 wire=SERVER-NORMAL\nHEX ([0-9a-f]+)", data):
        frame = bytes.fromhex(match[1])
        if len(frame) >= 16 and frame[11] == 1:
            count = struct.unpack(">i", frame[12:16])[0]
    ready = all(re.search(rf"{direction}-FRAME .* cmd={cmd}\b", data)
                for direction, cmd in (("RX", 6), ("TX", 7), ("TX", 32), ("RX", 10), ("TX", 10)))
    return {"file": name, "headers": headers, "role_count": count,
            "ready": bool(ready and "CLOSED " not in data),
            "create_sent": bool(re.search(r"RX-FRAME .* cmd=16\b", data))}


def world_verified(screen, runtime, packets, started):
    player = runtime.get("player", {})
    return (screen == "WORLD_HUD" and packets.get("ready")
            and runtime.get("game_connected") is True
            and runtime.get("updated_unix_ms", 0) >= started * 1000
            and isinstance(runtime.get("scene", {}).get("id"), int)
            and all(type(player.get(k)) is int for k in ("id", "x", "y")))


def movement_verified(before, after, action_ms):
    bp, ap = before.get("player", {}), after.get("player", {})
    return (after.get("game_connected") is True
            and before.get("scene") == after.get("scene")
            and bp.get("id") == ap.get("id")
            and all(type(p.get(k)) is int for p in (bp, ap) for k in ("x", "y"))
            and ap.get("position_source") == "cmd133"
            and after.get("updated_unix_ms", 0) > max(action_ms, before.get("updated_unix_ms", 0))
            and (bp["x"], bp["y"]) != (ap["x"], ap["y"]))


def role_action(count, empty_slots, has_enter, creation_record):
    # A visible entry control with a populated row is direct UI evidence of an
    # existing role even when the fresh p19000 role-count response is absent or
    # stale (the account/role UI can appear before that connection is rebuilt).
    if has_enter:
        return "enter"
    if count == 0 and empty_slots == 4:
        # This marker records an existing role seen in an earlier runtime;
        # it is not a role-creation attempt. Unknown ledger entries stay blocked.
        if creation_record_blocks(creation_record):
            raise Blocked("Creation already attempted/observed; server may have reset. Refusing duplicate")
        return "create"
    raise Blocked("Role count/UI disagree or are unknown; refusing creation")


def creation_record_blocks(record):
    return bool(record) and record != {"existing_role_observed": True}


def safe_observation(obs):
    result = {k: v for k, v in obs.items() if k not in ("items", "runtime")}
    result["items"] = [{**i, "text": i["text"] if i["text"] in LABELS else "[REDACTED]"}
                       for i in obs["items"]]
    result["runtime"] = json.loads(json.dumps(obs["runtime"]))
    if "player" in result["runtime"]:
        result["runtime"]["player"]["name"] = "[REDACTED]"
    return result


class Controller:
    def __init__(self, session, adb_only=False):
        self.session = session
        self.started = session["started"]
        self.adb_only = adb_only
        self.directory = HOME / dt.datetime.now(dt.timezone.utc).strftime("%Y%m%dT%H%M%S_%fZ")
        self.directory.mkdir(parents=True)
        self.trace = self.directory / "trace.jsonl"
        self.engine = None
        self.index = 0

    def record(self, **event):
        event["timestamp"] = dt.datetime.now(dt.timezone.utc).isoformat()
        with self.trace.open("a", encoding="utf-8") as f:
            f.write(json.dumps(event, ensure_ascii=True) + "\n")

    def observe(self, source="auto"):
        """Prefer a fresh watcher OCR frame; retain the proven ADB OCR fallback."""
        if source == "adb" or getattr(self, "adb_only", False):
            return self.observe_adb()
        from truthan_screen_watch import WatchError, watcher_observe
        from PIL import Image

        focus = gui.current_focus()
        if not focus["truthan_foreground"]:
            raise Blocked("com.t4game is not foreground")
        runtime = read_json(LOGS / "runtime_state.json")
        packets = packet_evidence(self.started)
        try:
            watched = watcher_observe(timeout=8.0, include_frame=True)
            state = watched["screen_state"]
            from truthan_screen_watch import _device_screen_size
            device_size = list(_device_screen_size())
            if device_size != state.get("device_size"):
                raise Blocked("Watcher/device dimensions changed; refusing coordinate mapping")
            frame_ts = float(state["frame_timestamp_epoch"])
            ocr_ts = float(state["ocr_timestamp_epoch"])
            now = time.time()
            if state.get("frame_image_frame_id") != state.get("frame_id"):
                raise Blocked("Watcher image and OCR frame IDs do not match")
            if now - frame_ts > 1.0 or now - ocr_ts > 1.5:
                raise Blocked("Watcher frame/OCR became stale before delivery")
            frame_bytes = watched["frame_image_bytes"]
            self.index += 1
            destination = self.directory / f"{self.index:03d}.jpg"
            with Image.open(BytesIO(frame_bytes)) as frame_image:
                if list(frame_image.size) != state.get("frame_size"):
                    raise Blocked("Watcher image dimensions disagree with its frame metadata")
                width, height = device_size
                sw, sh = state["frame_size"]
                items = []
                for item in state.get("items", []):
                    box = [[round(p[0] * width / sw), round(p[1] * height / sh)]
                           for p in item["box"]]
                    items.append({"text": item["text"], "score": item["score"], "box": box})
                image_dimensions = list(frame_image.size)
            # Keep the exact encoded video frame that produced these OCR boxes.
            destination.write_bytes(frame_bytes)
            classification = state.get("classification", {})
            screen = classification.get("substate") or classification.get("state", "UNKNOWN")
            if screen == "UNKNOWN_SCREEN":
                screen = "UNKNOWN"
            obs = dict(captured=frame_ts, dimensions=device_size, screen=screen,
                       items=items, runtime=runtime, packets=packets,
                       screenshot=str(destination.relative_to(ROOT)), source="watcher",
                       frame_id=state["frame_id"], frame_age_ms=max(0, (time.time()-frame_ts)*1000),
                       observe_wait_ms=watched.get("observe_wait_ms"),
                       ocr_timestamp_epoch=ocr_ts,
                       ocr_age_ms=max(0, (time.time()-ocr_ts)*1000), device_size=device_size,
                       image_timestamp_epoch=frame_ts, image_frame_id=state["frame_image_frame_id"],
                       image_dimensions=image_dimensions)
            obs["in_game"] = bool(world_verified(screen, runtime, packets, self.started))
            self.record(tool="truthan_screen_watch.observe", observation=safe_observation(obs))
            return obs
        except (WatchError, OSError, ValueError, KeyError, Blocked) as exc:
            self.record(event="watcher_fallback", reason=str(exc))
            return self.observe_adb()

    def observe_adb(self):
        from PIL import Image, ImageDraw
        from rapidocr import RapidOCR
        from truthan_rapidocr import _extract
        focus = gui.current_focus()
        if not focus["truthan_foreground"]:
            raise Blocked("com.t4game is not foreground")
        # Collect unrelated evidence before the screenshot/OCR freshness window starts.
        runtime = read_json(LOGS / "runtime_state.json")
        packets = packet_evidence(self.started)
        from truthan_screen_watch import _device_screen_size
        device_size = list(_device_screen_size())
        raw = gui.capture_transient()
        self.index += 1
        destination = self.directory / f"{self.index:03d}.png"
        try:
            captured = time.time()
            with Image.open(raw) as image:
                if list(image.size) != device_size:
                    raise Blocked("Fresh ADB screenshot dimensions disagree with device dimensions")
            if self.engine is None:
                self.engine = RapidOCR()
            texts, scores, boxes, _, _ = _extract(self.engine(str(raw)))
            ocr_timestamp = time.time()
            items = [dict(text=t, score=s, box=b) for t, s, b in zip(texts, scores, boxes) if b]
            screen = classify(items)
            with Image.open(raw) as im:
                width, height = im.size
                # Mask all non-control OCR text, including names and input contents.
                draw = ImageDraw.Draw(im)
                for item in items:
                    if item["text"] not in LABELS:
                        box = item["box"]
                        draw.rectangle((min(p[0] for p in box)-8, min(p[1] for p in box)-8,
                                        max(p[0] for p in box)+8, max(p[1] for p in box)+8), fill="black")
                if screen in ("ACCOUNT_LOGIN", "UNKNOWN"):
                    draw.rectangle((width*.46, height*.15, width*.67, height*.30), fill="black")
                im.save(destination, compress_level=1)
            obs = dict(captured=captured, dimensions=[width, height], screen=screen,
                       items=items, runtime=runtime, packets=packets,
                       screenshot=str(destination.relative_to(ROOT)), source="adb",
                       frame_id=None, frame_age_ms=0, ocr_timestamp_epoch=ocr_timestamp,
                       ocr_age_ms=max(0, (time.time()-ocr_timestamp)*1000), device_size=device_size)
            obs["in_game"] = bool(world_verified(screen, runtime, packets, self.started))
            self.record(tool="truthan_gui.capture + RapidOCR", command=["adb", "shell", "screencap", "-p", gui.REMOTE_SCREENSHOT],
                        observation=safe_observation(obs))
            return obs
        finally:
            gui.cleanup_transient(raw)

    def target(self, obs, label, first=False):
        matches = [i for i in obs["items"] if i["text"] == label and i["score"] >= .95]
        if not matches or (len(matches) != 1 and not first):
            raise Blocked(f"No unique confident OCR target: {label}")
        return center(min(matches, key=lambda i: center(i)[1]))

    def action(self, obs, args, basis):
        max_age = 1.5 if obs.get("source") == "watcher" else 3.0
        def require_fresh():
            now = time.time()
            if now - obs["captured"] > max_age:
                raise Blocked("Observation expired; obtain a fresh screenshot")
            if obs.get("source") == "watcher":
                frame_ts = obs.get("image_timestamp_epoch", obs["captured"])
                ocr_ts = obs.get("ocr_timestamp_epoch", 0)
                if (obs.get("image_frame_id") != obs.get("frame_id")
                        or (now-frame_ts)*1000 > 1000 or (now-ocr_ts)*1000 > 1500):
                    raise Blocked("Watcher frame/OCR is stale; obtain a fresh observation")

        require_fresh()
        device_size = obs.get("device_size")
        if device_size is None:
            from truthan_screen_watch import _device_screen_size
            device_size = list(_device_screen_size())
        if list(device_size) != obs.get("dimensions"):
            raise Blocked("Device dimensions changed since observation; refusing tap")
        if not gui.current_focus()["truthan_foreground"]:
            raise Blocked("App lost foreground before input")
        self.record(tool="truthan_gui.adb", command=["adb", *safe_command(args)], before=safe_observation(obs),
                    coordinate_basis=basis)
        require_fresh()
        cp = gui.adb(*args)
        self.record(tool="truthan_gui.adb", returncode=cp.returncode)
        time.sleep(5)
        return self.observe()

    def tap(self, obs, xy, basis):
        if not all(0 <= v < bound for v, bound in zip(xy, obs["dimensions"])):
            raise Blocked("Coordinates outside screenshot")
        return self.action(obs, ["shell", "input", "tap", *map(str, xy)], basis)

    def tap_label(self, obs, label, first=False):
        for attempt in range(2):
            now = time.time()
            refresh = False
            if obs.get("source") == "watcher":
                frame_ts = obs.get("image_timestamp_epoch", obs["captured"])
                ocr_ts = obs.get("ocr_timestamp_epoch", 0)
                refresh = (obs.get("image_frame_id") != obs.get("frame_id")
                           or (now-frame_ts)*1000 > 1000 or (now-ocr_ts)*1000 > 1500
                           or now-obs["captured"] > 1.0)
                if refresh:
                    self.record(event="watcher_action_fallback", reason="observation expired before label tap",
                                frame_id=obs.get("frame_id"), frame_timestamp_epoch=frame_ts,
                                ocr_timestamp_epoch=ocr_ts)
            elif now-obs["captured"] > 2.0:
                refresh = True
                self.record(event="adb_action_refresh", reason="screenshot/OCR aged before label tap")
            if refresh:
                obs = self.observe_adb()
            try:
                xy = self.target(obs, label, first)
                return self.tap(obs, xy, "fresh native OCR box center: " + label)
            except Blocked as error:
                # OCR and trace work can consume the last part of the age window.
                # Re-read and re-find the label once; never reuse old coordinates.
                if attempt or str(error) != "Observation expired; obtain a fresh screenshot":
                    raise
                self.record(event="adb_action_refresh", reason="observation expired before input")
                obs = self.observe_adb()

    def calibrated(self, obs, xy):
        if obs["dimensions"] != [2992, 1344]:
            raise Blocked("Uncalibrated dimensions; need a new real-client calibration")
        return self.tap(obs, xy, "Native 2992x1344 field geometry verified in UI_CONTROL_TRACE.json")

    def bootstrap(self, name="CodexU", allow_create=True):
        attempts = {}
        obs = self.observe()
        name_confirmed = False
        for _ in range(30):
            if obs["in_game"]:
                self.record(result="BOOTSTRAP_PASS", observation=safe_observation(obs))
                return safe_observation(obs)
            state = obs["screen"]
            # Distinguish substeps, but never reset retry budget on a transient screen.
            typed = any(i["text"] == name for i in obs["items"])
            step = state + (":filled" if typed else ":empty")
            attempts[step] = attempts.get(step, 0) + 1
            if attempts[step] > 2:
                raise Blocked(f"Retry budget exhausted: {step}")
            if state == "START_MENU":
                obs = self.tap_label(obs, "开始游戏")
            elif state == "ACCOUNT_LOGIN":
                # Saved credentials only. Never invent credentials or fill fields.
                if obs["packets"]["headers"] and not obs["packets"].get("ready"):
                    # A response may be in flight; observe before another submission.
                    time.sleep(5)
                    fresh = self.observe()
                    if fresh["screen"] != state:
                        obs = fresh
                        continue
                    obs = fresh
                obs = self.tap_label(obs, "登录游戏")
            elif state == "ROLE_LIST":
                items = obs["items"]
                choice = role_action(obs["packets"]["role_count"],
                                     sum(i["text"] == "创建新角色" and i["score"] >= .95 for i in items),
                                     any(i["text"] == "进入游戏" for i in items), read_json(LEDGER))
                if choice == "enter":
                    save_json(LEDGER, {"existing_role_observed": True})
                    obs = self.tap_label(obs, "进入游戏")
                else:
                    if not allow_create:
                        raise Blocked("No existing role observed; --no-create forbids role creation")
                    obs = self.tap_label(obs, "创建新角色", first=True)
            elif state == "CREATE_ROLE":
                if obs["packets"].get("create_sent"):
                    raise Blocked("Creation request already sent; refusing repeat")
                if typed:
                    if not name_confirmed or creation_record_blocks(read_json(LEDGER)):
                        raise Blocked("Name not confirmed this run or creation already recorded")
                    # Durable intent BEFORE input: a crash can never cause duplicate submission.
                    save_json(LEDGER, {"attempted": True, "started": self.started})
                    obs = self.tap_label(obs, "创建")
                else:
                    obs = self.calibrated(obs, [1215, 230])
            elif state == "NAME_INPUT":
                if typed:
                    name_confirmed = True
                    obs = self.tap_label(obs, "确定")
                else:
                    obs = self.calibrated(obs, [1400, 120])
            elif state == "NAME_IME":
                if typed:
                    obs = self.tap_label(obs, "DONE")
                else:
                    # Check empty field using Android's input connection, not guesses about focus.
                    if attempts[step] > 1:
                        raise Blocked("Typed name not visible; refusing to append text")
                    obs = self.action(obs, ["shell", "input", "text", name], "focused name IME; ASCII name max six characters")
            elif state == "UNKNOWN" or state == "WORLD_HUD":
                time.sleep(5)
                obs = self.observe()
            else:
                raise Blocked(f"Unproven screen {state}; inspect screenshot and diagnostics")
        raise Blocked("Bootstrap transition budget exhausted")

    def move(self, duration_ms):
        import cv2
        for attempt in range(2):
            obs = self.observe()
            if not obs["in_game"]:
                raise Blocked("Movement requires current HUD and current connection cmd10 proof")
            if obs["dimensions"] != [2992, 1344]:
                raise Blocked("Movement dimensions not calibrated")
            # Match the arrow in this screenshot, not cached OCR or world coordinates.
            image = cv2.imread(str(ROOT / obs["screenshot"]), cv2.IMREAD_GRAYSCALE)
            template = cv2.imread(str(ROOT / "tools/ui_assets/dpad_down.png"), cv2.IMREAD_GRAYSCALE)
            if template is None:
                raise Blocked("Missing calibrated D-pad template")
            score, point = self.match_down(image, template)
            xy = [point[0] + template.shape[1]//2, point[1] + template.shape[0]//2]
            action_ms = time.time() * 1000
            try:
                after = self.action(obs, ["shell", "input", "touchscreen", "swipe", *map(str, xy), *map(str, xy), str(duration_ms)],
                                    f"fresh D-pad down template match score={score:.4f}; stationary hold")
            except Blocked as error:
                # A stale check rejects before input; rematch once on a new screenshot.
                if attempt or str(error) != "Observation expired; obtain a fresh screenshot":
                    raise
                self.record(event="movement_action_refresh", reason="observation expired before input")
                continue
            break
        verified = after["in_game"] and movement_verified(obs["runtime"], after["runtime"], action_ms)
        result = {"verified": bool(verified), "before": safe_observation(obs), "after": safe_observation(after)}
        self.record(result="MOVEMENT_PASS" if verified else "MOVEMENT_FAILED", evidence=result)
        if not verified:
            raise Blocked("No verified position change; no automatic movement retry")
        return result

    @staticmethod
    def match_down(image, template):
        import cv2
        scores = cv2.matchTemplate(image, template, cv2.TM_CCOEFF_NORMED)
        _, score, _, point = cv2.minMaxLoc(scores)
        # Observed lower-left arrow region; a match elsewhere is not a movement control.
        if score < .85 or not (500 <= point[0] <= 660 and 1090 <= point[1] <= 1210):
            raise Blocked(f"D-pad not confidently located: score={score:.3f}")
        return score, point

    def diagnose(self, error):
        pid = gui.adb("shell", "pidof", gui.PACKAGE, check=False).stdout.strip()
        classes = []
        if pid.isdigit():
            raw = gui.adb("logcat", "-d", "--pid", pid, "-v", "brief", check=False).stdout
            classes = sorted(set(re.findall(r"\b[A-Za-z][A-Za-z0-9.]*(?:Exception|Error)\b", raw)))
        self.record(result="BLOCKED", error=str(error), android_pid=pid, android_exception_classes=classes,
                    packets=packet_evidence(self.started))


def session_alive(session):
    pid = session.get("server_pid")
    if type(pid) is not int or not isinstance(session.get("started"), (float, int)):
        return False
    # Get-CimInstance is denied in some managed Windows sessions.  Get-Process
    # exposes the same process start instant without WMI and is enough to reject
    # stale/reused PIDs from an older fresh-launch session.
    ps = (f"$p=Get-Process -Id {pid} -ErrorAction SilentlyContinue;"
          "if($p){$ms=([DateTimeOffset]$p.StartTime.ToUniversalTime()).ToUnixTimeMilliseconds();"
          "[pscustomobject]@{ProcessName=$p.ProcessName;CreationDate=\"/Date($ms)/\"} | ConvertTo-Json -Compress}")
    cp = gui.run(["powershell.exe", "-NoProfile", "-Command", ps], check=False)
    try:
        process = json.loads(cp.stdout)
        return (process.get("ProcessName", "").casefold() in {"python", "pythonw"}
                and process.get("CreationDate") == session.get("server_creation"))
    except (ValueError, AttributeError):
        return False


def start_session():
    started = time.time()
    cp = gui.run([sys.executable, str(ROOT / "tools/truthan_gui.py"), "launch"])
    launch = json.loads(cp.stdout)
    pid = launch["runtime"]["server"]["pid"]
    ps = (f"$p=Get-Process -Id {pid};"
          "$ms=([DateTimeOffset]$p.StartTime.ToUniversalTime()).ToUnixTimeMilliseconds();"
          "[pscustomobject]@{CreationDate=\"/Date($ms)/\"} | ConvertTo-Json -Compress")
    process = json.loads(gui.run(["powershell.exe", "-NoProfile", "-Command", ps]).stdout)
    session = dict(started=started, server_pid=pid, server_creation=process["CreationDate"], launch=launch)
    save_json(SESSION, session)
    return session


def require_reusable_session(session):
    if not session_alive(session):
        raise Blocked("Saved runtime session is not alive; --reuse-session forbids starting a server")
    return session


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    sub = parser.add_subparsers(dest="command", required=True)
    sub.add_parser("status")
    observe = sub.add_parser("observe")
    observe.add_argument("--source", choices=("auto", "watcher", "adb"), default="auto")
    boot = sub.add_parser("bootstrap")
    session_mode = boot.add_mutually_exclusive_group()
    session_mode.add_argument("--fresh", action="store_true", help="Start a new runtime; server discards in-memory roles")
    session_mode.add_argument("--reuse-session", action="store_true",
                              help="Require the saved runtime process; never start or replace the server")
    boot.add_argument("--restart-client", action="store_true", help="Reconnect within the same fresh runtime session")
    boot.add_argument("--adb-only", action="store_true",
                      help="Use ordinary ADB screenshot + RapidOCR for bootstrap observations")
    boot.add_argument("--no-create", action="store_true",
                      help="Block role creation when no existing role is visible")
    boot.add_argument("--name", default="CodexU", help="1-6 ASCII letters/digits; used only for verified empty list")
    move = sub.add_parser("move")
    move.add_argument("--duration-ms", type=int, default=600)
    args = parser.parse_args()
    if args.command == "bootstrap" and not re.fullmatch(r"[A-Za-z][A-Za-z0-9]{0,5}", args.name):
        parser.error("Name must be 1-6 ASCII letters/digits, starting with a letter")
    if args.command == "move" and not 100 <= args.duration_ms <= 1000:
        parser.error("duration-ms must be 100..1000")
    session = read_json(SESSION)
    if args.command == "observe":
        session = {"started": time.time()}
    elif args.command == "bootstrap" and args.reuse_session:
        session = require_reusable_session(session)
    elif args.command == "bootstrap" and (args.fresh or not session_alive(session)):
        session = start_session()
    elif not session_alive(session):
        raise Blocked("No matching fresh runtime session; run bootstrap first")
    controller = Controller(session, adb_only=getattr(args, "adb_only", False))
    try:
        if args.command == "bootstrap":
            if args.restart_client:
                controller.record(tool="truthan_gui.adb", command=["adb", "shell", "am", "force-stop", gui.PACKAGE])
                gui.adb("shell", "am", "force-stop", gui.PACKAGE)
                command = ["shell", "am", "start", "-n", f"{gui.PACKAGE}/{gui.ACTIVITY}"]
                controller.record(tool="truthan_gui.adb", command=["adb", *command])
                gui.adb(*command)
                time.sleep(5)
            result = controller.bootstrap(args.name, allow_create=not args.no_create)
        elif args.command == "move":
            result = controller.move(args.duration_ms)
        elif args.command == "observe":
            result = safe_observation(controller.observe(args.source))
        else:
            result = safe_observation(controller.observe())
        print(json.dumps({"result": result, "trace": str(controller.trace.relative_to(ROOT))}, ensure_ascii=True, indent=2))
        return 0
    except (Blocked, gui.ToolError) as error:
        controller.diagnose(error)
        print(json.dumps({"blocked": str(error), "trace": str(controller.trace.relative_to(ROOT))}))
        return 3


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (Blocked, gui.ToolError) as error:
        print(json.dumps({"blocked": str(error)}))
        raise SystemExit(3)
