"""Replace baked Chinese menu labels with English text (start-menu buttons).

Targets ``login/botton*.png``: each image is an RGBA label (glyphs over a
decorative swirl).  Glyph pixels are detected by colour (R and G clearly
above B), erased, and re-drawn as Arial Bold text using the sampled label
colours of the original family (cream/maroon for normal, gold/red for bright).
"""
import io
import os
import sys
import zipfile

from PIL import Image, ImageChops, ImageDraw, ImageFilter, ImageFont

sys.stdout.reconfigure(encoding="utf-8")

APK = os.environ["TEMP"] + r"\opencode\installed_en.apk"
OUT_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)))
FONT = r"C:\Windows\Fonts\arialbd.ttf"

# login/bottonN.png -> English label (N 1..6 normal, 11..16 bright).
LABELS = {
    1: "Start Game", 11: "Start Game",
    2: "Quick Enter", 12: "Quick Enter",
    3: "Quick Register", 13: "Quick Register",
    4: "Exit Game", 14: "Exit Game",
    5: "Repair Game", 15: "Repair Game",
    6: "Network Select", 16: "Network Select",
}

# Fill / outline colours per family (sampled from the original art).
STYLES = {
    "normal": ((247, 245, 216), (58, 12, 6)),
    "bright": ((252, 228, 0), (150, 18, 18)),
}


def glyph_mask(im):
    """Pixels belonging to the lettering rather than the swirl decoration."""
    px = im.load()
    w, h = im.size
    m = Image.new("L", (w, h), 0)
    mp = m.load()
    for y in range(h):
        for x in range(w):
            r, g, b, a = px[x, y]
            if a <= 40:
                continue
            fill = r > b + 40 and g > b + 40          # cream / gold body
            edge = r > g + 10 and r > b + 10 and r > 35  # maroon outline fringe
            if fill or edge:
                mp[x, y] = 255
    return m


def swirl_mask(im):
    """Pixels of the decorative brush stroke (blue-dominant or neutral light)."""
    px = im.load()
    w, h = im.size
    m = Image.new("L", (w, h), 0)
    mp = m.load()
    for y in range(h):
        for x in range(w):
            r, g, b, a = px[x, y]
            if a <= 40:
                continue
            blue = b > r + 8 and b > g + 8
            neutral = (abs(r - g) <= 20 and abs(g - b) <= 20
                       and b >= r - 2 and r > 140)
            if blue or neutral:
                mp[x, y] = 255
    return m


def dilate(mask, size=3):
    return mask.filter(ImageFilter.MaxFilter(size))


def render_text(text, box_w, box_h, fill, outline):
    lo, hi, best = 6, 80, None
    while lo <= hi:
        size = (lo + hi) // 2
        font = ImageFont.truetype(FONT, size)
        probe = Image.new("RGBA", (box_w * 2, box_h * 2), (0, 0, 0, 0))
        d = ImageDraw.Draw(probe)
        stroke = max(1, size // 16)
        bb = d.textbbox((0, 0), text, font=font, stroke_width=stroke)
        tw, th = bb[2] - bb[0], bb[3] - bb[1]
        if tw <= box_w and th <= box_h:
            best = (size, font, stroke, tw, th, bb)
            lo = size + 1
        else:
            hi = size - 1
    if best is None:
        best = (6, ImageFont.truetype(FONT, 6), 1, 0, 0, (0, 0, 0, 0))
    size, font, stroke, tw, th, bb = best
    layer = Image.new("RGBA", (tw + 4, th + 4), (0, 0, 0, 0))
    d = ImageDraw.Draw(layer)
    d.text((2 - bb[0], 2 - bb[1]), text, font=font, fill=fill,
           stroke_width=stroke, stroke_fill=outline)
    return layer


def translate(im, text, style):
    fill, outline = STYLES[style]
    glyph = glyph_mask(im)
    bbox = glyph.getbbox()
    if not bbox:
        raise SystemExit("no glyph pixels found")
    # Erase the lettering, but keep the decorative brush stroke intact.
    erase = ImageChops.subtract(dilate(glyph), swirl_mask(im))
    x0, y0, x1, y1 = bbox
    # Keep a little horizontal room around the original lettering box.
    layer = render_text(text, x1 - x0, y1 - y0, fill, outline)
    out = im.copy()
    alpha = out.split()[3]
    alpha = Image.composite(Image.new("L", out.size, 0), alpha, erase)
    out.putalpha(alpha)
    px = (x0 + (x1 - x0 - layer.width) // 2,
          y0 + (y1 - y0 - layer.height) // 2)
    out.alpha_composite(layer, (max(0, px[0]), max(0, px[1])))
    return out


def main():
    z = zipfile.ZipFile(APK)
    preview = os.path.join(os.environ["TEMP"], r"opencode\menu_preview")
    os.makedirs(preview, exist_ok=True)
    for idx, text in sorted(LABELS.items()):
        name = "login/botton%d.png" % idx
        im = Image.open(io.BytesIO(z.read(name))).convert("RGBA")
        style = "bright" if idx > 10 else "normal"
        out = translate(im, text, style)
        # Keep the original file format: palette PNG (colour type 3) with a
        # per-index tRNS alpha table, exactly like the source art.
        pal = out.quantize(colors=256, method=Image.FASTOCTREE)
        pal.save(os.path.join(OUT_DIR, "decoded", "unknown", "login",
                              "botton%d.png" % idx))
        canvas = Image.new("RGB", out.size, (35, 55, 45))
        canvas.paste(out, mask=out.split()[3])
        canvas.resize((out.width * 3, out.height * 3),
                      Image.NEAREST).save(os.path.join(preview, name.replace("/", "_")))
        print("%-24s -> %-16s %s" % (name, text, out.size))


if __name__ == "__main__":
    main()
