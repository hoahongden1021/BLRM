#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import sys
import time
from pathlib import Path
from typing import Any

ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OCR = ROOT / "runtime" / "agent" / "ocr" / "rapidocr_latest.json"

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
    data: dict[str, Any], item: dict[str, Any], max_age: float
) -> tuple[int, int, float]:
    if data.get("source") != "scrcpy_raw_h264":
        raise RuntimeError("expected scrcpy watcher screen_state")
    frame_ts = float(data.get("frame_timestamp_epoch") or 0)
    age = time.time() - frame_ts
    if frame_ts <= 0 or age < 0 or age > max_age:
        raise RuntimeError(
            f"watcher OCR frame is stale: age={age:.3f}s max={max_age:.3f}s"
        )

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


def _wait_for_fresh_watch_state(
    max_age: float, wait_seconds: float
) -> tuple[dict[str, Any], float]:
    from truthan_screen_watch import watcher_status

    start = time.monotonic()
    deadline = start + wait_seconds
    # Leave time for foreground, text, and coordinate checks before the tap.
    target_age = min(max_age, max(0.2, max_age - 0.75))
    while True:
        live = watcher_status()
        if not live.get("running") or (live.get("status") or {}).get("status") != "running":
            raise RuntimeError("screen watcher is not running")
        data = live.get("screen_state")
        if not isinstance(data, dict) or data.get("watcher_pid") != live.get("pid"):
            raise RuntimeError("watcher screen_state does not belong to running watcher")

        frame_ts = float(data.get("frame_timestamp_epoch") or 0)
        age = time.time() - frame_ts
        if frame_ts > 0 and 0 <= age <= target_age:
            return data, time.monotonic() - start
        if time.monotonic() >= deadline:
            raise RuntimeError(
                "watcher did not publish a fresh OCR frame in time: "
                f"last_age={age:.3f}s max={max_age:.3f}s "
                f"frame_id={data.get('frame_id')} "
                f"frames_decoded={(live.get('status') or {}).get('frames_decoded')}"
            )
        time.sleep(0.2)


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


def main() -> int:
    p = argparse.ArgumentParser(
        description="Safely tap one exact OCR text item from rapidocr_latest.json."
    )
    p.add_argument("text", help="Exact OCR text to match.")
    p.add_argument("--ocr", help=f"Screenshot OCR JSON (default: {DEFAULT_OCR}).")
    p.add_argument("--watch", action="store_true", help="Tap using fresh scrcpy watcher screen_state instead.")
    p.add_argument("--max-frame-age", type=float, default=2.5)
    p.add_argument("--wait-fresh", type=float, default=12.0)
    p.add_argument("--after-timeout", type=float, default=12.0)
    p.add_argument("--min-score", type=float, default=0.95)
    p.add_argument("--require-state")
    p.add_argument("--require-substate")
    args = p.parse_args()
    if args.watch and args.ocr:
        p.error("--watch and --ocr cannot be used together")
    if args.watch and (not args.require_state or not args.require_substate):
        p.error("--watch requires --require-state and --require-substate")
    if args.max_frame_age <= 0 or args.wait_fresh < 0 or args.after_timeout < 0:
        p.error("--max-frame-age must be positive; wait timeouts must be nonnegative")

    from truthan_gui import current_focus, tap_px

    focus = current_focus()
    if not focus.get("truthan_foreground", False):
        raise RuntimeError(
            "Tru Than is not foreground; refusing OCR-derived tap. "
            f"focus={focus.get('lines', [])}"
        )

    if args.watch:
        data, waited = _wait_for_fresh_watch_state(
            args.max_frame_age, args.wait_fresh
        )
        focus = current_focus()
        if not focus.get("truthan_foreground", False):
            raise RuntimeError("Tru Than lost foreground while waiting for fresh OCR")
        print(f"WATCH_WAITED_FOR_FRESH_SECONDS={waited:.3f}")
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
        tx, ty, age = _watch_coordinates(data, item, args.max_frame_age)
        cx, cy = _center(box)
        print(f"WATCH_FRAME_AGE_SECONDS={age:.3f}")
    else:
        cx, cy = _center(box)
        tx, ty = round(cx), round(cy)

    print("TARGET_TEXT=" + args.text)
    print(f"TARGET_SCORE={score:.6f}")
    print("TARGET_BOX=" + json.dumps(box, ensure_ascii=True))
    print(f"TARGET_CENTER_FLOAT={cx:.6f},{cy:.6f}")
    print(f"TARGET_CENTER_TAP={tx},{ty}")

    if args.watch:
        # A slow console write must not turn a fresh observation into a stale tap.
        _watch_coordinates(data, item, args.max_frame_age)
    result = tap_px(tx, ty)
    print("TAP_RESULT=" + json.dumps(result, ensure_ascii=True))
    if args.watch:
        after = _wait_for_watch_transition(data, args.after_timeout)
        print("AFTER=" + json.dumps(after, ensure_ascii=True))
        return 0 if after["transition_observed"] else 3
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
