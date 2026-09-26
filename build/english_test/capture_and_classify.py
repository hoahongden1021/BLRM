# -*- coding: utf-8 -*-
"""Capture an ADB screenshot of the English UI test build and classify it.

Usage:
  py capture_and_classify.py <index> <slug>
  py capture_and_classify.py --image <png>          # classify an existing file

Screenshots are written to docs/research/ui_control_images/run_YYYYMMDD_en_<index>_<slug>.png
"""
import datetime as dt
import io
import os
import subprocess
import sys
import time

ROOT = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", ".."))
OUT_DIR = os.path.join(ROOT, "docs", "research", "ui_control_images")
sys.path.insert(0, os.path.join(ROOT, "tools"))

sys.stdout.reconfigure(encoding="utf-8")


def adb(*args):
    return subprocess.run(["adb", *args], capture_output=True)


def ocr_items(path):
    from rapidocr import RapidOCR
    from truthan_rapidocr import _extract
    engine = RapidOCR()
    texts, scores, boxes, _, _ = _extract(engine(str(path)))
    return [dict(text=t, score=float(s), box=b) for t, s, b in zip(texts, scores, boxes) if b]


def main():
    from truthan_ui_control import classify

    args = sys.argv[1:]
    if args and args[0] == "--image":
        path = args[1]
    else:
        index, slug = args[0], args[1]
        day = dt.date.today().strftime("%Y%m%d")
        os.makedirs(OUT_DIR, exist_ok=True)
        path = os.path.join(OUT_DIR, "run_%s_en_%s_%s.png" % (day, index, slug))
        cp = adb("shell", "screencap", "-p", "/sdcard/_en_shot.png")
        if cp.returncode:
            print("screencap failed:", cp.stderr.decode(errors="replace"))
            return 1
        with open(path, "wb") as f:
            f.write(adb("exec-out", "screencap", "-p").stdout)
        adb("shell", "rm", "-f", "/sdcard/_en_shot.png")

    items = ocr_items(path)
    screen = classify(items)
    print("file: %s" % os.path.relpath(path, ROOT))
    print("screen: %s" % screen)
    print("items (%d):" % len(items))
    for it in sorted(items, key=lambda i: -i["score"]):
        if it["score"] >= 0.60:
            print("   %.2f  %s" % (it["score"], it["text"]))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
