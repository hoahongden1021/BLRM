#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import re
import sys
import time
from pathlib import Path
from typing import Any

ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OCR = ROOT / "runtime" / "agent" / "ocr" / "rapidocr_latest.json"
SERVER_LOGS = ROOT / "server" / "truthan_packet_logs"
PACKET_HEADER = re.compile(
    r"^\[(?P<time>\d\d:\d\d:\d\d)\] (?P<direction>RX|TX)-FRAME "
    r"\d+ bytes port=(?P<port>19000|29000) cmd=(?P<cmd>-?\d+)\b"
)

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="strict")
if hasattr(sys.stderr, "reconfigure"):
    sys.stderr.reconfigure(encoding="utf-8", errors="strict")


def _center(box: Any) -> tuple[float, float]:
    if not isinstance(box, list) or len(box) != 4:
        raise ValueError(f"expected four-point box, got: {box!r}")
    xs = []
    ys = []
    for point in box:
        if not isinstance(point, list) or len(point) != 2:
            raise ValueError(f"invalid box point: {point!r}")
        xs.append(float(point[0]))
        ys.append(float(point[1]))
    return sum(xs) / 4.0, sum(ys) / 4.0


def _watch_coordinates(
    data: dict[str, Any], item: dict[str, Any]
) -> tuple[int, int, float | None]:
    if data.get("source") != "scrcpy_raw_h264":
        raise RuntimeError("expected scrcpy watcher screen_state")
    frame_ts = float(data.get("frame_timestamp_epoch") or 0)
    age = time.time() - frame_ts if frame_ts > 0 else None

    stream_size = data.get("frame_size") or []
    device_size = data.get("device_size") or []
    if len(stream_size) != 2 or len(device_size) != 2:
        raise RuntimeError("missing watcher stream/device dimensions")
    sw, sh = (int(v) for v in stream_size)
    dw, dh = (int(v) for v in device_size)
    if min(sw, sh, dw, dh) <= 0:
        raise RuntimeError("invalid watcher stream/device dimensions")

    cx, cy = _center(item.get("box"))
    stored_center = item.get("center") or []
    stored_tap = item.get("tap_center") or []
    if len(stored_center) != 2 or len(stored_tap) != 2:
        raise RuntimeError("watcher item is missing center/tap_center")
    expected = (cx * dw / sw, cy * dh / sh)
    if any(abs(float(stored_center[i]) - point) > 1 for i, point in enumerate((cx, cy))):
        raise RuntimeError("watcher OCR center does not match its box")
    if any(abs(float(stored_tap[i]) - point) > 1 for i, point in enumerate(expected)):
        raise RuntimeError("watcher tap_center does not match device scaling")
    if not (0 <= cx < sw and 0 <= cy < sh and 0 <= expected[0] < dw and 0 <= expected[1] < dh):
        raise RuntimeError("watcher target is outside the device screen")
    return round(expected[0]), round(expected[1]), age


def _wait_for_watch_transition(before: dict[str, Any], after_timeout: float) -> dict[str, Any]:
    from truthan_screen_watch import STATE_PATH, _read_json

    before_class = before.get("classification") or {}
    before_frame_id = int(before.get("frame_id") or 0)
    deadline = time.monotonic() + after_timeout
    last = before
    while time.monotonic() < deadline:
        current = _read_json(STATE_PATH)
        if current and current.get("watcher_pid") == before.get("watcher_pid"):
            last = current
            classification = current.get("classification") or {}
            if (int(current.get("frame_id") or 0) > before_frame_id
                    and (classification.get("state"), classification.get("substate"))
                    != (before_class.get("state"), before_class.get("substate"))):
                return {
                    "transition_observed": True,
                    "frame_id": current.get("frame_id"),
                    "classification": classification,
                }
        time.sleep(0.15)
    return {
        "transition_observed": False,
        "frame_id": last.get("frame_id"),
        "classification": last.get("classification"),
    }


def _packet_files() -> list[Path]:
    return sorted(
        [*SERVER_LOGS.glob("*_p19000_*.log"), *SERVER_LOGS.glob("*_p29000_*.log")]
    )


def _packet_cursor() -> dict[Path, int]:
    return {path: path.stat().st_size for path in _packet_files()}


def _new_packet_headers(cursor: dict[Path, int], start_epoch: float) -> list[dict[str, Any]]:
    events: list[dict[str, Any]] = []
    for path in _packet_files():
        try:
            if path not in cursor and path.stat().st_mtime < start_epoch - 2:
                continue
            with path.open("r", encoding="utf-8", errors="replace") as stream:
                stream.seek(cursor.get(path, 0))
                for line in stream:
                    match = PACKET_HEADER.match(line)
                    if match:
                        events.append({
                            "time": match["time"],
                            "port": int(match["port"]),
                            "direction": match["direction"],
                            "cmd": int(match["cmd"]),
                        })
                    elif line.startswith("CLOSED "):
                        events.append({"port": 19000 if "_p19000_" in path.name else 29000,
                                       "close": line.strip()})
        except OSError:
            continue
    return events[-40:]


