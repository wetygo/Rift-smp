import sys, os
sys.path.insert(0, os.path.dirname(__file__))
import validate
lit, pack = sys.argv[1], sys.argv[2]
fe, se, stats, gates, info = validate.run(lit, pack)
print("shape/palette/tiles:", info)
print("datapack lint errors:", len(fe))
for x in fe[:40]: print("   DP:", x)
print("schematic errors:", len(se), " gate rows:", gates)
from collections import Counter
c = Counter(e.split(" at ")[0].split(":")[0][:40] for e in se)
for k, v in c.most_common(20): print("   ", v, k)
for x in se[:25]: print("   SC:", x)
print({k: v for k, v in stats.items() if k in ("command_blocks_ok", "hopper", "chest", "furnace", "crafter", "dispenser", "iron_door", "ladder")})

d, r, pal, a = validate.load_litematic(lit)
ids, texts = validate.functions(pack)
ce, cs = validate.check_consistency(a, pal, r["TileEntities"], texts)
print("consistency errors:", len(ce), cs)
for x in ce[:30]: print("   CS:", x)
