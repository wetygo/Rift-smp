"""Render top-down and cross-section previews of the generated schematic (numpy dump or litematic)."""
import sys, json, gzip
import numpy as np
from PIL import Image
sys.path.insert(0, __file__.rsplit("/", 1)[0])

COL = {
    "grass_block": (70, 120, 60), "polished_blackstone_bricks": (48, 44, 56), "polished_blackstone": (40, 38, 46),
    "deepslate_tiles": (60, 60, 70), "deepslate_bricks": (55, 55, 62), "deepslate": (50, 50, 55), "stone": (110, 110, 110),
    "purple_concrete": (110, 40, 170), "blue_concrete": (40, 70, 170), "white_concrete": (235, 235, 240), "black_concrete": (15, 12, 20),
    "crying_obsidian": (150, 70, 255), "sea_lantern": (210, 240, 235), "purple_stained_glass": (160, 80, 220),
    "blue_stained_glass": (80, 110, 230), "light_blue_stained_glass": (120, 190, 240), "tinted_glass": (80, 60, 100),
    "quartz_block": (230, 225, 215), "amethyst_block": (150, 100, 200), "water": (50, 100, 220), "bookshelf": (150, 110, 70),
    "iron_bars": (150, 150, 160), "cherry_leaves": (240, 150, 190), "spruce_leaves": (40, 90, 50), "blackstone": (30, 28, 34),
    "cut_copper": (200, 120, 80), "oxidized_cut_copper": (80, 170, 150), "obsidian": (20, 10, 35), "blue_ice": (120, 180, 255),
    "purple_banner": (120, 40, 160), "purple_wall_banner": (120, 40, 160), "farmland": (110, 70, 40),
    "cherry_log": (130, 80, 90), "spruce_log": (80, 55, 35), "lightning_rod": (200, 120, 70), "purple_carpet": (130, 50, 160),
    "stone_bricks": (120, 120, 125), "hay_block": (210, 180, 60), "redstone_lamp": (200, 150, 80),
}


def colour(name):
    n = name.split(":")[1]
    if n in COL:
        return COL[n]
    h = (hash(n) & 0xFFFFFF)
    return (80 + (h & 0x3F), 80 + ((h >> 6) & 0x3F), 80 + ((h >> 12) & 0x3F))


def load(sp):
    a = np.load(sp + "world.npy")
    pal = json.load(open(sp + "palette.json"))
    lut = np.array([colour(p[0]) for p in pal] + [(0, 0, 0)], dtype=np.uint8)
    return a, pal, lut


def top(a, lut, path, scale=1, y_max=None):
    Y = a.shape[0]
    solid = a != 0
    # topmost non-air
    flip = solid[::-1]
    idx = flip.argmax(axis=0)
    ytop = Y - 1 - idx
    has = solid.any(axis=0)
    z, x = np.mgrid[0:a.shape[1], 0:a.shape[2]]
    bi = a[ytop, z, x]
    img = lut[bi].astype(np.float32)
    shade = (0.55 + 0.45 * (ytop / Y))[..., None]
    img = np.clip(img * shade, 0, 255).astype(np.uint8)
    img[~has] = 0
    Image.fromarray(img).resize((img.shape[1] * scale, img.shape[0] * scale), Image.NEAREST).save(path)


def section(a, lut, path, axis, pos, scale=1):
    if axis == "z":
        s = a[:, pos, :]
    else:
        s = a[:, :, pos]
    img = lut[s][::-1]
    Image.fromarray(img).resize((img.shape[1] * scale, img.shape[0] * scale), Image.NEAREST).save(path)


if __name__ == "__main__":
    sp = sys.argv[1]
    a, pal, lut = load(sp)
    top(a, lut, sp + "top.png")
    section(a, lut, sp + "sec_x383.png", "x", 383)
    section(a, lut, sp + "sec_z480.png", "z", 480)
    section(a, lut, sp + "sec_z300.png", "z", 300)


def plan(a, lut, path, y, x0, x1, z0, z1, scale=8):
    sub = a[y, z0:z1, x0:x1]
    img = lut[sub]
    Image.fromarray(img).resize((img.shape[1] * scale, img.shape[0] * scale), Image.NEAREST).save(path)