def _game_pid() -> str | None:
    from truthan_gui import adb

    try:
        cp = adb("shell", "pidof", "com.t4game", timeout=5, check=False)
    except Exception:
        return None
    first = cp.stdout.split()
    return first[0] if first and first[0].isdigit() else None


def _logcat_error_types(pid: str | None, start_epoch: float) -> dict[str, Any]:
    if pid is None:
        return {"error_types": [], "fatal_count": 0, "available": False}
    from truthan_gui import adb

    try:
        cp = adb("logcat", "-d", "-v", "epoch", f"--pid={pid}", "-s",
                 "AndroidRuntime:E", "System.err:W", "System.out:I", timeout=20, check=False)
    except Exception:
        return {"error_types": [], "fatal_count": 0, "available": False}
    if cp.returncode != 0:
        return {"error_types": [], "fatal_count": 0, "available": False}
    errors: set[str] = set()
    fatal_count = 0
    for line in cp.stdout.splitlines():
        stamp = re.match(r"^\s*(\d+\.\d+)", line)
        if not stamp or float(stamp[1]) < start_epoch - 1:
            continue
        if "FATAL EXCEPTION" in line or "[FATAL ERROR]" in line:
            fatal_count += 1
        errors.update(re.findall(r"\b[A-Za-z][\w.$]*(?:Exception|Error)\b", line))
    # Report only exception classes, never raw log lines containing login data.
    return {"error_types": sorted(errors)[:20], "fatal_count": fatal_count, "available": True}


def _trace_login_after_tap(before: dict[str, Any], timeout: float,
                           cursor: dict[Path, int], start_epoch: float,
                           android_pid: str | None) -> dict[str, Any]:
    from truthan_screen_watch import STATE_PATH, _read_json

    initial = before.get("classification") or {}
    initial_key = (initial.get("state"), initial.get("substate"))
    last_key = initial_key
    first_transition = None
    screen_events: list[dict[str, Any]] = []
    connection_events: list[dict[str, Any]] = []
    last_connected = None
    last = before
    deadline = time.monotonic() + timeout

    while time.monotonic() <= deadline:
        elapsed = round(time.time() - start_epoch, 2)
        current = _read_json(STATE_PATH)
        if current and current.get("watcher_pid") == before.get("watcher_pid"):
            last = current
            classification = current.get("classification") or {}
            key = (classification.get("state"), classification.get("substate"))
            if int(current.get("frame_id") or 0) > int(before.get("frame_id") or 0) and key != last_key:
                screen_events.append({"elapsed_s": elapsed, "frame_id": current.get("frame_id"),
                                      "state": key[0], "substate": key[1]})
                if key != initial_key and first_transition is None:
                    first_transition = current.get("frame_id")
                last_key = key

        status = _read_json(SERVER_LOGS / "runtime_state.json")
        if status and "game_connected" in status:
            connected = bool(status["game_connected"])
            if connected != last_connected:
                connection_events.append({"elapsed_s": elapsed, "game_connected": connected,
                                          "updated_unix_ms": status.get("updated_unix_ms")})
                last_connected = connected
        time.sleep(0.2)

    return {
        "transition_observed": first_transition is not None,
        "first_transition_frame_id": first_transition,
        "frame_id": last.get("frame_id"),
        "classification": last.get("classification"),
        "screen_events": screen_events[-20:],
        "connection_events": connection_events[-20:],
        "packet_headers": _new_packet_headers(cursor, start_epoch),
        "android_pid_before": android_pid,
        "android_pid_after": _game_pid(),
        "logcat": _logcat_error_types(android_pid, start_epoch),
    }


