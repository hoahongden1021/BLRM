# -*- coding: utf-8 -*-
"""Replace baked Chinese label text in navigation PNG assets with English.

Evidence driven:
  * RapidOCR reads the current label out of the PNG (no assumptions).
  * The translation is looked up in LABEL_TRANSLATIONS.
  * Only pixels close to the OCR'd label colour are repainted, so the brush
    background, transparency, file names, dimensions and colour type stay.
  * The English label is drawn with the sampled label colour, auto-shrunk to
    the original label rectangle so it cannot clip.

Usage: py translate_assets.py [--dry-run]
"""
import os
import sys
from collections import Counter

sys.stdout.reconfigure(encoding="utf-8")
sys.path.insert(0, r"C:\Users\Mech\Desktop\BLRM\tools")

ROOT = r"C:\Users\Mech\Desktop\BLRM\build\english_test\decoded\unknown\sysui"
FONT = r"C:\Windows\Fonts\arialbd.ttf"
COLOR_DISTANCE = 110

LABEL_TRANSLATIONS = {
    "\u5f00\u59cb\u6e38\u620f": "Start Game",
    "\u5feb\u901f\u8fdb\u5165": "Quick Enter",
    "\u4fee\u590d\u6e38\u620f": "Repair Game",
    "\u9000\u51fa\u6e38\u620f": "Exit Game",
    "\u5feb\u901f\u6ce8\u518c": "Quick Register",
}

TARGETS = ("t_m_menu_",)


def dist(a, b):
    return sum((x - y) ** 2 for x, y in zip(a[:3], b[:3])) ** 0.5


def fit_font(text, max_w, max_h):
    from PIL import ImageFont
    size = max_h
    while size >= 8:
        font = ImageFont.truetype(FONT, size)
        left, top, right, bottom = font.getbbox(text)
        if right - left <= max_w and bottom - top <= max_h:
            return font, (right - left, bottom - top), (left, top)
        size -= 1
    font = ImageFont.truetype(FONT, 8)
    box = font.getbbox(text)
    return font, (box[2] - box[0], box[3] - box[1]), (box[0], box[1])


def sample_colors(pixels):
    opaque = [p for p in pixels if p[3] == 255]
    counts = Counter(opaque).most_common(4)
    if not counts:
        return (0, 0, 0, 255), (255, 255, 255, 255)
    bg = counts[0][0]
    label = counts[1][0] if len(counts) > 1 else (255, 255, 255, 255)
    if dist(bg, label) < 40 and len(counts) > 2:
        label = counts[2][0]
    return bg, label


def translate(path, dry_run=False):
    from rapidocr import RapidOCR
    from truthan_rapidocr import _extract
    from PIL import Image, ImageDraw

    engine = RapidOCR()
    texts, _, boxes, _, _ = _extract(engine(path))
    hits = [(t, b) for t, b in zip(texts, boxes)
            if t in LABEL_TRANSLATIONS and b]
    if not hits:
        return None

    label, box = hits[0]
    english = LABEL_TRANSLATIONS[label]
    with Image.open(path) as im:
        original_mode = im.mode
        rgba = im.convert("RGBA")
        px = rgba.load()
        xs = [int(round(p[0])) for p in box]
        ys = [int(round(p[1])) for p in box]
        x0, x1 = max(0, min(xs)), min(rgba.width, max(xs) + 1)
        y0, y1 = max(0, min(ys)), min(rgba.height, max(ys) + 1)
        rect = [px[x, y] for y in range(y0, y1) for x in range(x0, x1)]
        bg, label_color = sample_colors(rect)

        erased = 0
        for y in range(y0, y1):
            for x in range(x0, x1):
                current = px[x, y]
                if current[3] and dist(current, label_color) < COLOR_DISTANCE:
                    px[x, y] = bg
                    erased += 1

        draw = ImageDraw.Draw(rgba, "RGBA")
        font, (tw, th), (tl, tt) = fit_font(
            english, (x1 - x0) - 4, (y1 - y0))
        cx = (x0 + x1) // 2
        cy = (y0 + y1) // 2
        draw.text((cx - tw // 2 - tl, cy - th // 2 - tt), english,
                  font=font, fill=label_color)

        out = rgba if original_mode == "RGBA" else rgba.convert(original_mode)
        if not dry_run:
            out.save(path)
        return ("%s: %r -> %r rect=(%d,%d)-(%d,%d) bg=%s label=%s "
                "erased=%d font=%dpx" % (
                    os.path.basename(path), label, english, x0, y0, x1, y1,
                    bg[:3], label_color[:3], erased, font.size))


def main():
    dry_run = "--dry-run" in sys.argv
    changed = 0
    skipped = 0
    for base in (ROOT, os.path.join(ROOT, "ui")):
        if not os.path.isdir(base):
            continue
        for name in sorted(os.listdir(base)):
            if not name.lower().endswith(".png") or not name.startswith(TARGETS):
                continue
            result = translate(os.path.join(base, name), dry_run)
            if result:
                print(result)
                changed += 1
            else:
                skipped += 1
    print("translated=%d no-label-match=%d dry_run=%s" % (changed, skipped, dry_run))


if __name__ == "__main__":
    main()
