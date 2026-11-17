# Placement in your existing world (house avoided, existing regions avoided)

The earlier origin (1024,1024) collided with region files that already exist in your world, so it was dropped.
New origin: **X 8192, Z 8192** (schematic local 0,0 → world 8192,8192). Footprint **X 8192..10079, Z 8192..8959, Y -64..319**.
Your house (X -1718..-1668, Z 394..490) is ~9,900 blocks away.

Files used: `r.16.16 r.16.17 r.17.16 r.17.17 r.18.16 r.18.17 r.19.16 r.19.17` in `region/`, and `r.17.17 r.18.16 r.19.16` in `entities/`.
**Check first**: if ANY of those names already exists in your world's `region/` or `entities/` folder, do NOT copy — tell me the names.

## Steps
1. Back up the world folder. Quit to the title screen.
2. Check the file names above are absent.
3. Copy `region/` and `entities/` from the zip into the world folder; put `RIFTBREK_Vanguard_Datapack.zip` (unextracted) in `datapacks/`.
4. Open the world, wait a few minutes (lighting).
5. In chat (cheats on):
   ```
   /tp @s 8575 33 8932
   /function riftbrek:paste/init
   /function riftbrek:admin/origin {x:8192,z:8192}
   /function riftbrek:admin/verify
   /function riftbrek:admin/forceload
   ```
   Expect 9 × PASS.
6. Landmarks: gate `8575 32 8956`, throne room `8575 144 8442`, sorter A controller `8752 -4 8664`, annex quarter from `X 8992`.

The build overwrites everything inside its footprint (the chunks are replaced).
Litematica alternative: placement origin X 8192, Y -64, Z 8192 and `admin/origin {x:8192,z:8192}`.
