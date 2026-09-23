#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import sys
import time
from pathlib import Path
from typing import Any

from rapidocr import RapidOCR

ROOT = Path(__file__).resolve().parents[1]
RUNTIME_DIR = ROOT / "runtime" / "agent"
OCR_DIR = RUNTIME_DIR / "ocr"
SCREENSHOT_DIR = RUNTIME_DIR / "screenshots"
DEFAULT_OUTPUT = OCR_DIR / "rapidocr_latest.json"

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="strict")
if hasattr(sys.stderr, "reconfigure"):
    sys.stderr.reconfigure(encoding="utf-8", errors="strict")


def _plain(value: Any) -> Any:
    if value is None:
        return None
    if hasattr(value, "tolist"):
        return value.tolist()
    if isinstance(value, tuple):
        return [_plain(v) for v in value]
    if isinstance(value, list):
        return [_plain(v) for v in value]
    if isinstance(value, dict):
        return {str(k): _plain(v) for k, v in value.items()}
    if isinstance(value, (str, int, float, bool)):
        return value
    try:
        return float(value)
    except (TypeError, ValueError):
        return str(value)


def _codepoints(text: str) -> list[str]:
    return [f"U+{ord(ch):04X}" for ch in text]


def _normalize_text(text: str) -> str:
    return "".join(ch for ch in text.strip() if not ch.isspace())


def classify_screen(texts: list[str]) -> dict[str, Any]:
    normalized = [_normalize_text(t) for t in texts if t]
    joined = "\n".join(normalized)

    # VERIFIED from real-client OCR capture on 2026-09-23.
    # Start/entry menu shows these controls together.
    start_menu_markers = ("开始游戏", "修复游戏", "退出游戏")
    if all(marker in joined for marker in start_menu_markers):
        return {
            "state": "LOGIN_OR_ENTRY",
            "substate": "START_MENU",
            "confidence": 1.0,
            "evidence": [m for m in start_menu_markers if m in joined],
            "basis": "VERIFIED_OCR_SIGNATURE",
        }

    # Previously observed real-client reconnect/network-error wording.
    if "网络故障" in joined:
        return {
            "state": "NETWORK_ERROR",
            "substate": None,
            "confidence": 1.0,
            "evidence": ["网络故障"],
            "basis": "VERIFIED_OCR_SIGNATURE",
        }

    # Do not infer IN_GAME from menu text. IN_GAME requires runtime-state proof.
    return {
        "state": "UNKNOWN_SCREEN",
        "substate": None,
        "confidence": 0.0,
        "evidence": normalized,
        "basis": "NO_VERIFIED_SIGNATURE_MATCH",
    }


def _extract(result: Any) -> tuple[list[str], list[float], list[Any], float | None, Any]:
    # RapidOCR current API: RapidOCROutput.txts / scores / boxes / elapse.
    txts = getattr(result, "txts", None)
    scores = getattr(result, "scores", None)
    boxes = getattr(result, "boxes", None)
    elapse = getattr(result, "elapse", None)
    elapse_list = getattr(result, "elapse_list", None)

    if txts is None and hasattr(result, "data"):
        data = getattr(result, "data")
        if isinstance(data, dict):
            txts = data.get("txts") or data.get("texts")
            scores = data.get("scores")
            boxes = data.get("boxes")
            elapse = data.get("elapse", elapse)
            elapse_list = data.get("elapse_list", elapse_list)

    txt_list = [str(v) for v in (txts or [])]
    score_list = [float(v) for v in (scores or [])]
    box_list = _plain(boxes) or []

    # Keep row alignment explicit even if a backend returns an incomplete field.
    n = max(len(txt_list), len(score_list), len(box_list))
    txt_list += [""] * (n - len(txt_list))
    score_list += [0.0] * (n - len(score_list))
    box_list += [None] * (n - len(box_list))

    return txt_list, score_list, box_list, (
        float(elapse) if elapse is not None else None
    ), _plain(elapse_list)


