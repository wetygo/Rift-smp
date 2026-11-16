# Placement in your existing world (house avoided)

Your house box: X -1718..-1668, Y 77..186, Z 394..490.
The base now sits at **origin X 1024, Z 1024** (schematic local 0,0 → world 1024,1024):
**X 1024..2911, Z 1024..1791, Y -64..319**. Nearest distance to the house box: **2,692 blocks in X** (no overlap, no shared region file).

Region files used: `r.2.2 r.2.3 r.3.2 r.3.3 r.4.2 r.4.3 r.5.2 r.5.3` (blocks X 1024..3071, Z 1024..2047).
These replace whole region files, so **before copying open your world's `region` and `entities` folders and check none of those 8 names already exist.** If any do, do not copy: tell me and I shift the origin (or use the Litematica zone method, which merges instead of replacing).

## Steps
1. **Back up the world folder** (copy it somewhere). Quit to the title screen.
2. Check the 8 file names above are absent from `region/` (and `entities/`).
3. Copy `region/` and `entities/` from `RIFTBREK_WORLD_FILES_X1024_Z1024.zip` into the world folder; copy `RIFTBREK_Vanguard_Datapack.zip` (unextracted) into `datapacks/`.
4. Open the world; stand still for a few minutes while lighting is calculated.
5. Commands (cheats on):
   ```
   /tp @s 1407 33 1764
   /setworldspawn 1407 32 1764      (optional)
   /function riftbrek:paste/init
   /function riftbrek:admin/origin {x:1024,z:1024}
   /function riftbrek:admin/verify
   /function riftbrek:admin/forceload
   ```
   Expect 9 × PASS from verify.
6. Landmarks (world coords): gate `1407 32 1788`, throne room `1407 144 1274`, sorter A controller `1584 -4 1496`, annex quarter starts at `X 1824`.

Terrain: the build overwrites everything inside X 1024..2911, Z 1024..1791 (all heights). Terrain there is replaced by void/air + the base.

Litematica alternative: set the placement origin to **X 1024, Y -64, Z 1024** and use `admin/origin {x:1024,z:1024}`; zone functions are origin-relative.