def main() -> int:
    p = argparse.ArgumentParser(
        description="Safely tap one exact OCR text item from rapidocr_latest.json."
    )
    p.add_argument("text", help="Exact OCR text to match.")
    p.add_argument("--ocr", help=f"Screenshot OCR JSON (default: {DEFAULT_OCR}).")
    p.add_argument("--watch", action="store_true", help="Tap using scrcpy watcher screen_state instead.")
    p.add_argument(
        "--press-ms", type=int, default=0,
        help="Hold one stationary touchscreen press for this many milliseconds instead of an instant tap.",
    )
    p.add_argument("--after-timeout", type=float, default=12.0)
    p.add_argument("--trace-login", action="store_true",
                   help="Observe login screen and server connection for 20 seconds after the tap; report frame headers only.")
    p.add_argument("--min-score", type=float, default=0.95)
    p.add_argument("--require-state")
    p.add_argument("--require-substate")
    args = p.parse_args()
    if args.watch and args.ocr:
        p.error("--watch and --ocr cannot be used together")
    if args.trace_login and (not args.watch or args.text != "登录游戏"):
        p.error("--trace-login requires --watch and exact text 登录游戏")
    if args.watch and (not args.require_state or not args.require_substate):
        p.error("--watch requires --require-state and --require-substate")
    if args.after_timeout < 0:
        p.error("--after-timeout must be nonnegative")
    if args.press_ms < 0:
        p.error("--press-ms must be nonnegative")

    from truthan_gui import adb, current_focus, tap_px

    focus = current_focus()
    if not focus.get("truthan_foreground", False):
        raise RuntimeError(
            "Tru Than is not foreground; refusing OCR-derived tap. "
            f"focus={focus.get('lines', [])}"
        )

    if args.watch:
        from truthan_screen_watch import watcher_status

        live = watcher_status()
        if not live.get("running") or (live.get("status") or {}).get("status") != "running":
            raise RuntimeError("screen watcher is not running")
        data = live.get("screen_state")
        if not isinstance(data, dict) or data.get("watcher_pid") != live.get("pid"):
            raise RuntimeError("watcher screen_state does not belong to running watcher")
    else:
        path = Path(args.ocr or DEFAULT_OCR).expanduser().resolve()
        with path.open("r", encoding="utf-8") as f:
            data = json.load(f)

    if not isinstance(data, dict):
        raise RuntimeError("OCR JSON root must be an object.")

    classification = data.get("classification") or {}
    state = classification.get("state")
    substate = classification.get("substate")

    if args.require_state and state != args.require_state:
        raise RuntimeError(
            f"screen state mismatch: required={args.require_state!r} actual={state!r}"
        )
    if args.require_substate and substate != args.require_substate:
        raise RuntimeError(
            f"screen substate mismatch: required={args.require_substate!r} actual={substate!r}"
        )
    if args.watch and (
        classification.get("basis") != "VERIFIED_OCR_SIGNATURE"
        or float(classification.get("confidence") or 0) < 0.95
    ):
        raise RuntimeError("watcher screen classification is not verified")

    items = data.get("items") or []
    matches = [i for i in items if i.get("text") == args.text]

    if len(matches) != 1:
        raise RuntimeError(
            f"expected exactly one OCR match for {args.text!r}, found {len(matches)}"
        )

    item = matches[0]
    score = float(item.get("score", 0.0))
    if score < args.min_score:
        raise RuntimeError(
            f"OCR score too low for {args.text!r}: {score} < {args.min_score}"
        )

    box = item.get("box")
    if args.watch:
        tx, ty, age = _watch_coordinates(data, item)
        cx, cy = _center(box)
        print(f"WATCH_FRAME_AGE_SECONDS={age:.3f}" if age is not None else "WATCH_FRAME_AGE_SECONDS=unknown")
    else:
        cx, cy = _center(box)
        tx, ty = round(cx), round(cy)

    print("TARGET_TEXT=" + args.text)
    print(f"TARGET_SCORE={score:.6f}")
    print("TARGET_BOX=" + json.dumps(box, ensure_ascii=True))
    print(f"TARGET_CENTER_FLOAT={cx:.6f},{cy:.6f}")
    print(f"TARGET_CENTER_TAP={tx},{ty}")

    if args.watch:
        if not current_focus().get("truthan_foreground", False):
            raise RuntimeError("Tru Than lost foreground before OCR-derived tap")
    cursor = _packet_cursor() if args.trace_login else {}
    android_pid = _game_pid() if args.trace_login else None
    start_epoch = time.time()
    if args.press_ms:
        # ADB's instant tap sends DOWN and UP together. A stationary swipe
        # keeps one pointer down briefly without moving outside the OCR box.
        cp = adb(
            "shell", "input", "touchscreen", "swipe",
            str(tx), str(ty), str(tx), str(ty), str(args.press_ms),
        )
        result = {
            "tap_px": [tx, ty], "press_ms": args.press_ms,
            "stdout": cp.stdout.strip(), "stderr": cp.stderr.strip(),
        }
    else:
        result = tap_px(tx, ty)
    print("TAP_RESULT=" + json.dumps(result, ensure_ascii=True))
    if args.watch:
        after = (_trace_login_after_tap(data, max(20.0, args.after_timeout), cursor, start_epoch,
                                        android_pid)
                 if args.trace_login else _wait_for_watch_transition(data, args.after_timeout))
        print("AFTER=" + json.dumps(after, ensure_ascii=True))
        return 0 if after["transition_observed"] else 3
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
