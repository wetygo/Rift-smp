import sys, os
sys.path.insert(0, os.path.dirname(__file__))
from PIL import Image, ImageDraw
import validate
from make_maps import topimg, label, grid
th, out = sys.argv[1:3]
SP = {"frostholm": (8192, 9728, "FROSTHOLM - snow and ice city - origin X 8192 Z 9728", [("ICE CASTLE (member gate)", 384, 384), ("FROZEN LAKE", 190, 384), ("IGLOO DOMES", 384, 190)]),
      "sandspire": (9216, 9728, "SANDSPIRE - desert city - origin X 9216 Z 9728", [("GREAT PYRAMID", 384, 384), ("OASIS", 384, 194), ("SULTAN'S PALACE", 384, 564), ("BAZAAR RING", 384, 304)]),
      "emberforge": (10240, 9728, "EMBERFORGE - volcanic forge city - origin X 10240 Z 9728", [("FORGE CITADEL + lava moat", 384, 384), ("ANVIL STATUE", 384, 324), ("CHIMNEY TOWERS", 330, 330)])}
for name, (ox, oz, title, pts) in SP.items():
    d, r, pal, a = validate.load_litematic(os.path.join(th, "RIFTBREK_%s.litematic" % name.upper()))
    img, hh = topimg(a, pal, H=300)
    sc = 2
    im = Image.fromarray(img).resize((768 * sc, 768 * sc), Image.NEAREST).convert("RGBA")
    ov = Image.new("RGBA", im.size, (0, 0, 0, 0)); dd = ImageDraw.Draw(ov)
    grid(dd, 768, 768, 64, ox, oz, sc)
    for t, x, z in pts:
        label(dd, x * sc, z * sc, t, 16)
    for t, x, z in (("NORTH GATE", 384, 34), ("SOUTH GATE", 384, 734)):
        label(dd, x * sc, z * sc, t, 14, fill=(255, 230, 120))
    label(dd, 384 * sc, 26, title + "  (underground: station hub, ring minecart line, gated treasury)", 20)
    Image.alpha_composite(im, ov).convert("RGB").save(os.path.join(out, "MAP_%s.png" % name.upper()))
print("ok")
