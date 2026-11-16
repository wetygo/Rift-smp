"""One-off generator: item families from the 1.21.11 item registry, so the sorter never depends on item tags I cannot verify."""
import json, sys, os, re
D = os.path.join(sys.argv[1], "node_modules", "minecraft-data", "minecraft-data", "data", "pc", "1.21.11")
items = sorted(i["name"] for i in json.load(open(os.path.join(D, "items.json"))))
S = set(items)
COL = ["white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"]
WOODS = ["oak", "spruce", "birch", "jungle", "acacia", "dark_oak", "mangrove", "cherry", "pale_oak", "bamboo", "crimson", "warped"]
fam = {}
fam["logs"] = [i for i in items if re.search(r"(_log|_wood|_stem|_hyphae)$", i) or i in ("bamboo_block", "stripped_bamboo_block")]
fam["planks"] = [f"{w}_planks" for w in WOODS if f"{w}_planks" in S]
fam["wool"] = [f"{c}_wool" for c in COL if f"{c}_wool" in S]
fam["wool_carpets"] = [f"{c}_carpet" for c in COL if f"{c}_carpet" in S]
fam["sand"] = [i for i in ("sand", "red_sand") if i in S]
fam["coals"] = [i for i in ("coal", "charcoal") if i in S]
fam["terracotta"] = ["terracotta"] + [f"{c}_terracotta" for c in COL if f"{c}_terracotta" in S]
fam["saplings"] = [i for i in items if i.endswith("_sapling") or i == "mangrove_propagule"]
fam["leaves"] = [i for i in items if i.endswith("_leaves")]
fam["flowers"] = [i for i in ("dandelion", "poppy", "blue_orchid", "allium", "azure_bluet", "red_tulip", "orange_tulip", "white_tulip", "pink_tulip", "oxeye_daisy", "cornflower",
                              "lily_of_the_valley", "wither_rose", "torchflower", "pitcher_plant", "sunflower", "lilac", "rose_bush", "peony", "open_eyeblossom", "closed_eyeblossom") if i in S]
fam["swords"] = [i for i in items if i.endswith("_sword")]
fam["pickaxes"] = [i for i in items if i.endswith("_pickaxe")]
fam["axes"] = [i for i in items if i.endswith("_axe") and not i.endswith("_pickaxe")]
fam["shovels"] = [i for i in items if i.endswith("_shovel")]
fam["hoes"] = [i for i in items if i.endswith("_hoe")]
fam["armor"] = [i for i in items if re.search(r"_(helmet|chestplate|leggings|boots)$", i)]
fam["arrows"] = [i for i in ("arrow", "spectral_arrow", "tipped_arrow") if i in S]
out = {k: ["minecraft:" + x for x in v] for k, v in fam.items()}
json.dump(out, open(os.path.join(os.path.dirname(__file__), "riftbrek", "item_families.json"), "w"), indent=0)
print({k: len(v) for k, v in out.items()})
