# -*- coding: utf-8 -*-
"""OCR the live screen and tap the unique confident match for a label.

Coordinates always come from a fresh OCR box centre - never from guesses.
Usage: py tap_label.py "OK" [--min-score 0.72] [--first]
"""
import subprocess
import sys

sys.path.insert(0, r"C:\Users\Mech\Desktop\BLRM\tools")
sys.stdout.reconfigure(encoding="utf-8")


def main():
    label = sys.argv[1]
    min_score = 0.72
    first = "--first" in sys.argv
    if "--min-score" in sys.argv:
        min_score = float(sys.argv[sys.argv.index("--min-score") + 1])

    from rapidocr import RapidOCR
    from truthan_rapidocr import _extract
    from truthan_ui_control import label_matches

    raw = subprocess.run(["adb", "exec-out", "screencap", "-p"], capture_output=True).stdout
    tmp = r"C:\Users\Mech\AppData\Local\Temp\opencode\_tap.png"
    with open(tmp, "wb") as f:
        f.write(raw)
    engine = RapidOCR()
    texts, scores, boxes, _, _ = _extract(engine(tmp))
    items = [dict(text=t, score=float(s), box=b) for t, s, b in zip(texts, scores, boxes) if b]
    print("screen items:")
    for it in items:
        print("   %.2f  %s" % (it["score"], it["text"]))

    def is_match(text):
        return (label_matches(text, label)
                or text.replace(" ", "") == label.replace(" ", ""))

    matches = [i for i in items if is_match(i["text"]) and i["score"] >= min_score]
    if not matches:
        # A label may be split by the detector; its leading token still sits
        # inside the control, so the box centre is a valid tap target.
        head = label.split(" ", 1)[0]
        matches = [i for i in items if head and i["text"] == head
                   and i["score"] >= min_score]
        if matches:
            print("matched leading token %r of %r" % (head, label))
    if not matches:
        print("NO MATCH for %r (min score %.2f)" % (label, min_score))
        return 2
    if len(matches) > 1 and not first:
        print("AMBIGUOUS (%d matches) for %r" % (len(matches), label))
        return 3
    box = matches[0]["box"]
    x = round(sum(p[0] for p in box) / 4)
    y = round(sum(p[1] for p in box) / 4)
    print("tap %d %d  (box centre of %r, score %.2f)" % (x, y, label, matches[0]["score"]))
    subprocess.run(["adb", "shell", "input", "tap", str(x), str(y)], check=False)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
