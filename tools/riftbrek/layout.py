"""Shared constants. Both the schematic generator and the datapack generator import this
module so command-block positions / relative offsets can never drift apart."""

# ---- world frame --------------------------------------------------------------------------
SX, SY, SZ = 768, 384, 768          # schematic size (x, y, z); local y 0 == world y -64, top == world y 319 (build limit)
GROUND_TOP = 95                       # last solid ground layer (local y)  -> world y = 31
GY = GROUND_TOP + 1                   # first buildable layer above the ground
WORLD_Y0 = -64                        # world Y of local y=0
LEVEL_H = 8                           # every underground level is 8 blocks tall


def level_floor(k):
    """local y of the floor slab of underground level Bk (k = 1..12)."""
    return GROUND_TOP + 1 - LEVEL_H * k


# ---- factions ----------------------------------------------------------------------------
# key: (display name, code, role#, team colour, shield banner colour)
FACTIONS = {
    "birds":       ("The Biggest Birds", "BB", 1, "light_purple", "purple"),
    "unstables":   ("The Unstables",     "UN", 2, "blue",         "blue"),
    "abstracters": ("Abstracters",       "AB", 3, "dark_gray",    "black"),
    "veil":        ("Veil",              "VL", 4, "dark_purple",  "gray"),
    "archivist":   ("The Archivist",     "AR", 5, "white",        "white"),
    "wildcards":   ("Wildcards",         "WC", 6, "aqua",         "light_blue"),
}

# ---- clearance ladder ----------------------------------------------------------------------
CLR_VISITOR, CLR_MEMBER, CLR_LEADER, CLR_ROYAL = 1, 2, 4, 5

# ---- door tiers: name -> list of selector-argument strings (union) -------------------------
def _sel(extra, clr):
    return f"tag=!rb_revoked{extra},scores={{rb_cred=1..,rb_clear={clr}..}}"

ROYAL_SEL = "tag=rb_royal,tag=!rb_revoked,scores={rb_cred=1..,rb_clear=5..}"

DOOR_TIERS = {
    # name: (list of non-royal selectors, royal_may_pass, lockdown_exempt)
    "public":   ([_sel("", CLR_VISITOR)], True, False),
    "member":   ([_sel("", CLR_MEMBER)], True, False),
    "leader":   ([_sel("", CLR_LEADER)], True, False),
    "royal":    ([], True, True),
}
for _f in FACTIONS:
    DOOR_TIERS[_f] = ([_sel(f",tag=rb_{_f}", CLR_MEMBER)], True, False)
DOOR_WIDTHS = (1, 6, 12)

# ---- sorter halls --------------------------------------------------------------------------
SORT_K = 4            # columns per category
SORT_SLOTS = 5        # hopper slots

_COLORS = ["white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"]
SHULKERS = ["minecraft:shulker_box"] + ["minecraft:%s_shulker_box" % c for c in _COLORS]

