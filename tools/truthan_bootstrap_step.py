#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import subprocess
import sys
import time
from pathlib import Path
from typing import Any

ROOT = Path(__file__).resolve().parents[1]
TOOLS = ROOT / "tools"
OCR_JSON = ROOT / "runtime" / "agent" / "ocr" / "rapidocr_latest.json"
REPORT_DIR = ROOT / "runtime" / "agent" / "reports"
REPORT_JSON = REPORT_DIR / "last_agent_result.json"
REPORT_TXT = REPORT_DIR / "last_agent_result.txt"

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="strict")
if hasattr(sys.stderr, "reconfigure"):
    sys.stderr.reconfigure(encoding="utf-8", errors="strict")


def _run(args: list[str], timeout: int = 120) -> subprocess.CompletedProcess[str]:
    cp = subprocess.run(
        args,
        cwd=str(ROOT),
        text=True,
        capture_output=True,
        encoding="utf-8",
        errors="strict",
        timeout=timeout,
    )
    if cp.returncode != 0:
        raise RuntimeError(
            f"command failed ({cp.returncode}): {' '.join(args)}\n"
            f"STDOUT:\n{cp.stdout}\nSTDERR:\n{cp.stderr}"
        )
    return cp


def _run_py(script: str, *args: str, timeout: int = 120) -> subprocess.CompletedProcess[str]:
    return _run([sys.executable, str(TOOLS / script), *args], timeout=timeout)


def _load_ocr() -> dict[str, Any]:
    with OCR_JSON.open("r", encoding="utf-8") as f:
        data = json.load(f)
    if not isinstance(data, dict):
        raise RuntimeError("RapidOCR JSON root is not an object.")
    return data


def _center(box: Any) -> tuple[float, float]:
    if not isinstance(box, list) or len(box) != 4:
        raise RuntimeError(f"expected four-point OCR box, got {box!r}")
    xs: list[float] = []
    ys: list[float] = []
    for point in box:
        if not isinstance(point, list) or len(point) != 2:
            raise RuntimeError(f"invalid OCR box point: {point!r}")
        xs.append(float(point[0]))
        ys.append(float(point[1]))
    return sum(xs) / 4.0, sum(ys) / 4.0


def _summary_items(data: dict[str, Any]) -> list[dict[str, Any]]:
    out = []
    for item in data.get("items") or []:
        out.append({
            "text": item.get("text"),
            "score": item.get("score"),
            "box": item.get("box"),
        })
    return out


def _write_report(report: dict[str, Any]) -> None:
    REPORT_DIR.mkdir(parents=True, exist_ok=True)
    with REPORT_JSON.open("w", encoding="utf-8", newline="\n") as f:
        json.dump(report, f, ensure_ascii=True, indent=2)
        f.write("\n")

    lines = [
        "FRESH_LAUNCH_RESULT=" + json.dumps(report.get("fresh_launch"), ensure_ascii=True),
        "BEFORE_STATE=" + json.dumps(report.get("before_classification"), ensure_ascii=True),
        "TARGET_TEXT=" + str(report.get("target_text")),
        "TARGET_SCORE=" + str(report.get("target_score")),
        "TARGET_BOX=" + json.dumps(report.get("target_box"), ensure_ascii=True),
        "TARGET_CENTER_FLOAT=" + str(report.get("target_center_float")),
        "TARGET_CENTER_TAP=" + str(report.get("target_center_tap")),
        "TAP_RESULT=" + json.dumps(report.get("tap_result"), ensure_ascii=True),
        "AFTER_STATE=" + json.dumps(report.get("after_classification"), ensure_ascii=True),
        "AFTER_OCR_ITEMS=" + json.dumps(report.get("after_items"), ensure_ascii=True),
        "ERRORS=" + str(report.get("error") or "none"),
        "FINAL_STATE=" + str((report.get("after_classification") or {}).get("state", "UNKNOWN_SCREEN")),
    ]
    REPORT_TXT.write_text("\n".join(lines) + "\n", encoding="utf-8")


def main() -> int:
    p = argparse.ArgumentParser(
        description="Run one fresh Tru Than bootstrap OCR->tap->OCR step."
    )
    p.add_argument("--target", required=True, help="Exact OCR text to tap.")
    p.add_argument("--require-state", required=True)
    p.add_argument("--require-substate", required=True)
    p.add_argument("--min-score", type=float, default=0.95)
    p.add_argument("--wait", type=float, default=2.0)
    args = p.parse_args()

    report: dict[str, Any] = {
        "target_text": args.target,
        "error": None,
    }

    try:
        launch_cp = _run_py("truthan_gui.py", "launch")
        report["fresh_launch"] = json.loads(launch_cp.stdout)

        time.sleep(args.wait)

        before_cp = _run_py("truthan_rapidocr.py", timeout=180)
        report["before_ocr_stdout"] = before_cp.stdout
        before = _load_ocr()
        classification = before.get("classification") or {}
        report["before_classification"] = classification

        if classification.get("state") != args.require_state:
            raise RuntimeError(
                f"before state mismatch: required={args.require_state!r} "
                f"actual={classification.get('state')!r}"
            )
        if classification.get("substate") != args.require_substate:
            raise RuntimeError(
                f"before substate mismatch: required={args.require_substate!r} "
                f"actual={classification.get('substate')!r}"
            )

        matches = [
            item for item in (before.get("items") or [])
            if item.get("text") == args.target
        ]
        if len(matches) != 1:
            raise RuntimeError(
                f"expected exactly one OCR item {args.target!r}, found {len(matches)}"
            )

        item = matches[0]
        score = float(item.get("score", 0.0))
        if score < args.min_score:
            raise RuntimeError(
                f"target OCR score too low: {score} < {args.min_score}"
            )

        box = item.get("box")
        cx, cy = _center(box)
        tx, ty = round(cx), round(cy)

        report["target_score"] = score
        report["target_box"] = box
        report["target_center_float"] = [cx, cy]
        report["target_center_tap"] = [tx, ty]

        tap_cp = _run_py("truthan_gui.py", "tap", str(tx), str(ty))
        report["tap_result"] = json.loads(tap_cp.stdout)

        time.sleep(args.wait)

        after_cp = _run_py("truthan_rapidocr.py", timeout=180)
        report["after_ocr_stdout"] = after_cp.stdout
        after = _load_ocr()
        report["after_classification"] = after.get("classification") or {}
        report["after_items"] = _summary_items(after)

        _write_report(report)
        print(REPORT_TXT.read_text(encoding="utf-8"), end="")
        return 0
    except Exception as exc:
        report["error"] = f"{type(exc).__name__}: {exc}"
        _write_report(report)
        print(REPORT_TXT.read_text(encoding="utf-8"), end="", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