def _require_truthan_foreground() -> dict[str, Any]:
    # Bootstrap OCR must never silently read the Android launcher or another app.
    from truthan_gui import current_focus

    focus = current_focus()
    if not focus.get("truthan_foreground", False):
        lines = focus.get("lines", [])
        raise RuntimeError(
            "Tru Than is not foreground; refusing to capture/OCR a different screen. "
            f"focus={lines}"
        )
    return focus


def _capture_temp() -> Path:
    # Reuse the verified ADB transport/cleanup implementation.
    from truthan_gui import capture_transient
    return capture_transient()


def _cleanup_temp(path: Path | None) -> None:
    if path is None:
        return
    try:
        from truthan_gui import cleanup_transient
        cleanup_transient(path)
    except Exception:
        try:
            resolved = path.resolve()
            base = SCREENSHOT_DIR.resolve()
            if resolved.parent == base and resolved.name.startswith("tmp_"):
                resolved.unlink(missing_ok=True)
        except OSError:
            pass


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Capture/read a Tru Than screenshot with RapidOCR."
    )
    parser.add_argument(
        "--image",
        help="Existing image to OCR. If omitted, capture a transient emulator screenshot.",
    )
    parser.add_argument(
        "--output",
        default=str(DEFAULT_OUTPUT),
        help="Machine-readable JSON output path.",
    )
    parser.add_argument(
        "--delete-input",
        action="store_true",
        help="Delete --image after OCR. Transient internally captured images are always deleted.",
    )
    args = parser.parse_args()

    owned = args.image is None
    image_path: Path | None = None
    output_path = Path(args.output).expanduser().resolve()
    output_path.parent.mkdir(parents=True, exist_ok=True)

    try:
        focus = _require_truthan_foreground()

        if owned:
            image_path = _capture_temp()
        else:
            image_path = Path(args.image).expanduser().resolve()
            if not image_path.exists():
                raise FileNotFoundError(f"image not found: {image_path}")

        start = time.perf_counter()
        engine = RapidOCR()
        result = engine(str(image_path))
        wall_time = time.perf_counter() - start

        txts, scores, boxes, elapse, elapse_list = _extract(result)
        items = []
        for text, score, box in zip(txts, scores, boxes):
            items.append({
                "text": text,
                "ascii_repr": ascii(text),
                "codepoints": _codepoints(text),
                "score": score,
                "box": box,
            })

        classification = classify_screen(txts)

        payload = {
            "schema_version": 2,
            "backend": "rapidocr",
            "truthan_foreground_verified": True,
            "focus": focus,
            "image_was_transient": owned,
            "item_count": len(items),
            "items": items,
            "classification": classification,
            "rapidocr_elapse": elapse,
            "rapidocr_elapse_list": elapse_list,
            "wall_time_seconds": wall_time,
        }

        with output_path.open("w", encoding="utf-8", newline="\n") as f:
            json.dump(payload, f, ensure_ascii=True, indent=2)
            f.write("\n")

        # Read back the exact persisted JSON before reporting.
        with output_path.open("r", encoding="utf-8") as f:
            verify = json.load(f)

        print(f"OUTPUT={output_path}")
        print(f"ITEM_COUNT={verify.get('item_count', 0)}")
        print(f"WALL_TIME_SECONDS={verify.get('wall_time_seconds')}")
        classification = verify.get("classification", {})
        print(f"SCREEN_STATE={classification.get('state', 'UNKNOWN_SCREEN')}")
        print(f"SCREEN_SUBSTATE={classification.get('substate')}")
        print(f"SCREEN_BASIS={classification.get('basis')}")
        for idx, item in enumerate(verify.get("items", [])):
            print(f"ITEM={idx}")
            print(f"TEXT_ASCII={ascii(item.get('text', ''))}")
            print("CODEPOINTS=" + ",".join(item.get("codepoints", [])))
            print(f"SCORE={item.get('score')}")
            print("BOX=" + json.dumps(item.get("box"), ensure_ascii=True))
        return 0
    finally:
        if owned:
            _cleanup_temp(image_path)
        elif args.delete_input and image_path is not None:
            try:
                image_path.unlink(missing_ok=True)
            except OSError:
                pass


if __name__ == "__main__":
    raise SystemExit(main())