# category -> list of item predicates (each its own command line)
CATS_A = [
    ("logs",      ["#minecraft:logs"]),
    ("planks",    ["#minecraft:planks"]),
    ("stone",     ["minecraft:stone", "minecraft:cobblestone", "minecraft:deepslate", "minecraft:cobbled_deepslate",
                   "minecraft:andesite", "minecraft:diorite", "minecraft:granite", "minecraft:tuff", "minecraft:blackstone"]),
    ("sand_gravel", ["#minecraft:sand", "minecraft:gravel", "minecraft:clay_ball", "minecraft:clay"]),
    ("dirt",      ["minecraft:dirt", "minecraft:grass_block", "minecraft:podzol", "minecraft:mycelium", "minecraft:coarse_dirt"]),
    ("wool",      ["#minecraft:wool", "#minecraft:wool_carpets"]),
    ("coal",      ["#minecraft:coals", "minecraft:coal_block"]),
    ("iron",      ["minecraft:iron_ingot", "minecraft:raw_iron", "minecraft:iron_nugget", "minecraft:iron_block"]),
    ("copper",    ["minecraft:copper_ingot", "minecraft:raw_copper", "minecraft:copper_block"]),
    ("gold",      ["minecraft:gold_ingot", "minecraft:raw_gold", "minecraft:gold_nugget", "minecraft:gold_block"]),
    ("redstone",  ["minecraft:redstone", "minecraft:redstone_block", "minecraft:lapis_lazuli", "minecraft:quartz"]),
    ("gems",      ["minecraft:diamond", "minecraft:emerald", "minecraft:diamond_block", "minecraft:emerald_block",
                   "minecraft:netherite_ingot", "minecraft:netherite_scrap", "minecraft:ancient_debris"]),
    ("glass",     ["minecraft:glass", "minecraft:tinted_glass", "minecraft:glass_pane"]),
    ("terracotta", ["#minecraft:terracotta"]),
    ("saplings_leaves", ["#minecraft:saplings", "#minecraft:leaves", "#minecraft:flowers"]),
    ("decor_valuables", ["minecraft:amethyst_shard", "minecraft:amethyst_block", "minecraft:obsidian", "minecraft:crying_obsidian"]),
    ("misc",      None),     # catch-all / overflow
]
CATS_B = [
    ("swords",    ["#minecraft:swords"]),
    ("pickaxes",  ["#minecraft:pickaxes"]),
    ("axes",      ["#minecraft:axes"]),
    ("shovels_hoes", ["#minecraft:shovels", "#minecraft:hoes"]),
    ("armor",     ["#minecraft:trimmable_armor", "minecraft:shield", "minecraft:elytra", "minecraft:turtle_helmet"]),
    ("ranged",    ["minecraft:bow", "minecraft:crossbow", "minecraft:trident", "minecraft:mace", "#minecraft:arrows", "minecraft:wind_charge"]),
    ("food",      ["minecraft:cooked_beef", "minecraft:cooked_porkchop", "minecraft:bread", "minecraft:golden_apple",
                   "minecraft:enchanted_golden_apple", "minecraft:golden_carrot", "minecraft:cooked_chicken", "minecraft:cooked_mutton"]),
    ("crops",     ["minecraft:wheat", "minecraft:carrot", "minecraft:potato", "minecraft:beetroot", "minecraft:sugar_cane",
                   "minecraft:melon_slice", "minecraft:pumpkin", "minecraft:wheat_seeds", "minecraft:beetroot_seeds"]),
    ("mob_drops", ["minecraft:bone", "minecraft:string", "minecraft:gunpowder", "minecraft:rotten_flesh", "minecraft:spider_eye",
                   "minecraft:ender_pearl", "minecraft:blaze_rod", "minecraft:slime_ball", "minecraft:feather", "minecraft:leather"]),
    ("potions_books", ["minecraft:potion", "minecraft:splash_potion", "minecraft:lingering_potion", "minecraft:enchanted_book",
                       "minecraft:book", "minecraft:paper", "minecraft:experience_bottle"]),
    ("shulkers",  SHULKERS + ["minecraft:ender_chest", "minecraft:chest", "minecraft:barrel"]),
    ("rails_redstone_parts", ["minecraft:rail", "minecraft:powered_rail", "minecraft:detector_rail", "minecraft:activator_rail", "minecraft:piston", "minecraft:sticky_piston", "minecraft:observer",
                    "minecraft:hopper", "minecraft:dropper", "minecraft:dispenser", "minecraft:comparator", "minecraft:repeater"]),
    ("misc",      None),
]

# Sorter halls.  level = underground level index (B5, B6); ox/oz = world-local controller origin.
# Controller command block = C.  H0 (input tray hopper) = C+(0,0,1).  Category hoppers = C+sort_col(i,k).
SORT_HALLS = [
    dict(name="a", level=5, ox=560, oz=472, cats=CATS_A),
    dict(name="b", level=6, ox=560, oz=520, cats=CATS_B),
]


def sort_col(i, k):
    """offset of the category hopper H(i,k) relative to the hall controller (dx, dy, dz)."""
    return (2 + 2 * i, 0, 2 + 2 * k)


# rectangles (local x0,z0,x1,z1) that should stay loaded so the machines keep running when nobody is near
FORCELOAD = [
    ("sorter A (B5)", 554, 468, 600, 486),
    ("sorter B (B6)", 554, 516, 592, 534),
    ("industry hall B7", 48, 470, 262, 610),
    ("synthesis hall B11", 200, 280, 330, 330),
    ("blimp lane x=250", 232, 60, 268, 720),
    ("checkpoint / chunk-ban square", 352, 652, 415, 712),
]
SYNTH = [  # (name, entity loot table, label)
    ("iron", "minecraft:entities/iron_golem", "IRON"),
    ("gunpowder", "minecraft:entities/creeper", "GUNPOWDER"),
    ("bones", "minecraft:entities/skeleton", "BONES+ARROWS"),
    ("string", "minecraft:entities/spider", "STRING"),
    ("flesh", "minecraft:entities/zombie", "ROTTEN FLESH"),
    ("pearls", "minecraft:entities/enderman", "ENDER PEARLS"),
    ("blaze", "minecraft:entities/blaze", "BLAZE RODS"),
    ("witch", "minecraft:entities/witch", "WITCH DROPS"),
]
SYNTH_ORIGIN = (220, 300)     # x, z of the first unit (B11); unit pitch 6 along x
