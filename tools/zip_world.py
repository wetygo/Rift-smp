import os, zipfile
root = os.path.join(os.path.dirname(__file__), "..")
out = os.path.join(root, "dist", "RIFTBREK_READY_WORLD_region_files.zip")
readme = """RIFTBREK ready-made world files (Minecraft Java 1.21.11)
1. Create a NEW creative world (cheats on), world type Superflat -> preset 'The Void'. Quit to the title screen.
2. Select the world -> Edit -> Open World Folder.
3. Copy the folders 'region' and 'entities' from this zip INTO that world folder (replace if asked).
4. Copy RIFTBREK_Vanguard_Datapack.zip (NOT extracted) into the world's 'datapacks' folder.
5. Open the world, then:  /setworldspawn 383 32 740   and   /tp @s 383 33 740
6. /function riftbrek:paste/init
   /function riftbrek:admin/origin {x:0,z:0}
   /function riftbrek:admin/verify          (expect 9 x PASS)
World placement: schematic local (x,y,z) = world (x, y-64, z); origin = world X0 Z0.  Full guide: docs/PASTE_GUIDE.md
"""
with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as z:
    z.writestr("README_PLACE.txt", readme)
    for sub in ("region", "entities"):
        for fn in sorted(os.listdir(os.path.join(root, "dist", "ready_world", sub))):
            z.write(os.path.join(root, "dist", "ready_world", sub, fn), f"{sub}/{fn}")
print("zipped", out, os.path.getsize(out))
