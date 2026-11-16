"""Member Quarters (BAT-style): numbered rooms with emergency button, mail dispenser, lava-curtain window, alarm control room,
launch pads, plus the blown-up treasure vault."""
import numpy as np
from .build_common import *
from . import build_common as C
from . import layout as L


def _set_auto(W, x, y, z, v):
    for t in W.tiles:
        if (t["x"], t["y"], t["z"]) == (x, y, z):
            t["auto"] = Byte(v)


def wall_sign(W, x, y, z, facing, lines, color="purple"):
    W.set(x, y, z, f"minecraft:crimson_wall_sign[facing={facing},waterlogged=false]")
    W.tile(x, y, z, {"id": "minecraft:sign", "is_waxed": Byte(1),
                     "front_text": {"has_glowing_text": Byte(1), "color": color, "messages": (list(lines) + ["", "", "", ""])[:4]},
                     "back_text": {"has_glowing_text": Byte(0), "color": "black", "messages": ["", "", "", ""]}})


def build_quarters(W):
    bx, bz, FH = L.QBX, L.QBZ, L.Q_FH
    W.fill(bx - 3, GROUND_TOP, bz - 3, bx + L.Q_W + 2, GROUND_TOP, bz + L.Q_D + 2, PB)
    W.fill(bx, GY, bz, bx + L.Q_W - 1, GY + 3 * FH, bz + L.Q_D - 1, BRK)
    for f in range(3):
        y = GY + FH * f
        W.fill(bx + 1, y, bz + 11, bx + L.Q_W - 2, y + 4, bz + 14, AIR)
        lattice_lights(W, bx + 1, bz + 11, bx + L.Q_W - 2, bz + 15, y + 4, step=6, off=3)
    for r in L.q_rooms():
        x0, y = r["x0"], r["y"]
        W.fill(x0, y, r["zin0"], x0 + 10, y + 4, r["zin1"], AIR)
        lattice_lights(W, x0, r["zin0"], x0 + 11, r["zin1"] + 1, y + 4, step=5, off=2)
    for f in range(3):                                           # ceilings between floors
        W.fill(bx, GY + FH * f + 5, bz, bx + L.Q_W - 1, GY + FH * f + 5, bz + L.Q_D - 1, DT)
        for r in L.q_rooms():                                    # (lights were set above the slab line; re-set them into the slab)
            pass
    for r in L.q_rooms():                                        # slab lights (ceiling lanterns)
        x0, y = r["x0"], r["y"]
        for x in range(x0 + 2, x0 + 11, 5):
            W.set(x, y + 5, (r["zin0"] + r["zin1"]) // 2, SEA)
        for x in range(bx + 3, bx + L.Q_W - 1, 6):
            W.set(x, y + 5, bz + 12, SEA)
    for (ex, ez) in ((bx, bz), (bx + L.Q_W - 1, bz), (bx, bz + L.Q_D - 1), (bx + L.Q_W - 1, bz + L.Q_D - 1)):
        W.fill(ex, GY, ez, ex, GY + 3 * FH, ez, GLOW)
    roof_deck = GY + 3 * FH                                     # y of the roof deck slab
    W.fill(bx - 1, roof_deck, bz - 1, bx + L.Q_W, roof_deck, bz + L.Q_D, DT)
    merlons(W, bx - 1, bz - 1, bx + L.Q_W, bz + L.Q_D, roof_deck + 1, BRK, 2)
    # corridor ladders ground -> roof (cells carved through the slabs)
    for (lx, lz, f) in ((bx + 1, bz + 12, "east"), (bx + L.Q_W - 2, bz + 13, "west")):
        W.fill(lx, GY, lz, lx, roof_deck, lz, AIR)
        for yy in range(GY, roof_deck + 1):
            W.set(lx, yy, lz, f"minecraft:ladder[facing={f},waterlogged=false]")
    # doors / arches / gates
    for r in L.q_rooms():
        x0, y = r["x0"], r["y"]
        dx = x0 + 5
        if r["kind"] == "lobby":
            W.fill(dx - 2, y, r["zdoor"], dx + 2, y + 3, r["zdoor"], AIR)
        elif r["kind"] == "control":
            gate(W, "leader", x0, y, r["zdoor"], 1, facing="north", frame=BRK)
        else:
            face = "south" if r["row"] == "N" else "north"
            W.fill(dx, y, r["zdoor"], dx, y + 1, r["zdoor"], AIR)
            W.set(dx, y, r["zdoor"], f"minecraft:crimson_door[facing={face},half=lower,hinge=left,open=false,powered=false]")
            W.set(dx, y + 1, r["zdoor"], f"minecraft:crimson_door[facing={face},half=upper,hinge=left,open=false,powered=false]")
    lob = [r for r in L.q_rooms() if r["kind"] == "lobby"][0]
    gx = lob["x0"] + 5
    gate(W, "member", gx, GY, bz + 1, 1, facing="north", frame=BRK, clear_z=[bz, bz + 2])
    sign(W, gx + 2, GY, bz - 2, ["MEMBER QUARTERS", "rooms 1-22", "members only"], rot=8)
    sign(W, lob["x0"] + 2, GY, lob["zin0"] + 1, ["MEMBER", "QUARTERS", "ladders at both", "ends of the hall"], rot=0, color="purple")
    for r in L.q_rooms():
        if r["kind"] == "room":
            quarter_room(W, r)
    control_room(W, [r for r in L.q_rooms() if r["kind"] == "control"][0])
    pad_launch(W, L.Q_ROOF_PAD[0], roof_deck, L.Q_ROOF_PAD[1], "QUARTERS ROOF")


def quarter_room(W, r):
    x0, y, n = r["x0"], r["y"], r["n"]
    N = r["row"] == "N"
    gx0, gy0, gz, gx1, gy1, _ = r["gap"]
    outer_z, inner_z = (gz - 1, gz + 1) if N else (gz + 1, gz - 1)
    W.fill(gx0, gy0, outer_z, gx1, gy1, outer_z, PG)            # privacy window: glass / lava / glass
    W.fill(gx0, gy0, inner_z, gx1, gy1, inner_z, PG)
    W.fill(gx0, gy0, gz, gx1, gy1, gz, "minecraft:lava[level=0]")
    zb = r["zbed"]
    col = ("purple", "black", "blue", "white")[n % 4]
    W.set(x0, y, zb, f"minecraft:{col}_bed[facing=west,occupied=false,part=head]")
    W.set(x0 + 1, y, zb, f"minecraft:{col}_bed[facing=west,occupied=false,part=foot]")
    chest(W, x0, y, zb + (2 if N else -2), "east")
    W.set(x0, y, zb + (3 if N else -3), "minecraft:crafting_table")
    mx, my, mz = r["mail_cb"]                                   # mailbox
    cmdblock(W, mx, my, mz, f"function riftbrek:mail/room_{n}")
    W.set(mx, my + 1, mz, "minecraft:dispenser[facing=west,triggered=false]")
    ex, ey, ez = r["emerg_cb"]                                  # emergency button
    cmdblock(W, ex, ey, ez, f"function riftbrek:alarm/emergency_{n} with storage riftbrek:cfg origin", kind="impulse")
    _set_auto(W, ex, ey, ez, 0)
    W.set(ex - 1, ey, ez, "minecraft:stone_button[face=wall,facing=west,powered=false]")
    W.set(ex - 1, ey + 1, ez, "minecraft:red_wall_banner[facing=west]")
    px, py, pz = r["priv_cb"]                                   # privacy lever
    cmdblock(W, px, py, pz, f"function riftbrek:privacy/room_{n}")
    W.set(px + 1, py, pz, "minecraft:lever[face=wall,facing=east,powered=true]")
    wall_sign(W, x0 + 4, y + 2, r["zsign"], "south" if N else "north", [f"ROOM {n}"])
    sign(W, x0 + 9, y, (r["zin0"] + 1) if N else (r["zin1"] - 1), [f"ROOM {n}", "MAIL: title the", "book = room no.", "lever = privacy"], rot=0 if N else 8, color="white")


def control_room(W, r):
    """alarm control room: wall panel of buttons -> impulse command blocks -> alarm functions (entrance = leader-tier gate)"""
    x0, y = r["x0"], r["y"]
    zwall = L.QBZ + 15
    rooms = [q for q in L.q_rooms() if q["kind"] == "room"]
    cols = list(range(x0 + 1, x0 + 11))
    slots = [(c, y + 1 + row) for row in range(3) for c in cols]
    labels = [("room", q["n"]) for q in rooms] + [("all", 0), ("reset", 0)]
    for (cx, cy), lab in zip(slots, labels):
        cmd = (f"function riftbrek:alarm/room_{lab[1]} with storage riftbrek:cfg origin" if lab[0] == "room"
               else "function riftbrek:alarm/all" if lab[0] == "all" else "function riftbrek:alarm/reset")
        cmdblock(W, cx, cy, zwall, cmd, kind="impulse")
        _set_auto(W, cx, cy, zwall, 0)
        W.set(cx, cy, zwall + 1, "minecraft:stone_button[face=wall,facing=south,powered=false]")
    names = [str(q["n"]) for q in rooms] + ["ALL", "RESET"]
    for ci, c in enumerate(cols):
        a, b = names[ci], names[ci + 10]
        c3 = names[ci + 20] if ci + 20 < len(names) else "-"
        wall_sign(W, c, y + 4, zwall + 1, "south", ["bottom->top", a, b, c3], color="yellow")
    sign(W, x0 + 5, y, r["zin1"] - 1, ["CONTROL ROOM", "1 button = 1 room", "ALL = every room", "RESET = silence"], rot=8, color="red")


def pad_launch(W, x, ypad, z, label):
    """launch pad block at ypad, command block directly below it"""
    W.set(x, ypad, z, "minecraft:blue_glazed_terracotta[facing=north]")
    cmdblock(W, x, ypad - 1, z, "function riftbrek:launch/pad")
    for dx, dz in ((1, 0), (-1, 0), (0, 1), (0, -1)):
        W.set(x + dx, ypad, z + dz, GLOW)
    for dx, dz in ((2, 2), (-2, 2), (2, -2), (-2, -2)):
        W.fill(x + dx, ypad + 1, z + dz, x + dx, ypad + 6, z + dz, TG)
        W.set(x + dx, ypad + 7, z + dz, SEA)
    sign(W, x, ypad + 1, z + 3, ["LAUNCH PAD", label, "wear an ELYTRA", "-> 1000 blocks up"], rot=0, color="blue")


def launch_pads(W):
    for (x, z) in L.LAUNCH_PADS:
        W.fill(x - 3, GROUND_TOP, z - 3, x + 3, GROUND_TOP, z + 3, DT)
        pad_launch(W, x, GROUND_TOP, z, "SURFACE")


# ------------------------------------------------------------------------------------------------------------------------------------------
LOOT = [("minecraft:diamond_block", 64), ("minecraft:emerald_block", 64), ("minecraft:gold_block", 64), ("minecraft:netherite_block", 64),
        ("minecraft:netherite_ingot", 64), ("minecraft:diamond", 64), ("minecraft:enchanted_golden_apple", 64), ("minecraft:nether_star", 64),
        ("minecraft:ancient_debris", 64), ("minecraft:experience_bottle", 64), ("minecraft:emerald", 64), ("minecraft:gold_ingot", 64),
        ("minecraft:iron_block", 64), ("minecraft:lapis_block", 64), ("minecraft:elytra", 1), ("minecraft:totem_of_undying", 1),
        ("minecraft:beacon", 64), ("minecraft:shulker_box", 1), ("minecraft:heart_of_the_sea", 64), ("minecraft:dragon_egg", 1),
        ("minecraft:trident", 1), ("minecraft:netherite_scrap", 64), ("minecraft:amethyst_block", 64), ("minecraft:golden_carrot", 64)]


def ruined_vault(W, rng):
    """old storage vault on B12: mostly blown up, still stuffed with treasure"""
    y0 = L.level_floor(12)
    x0, z0, x1, z1 = 290, 290, 369, 349
    W.fill(x0, y0 + 1, z0, x1, y0 + 6, z1, AIR)
    W.fill(x0, y0, z0, x1, y0, z1, BK)
    for (a, b, c, d) in ((x0, z0, x1, z0), (x0, z1, x1, z1), (x0, z0, x0, z1), (x1, z0, x1, z1)):
        W.fill(a, y0 + 1, b, c, y0 + 6, d, DB)
    for x in range(x0 + 8, x1, 8):
        W.fill(x, y0 + 1, z0 + 1, x, y0 + 6, z0 + 1, GLOW if (x // 8) % 3 == 0 else DB)
    # treasure: chest rows along the north and south walls, bullion piles in the middle
    chests = 0
    for z in (z0 + 1, z1 - 1):
        for x in range(x0 + 2, x1 - 1, 2):
            if rng.random() < 0.82:
                items = [(LOOT[int(rng.integers(0, len(LOOT)))]) for _ in range(27)]
                W.set(x, y0 + 1, z, f"minecraft:chest[facing={'south' if z == z0 + 1 else 'north'},type=single,waterlogged=false]")
                W.tile(x, y0 + 1, z, {"id": "minecraft:chest", "Items": [{"Slot": Byte(i), "id": nm, "count": c} for i, (nm, c) in enumerate(items)]})
                chests += 1
                if rng.random() < 0.5:
                    W.set(x, y0 + 2, z, "minecraft:chest[facing=%s,type=single,waterlogged=false]" % ("south" if z == z0 + 1 else "north"))
                    W.tile(x, y0 + 2, z, {"id": "minecraft:chest", "Items": [{"Slot": Byte(i), "id": nm, "count": c} for i, (nm, c) in enumerate([LOOT[int(rng.integers(0, len(LOOT)))] for _ in range(27)])]})
                    chests += 1
    for _ in range(46):                                           # bullion piles
        px = int(rng.integers(x0 + 6, x1 - 5)); pz = int(rng.integers(z0 + 6, z1 - 5))
        blk = ("minecraft:gold_block", "minecraft:diamond_block", "minecraft:emerald_block", "minecraft:netherite_block", "minecraft:raw_gold_block", "minecraft:iron_block")[int(rng.integers(0, 6))]
        h = int(rng.integers(1, 4))
        W.fill(px, y0 + 1, pz, px + int(rng.integers(0, 3)), y0 + h, pz + int(rng.integers(0, 3)), blk)
    # explosions: craters through walls / ceiling / floor + rubble + scorching
    for _ in range(26):
        cx = int(rng.integers(x0 - 2, x1 + 3)); cz = int(rng.integers(z0 - 2, z1 + 3)); cy = y0 + int(rng.integers(1, 7)); r = int(rng.integers(3, 7))
        ys, zs, xs = np.ogrid[-r:r + 1, -r:r + 1, -r:r + 1]
        m = (xs ** 2 + ys ** 2 + zs ** 2) <= r * r
        X0, Y0, Z0 = cx - r, cy - r, cz - r
        sub = W.a[max(Y0, y0 + 1):cy + r + 1, max(Z0, 0):cz + r + 1, max(X0, 0):cx + r + 1]
        mm = m[max(Y0, y0 + 1) - Y0:max(Y0, y0 + 1) - Y0 + sub.shape[0], max(Z0, 0) - Z0:max(Z0, 0) - Z0 + sub.shape[1], max(X0, 0) - X0:max(X0, 0) - X0 + sub.shape[2]]
        hit = (sub != 0) & mm
        # keep chests/loot mostly intact: only remove walls / treasure blocks; chests survive 70 %
        keep = np.isin(sub, [W.B("minecraft:chest[facing=south,type=single,waterlogged=false]"), W.B("minecraft:chest[facing=north,type=single,waterlogged=false]")]) & (rng.random(sub.shape) < 0.7)
        sub[hit & ~keep] = 0
    # drop tile entities of chests that the blasts destroyed
    chest_ids = {W.B("minecraft:chest[facing=south,type=single,waterlogged=false]"), W.B("minecraft:chest[facing=north,type=single,waterlogged=false]")}
    keep_t = [t for t in W.tiles if not (t["id"] == "minecraft:chest" and int(W.a[t["y"], t["z"], t["x"]]) not in chest_ids)]
    W.tiles[:] = keep_t
    W.tile_pos.clear()
    for i, t in enumerate(W.tiles):
        W.tile_pos[(t["x"], t["y"], t["z"])] = i
    chests = sum(1 for t in W.tiles if t["id"] == "minecraft:chest" and x0 <= t["x"] <= x1 and z0 <= t["z"] <= z1 and y0 <= t["y"] <= y0 + 2)
    # rubble / scorch on the floor, fallen blocks
    ground = W.a[y0 + 1, z0 + 1:z1, x0 + 1:x1]
    air = ground == 0
    rubble = ["minecraft:cobbled_deepslate", "minecraft:gravel", "minecraft:blackstone", "minecraft:coal_block", "minecraft:magma_block", "minecraft:soul_soil"]
    rr = rng.random(air.shape)
    for k, b in enumerate(rubble):
        sel = air & (rr > 0.55 + 0.07 * k) & (rr <= 0.62 + 0.07 * k)
        ground[sel] = W.B(b)
    # a guaranteed breach on the west wall so the hall connects to the vault, and a sign
    W.fill(x0 - 1, y0 + 1, 316, x0 + 3, y0 + 4, 322, AIR)
    W.fill(x0 - 1, y0, 316, x0 + 3, y0, 322, BK)
    sign(W, x0 - 3, y0 + 1, 319, ["OLD VAULT", "blown up long ago", "treasure remains", "mind the craters"], rot=4, color="yellow")
    return chests
