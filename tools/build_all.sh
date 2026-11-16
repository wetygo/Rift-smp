#!/usr/bin/env bash
# Regenerates the datapack and the master schematic, runs every static check, regenerates docs/previews, and bundles the final ZIP.
set -euo pipefail
cd "$(dirname "$0")"
python3 -I -c "
import sys; sys.path.insert(0, '.')
from riftbrek import datapack, industry, build_main
P = datapack.build('../datapack/RIFTBREK_Vanguard_Datapack'); industry.add(P); P.write()
datapack.package('../datapack/RIFTBREK_Vanguard_Datapack', '../dist/RIFTBREK_Vanguard_Datapack.zip')
build_main.main('../dist')
"
LIT=../dist/RIFTBREK_Vanguard_Headquarters_MASTER.litematic
# imported builds (Wildezz / Storage Tech / Wave Bolt): set RIFTBREK_ANNEX_SRC to a folder holding the supplied .litematic files
if [ -n "${RIFTBREK_ANNEX_SRC:-}" ]; then
  python3 -I assemble.py $LIT "$RIFTBREK_ANNEX_SRC" --report ../docs/annex_placement.json
fi
PACK=../datapack/RIFTBREK_Vanguard_Datapack
# ready-made world files + paste kit (zone functions) -> data pack is re-zipped afterwards
python3 -I export_world.py $LIT ../dist/ready_world_tmp
rm -rf ../dist/ready_world && mkdir -p ../dist/ready_world && mv ../dist/ready_world_tmp/region ../dist/ready_world/region && mv ../dist/ready_world_tmp/entities ../dist/ready_world/entities && rm -rf ../dist/ready_world_tmp
python3 -I paste_kit.py $LIT $PACK
python3 -I -c "
import sys; sys.path.insert(0, '.')
from riftbrek import datapack
datapack.package('../datapack/RIFTBREK_Vanguard_Datapack', '../dist/RIFTBREK_Vanguard_Datapack.zip')
"
python3 -I simulate_paste.py ../dist/ready_world
python3 -I zip_world.py
{
  echo "== build: $(date -u +%Y-%m-%dT%H:%MZ)   (static analysis / model tests only - NOT run in Minecraft)"
  echo "== validate"; python3 run_validate.py $LIT $PACK
  echo "== walkability (doors counted open)"; python3 reach.py $LIT | grep -E "^(OK|FAIL)|labels"
  echo "== underground pockets not connected to the outside (must be 0)"; python3 diag_levels.py $LIT | tail -3
  echo "== access-logic model test"; python3 model_test.py $PACK
} | tee ../docs/TEST_RESULTS_AUTO.txt
python3 make_docs.py
python3 previews.py $LIT ../docs/previews
python3 bundle.py
