import sys, os, zipfile
root = os.path.join(os.path.dirname(__file__), "..")
out = os.path.join(root, "dist", "RIFTBREK_Vanguard_FINAL_BUNDLE.zip")
files = [("dist/RIFTBREK_Vanguard_Headquarters_MASTER.litematic", "RIFTBREK_Vanguard_Headquarters_MASTER.litematic"),
         ("dist/RIFTBREK_Vanguard_Datapack.zip", "RIFTBREK_Vanguard_Datapack.zip"),
         ("README.md", "README.md")]
for n in ("ANNEX.md", "ANNEX_MAP.md", "INSTALL.md", "COMMAND_HANDBOOK.md", "MODULE_INDEX.md", "TEST_REPORT.md", "KNOWN_GAPS.md", "CREDITS.md", "TEST_RESULTS_AUTO.txt"):
    files.append((f"docs/{n}", f"docs/{n}"))
for n in os.listdir(os.path.join(root, "docs", "previews")):
    files.append((f"docs/previews/{n}", f"docs/previews/{n}"))
for n in sorted(os.listdir(os.path.join(root, "dist", "annex"))):
    files.append((f"dist/annex/{n}", f"annex/{n}"))
files.append(("docs/concept/RIFTBREK_concept.png", "docs/concept/RIFTBREK_concept.png"))
with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as z:
    for src, arc in files:
        z.write(os.path.join(root, src), arc)
print("bundle:", out, os.path.getsize(out), "bytes,", len(files), "files")
