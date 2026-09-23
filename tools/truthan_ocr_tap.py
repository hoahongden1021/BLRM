#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import sys
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


def main() -> int:
    p = argparse.ArgumentParser(
        description="Safely tap one exact OCR text item from rapidocr_latest.json."
    )
    p.add_argument("text", help="Exact OCR text to match.")
    p.add_argument("--ocr", default=str(DEFAULT_OCR))
    p.add_argument("--min-score", type=float, default=0.95)
    p.add_argument("--require-state")
    p.add_argument("--require-substate")
    args = p.parse_args()

    from truthan_gui import current_focus, tap_px

    focus = current_focus()
    if not focus.get("truthan_foreground", False):
        raise RuntimeError(
            "Tru Than is not foreground; refusing OCR-derived tap. "
            f"focus={focus.get('lines', [])}"
        )

    path = Path(args.ocr).expanduser().resolve()
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
    cx, cy = _center(box)
    tx, ty = round(cx), round(cy)

    print("TARGET_TEXT=" + args.text)
    print(f"TARGET_SCORE={score:.6f}")
    print("TARGET_BOX=" + json.dumps(box, ensure_ascii=True))
    print(f"TARGET_CENTER_FLOAT={cx:.6f},{cy:.6f}")
    print(f"TARGET_CENTER_TAP={tx},{ty}")

    result = tap_px(tx, ty)
    print("TAP_RESULT=" + json.dumps(result, ensure_ascii=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
