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
PACK=../datapack/RIFTBREK_Vanguard_Datapack
{
  echo "== build: $(date -u +%Y-%m-%dT%H:%MZ)   (static analysis / model tests only - NOT run in Minecraft)"
  echo "== validate"; python3 run_validate.py $LIT $PACK
  echo "== walkability (doors counted open)"; python3 reach.py $LIT | grep -E "^(OK|FAIL)|labels"
  echo "== access-logic model test"; python3 model_test.py $PACK
} | tee ../docs/TEST_RESULTS_AUTO.txt
python3 make_docs.py
python3 previews.py $LIT ../docs/previews
python3 bundle.py
