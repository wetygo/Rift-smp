# Wind-charged chicken launcher (real redstone, no command blocks)

`tools/riftbrek/build_launcher.py`. Placed in Ithaca City at local x640 z430 (world X12928 Z8622 with the default origin).

**What it does.** One button starts three repeater delay lines. A hopper-fed dispenser drops a **chicken spawn egg** into a one-block cell (open on the east side for the rider); 0.8 s later a second dispenser throws a **splash potion of Wind Charging** at it; ~1.2 s after that a third throws a **splash potion of Harming II (Instant Damage II)**. The chicken dies while wind-charged and its wind burst throws whoever stands in the open cell (walk in from the east). Each dispenser is fed by a hopper from a chest (27 stacks): refill the chests, nothing else.

**Tested on a real 1.21.11 server (no player available, so a zombie with zero walking speed stood in for one):** powering the circuit spawns a chicken for ~1.3 s, then the zombie standing in the cell is thrown from y 32 to y ~35.6 (about 3.5 blocks) and lands back. Same result in the HQ (two launchers x4 per wing, world 8772/32/8292 + k*26) and in Ithaca (12928/32/8622).

**Two bugs found by testing, both fixed:**
1. Every repeater was originally placed with `facing` along the signal flow. A repeater's `facing` points toward its *input*, so the circuit never fired.
2. The first version put a glass roof over the cell for the rider to stand on. A wind burst is an explosion and **any block between the chicken and the rider, even glass, blocks it completely** (tested: air launches, glass / tinted glass do not, iron bars launch ~1 block). The roof is gone: you now **walk into the open cell from the east (3-block corridor) and stand in it**; the chicken spawns at your feet.

**Not verified / caveats**
- Not tried with a real player. The Harming II splash lands in the cell you stand in, so a player takes the splash damage at close range (up to ~6 hearts with no armour or Resistance; wear armour or drink Resistance). Undead mobs are healed by it instead.
- A ~3-4 block launch is what a single wind burst gives (measured); it is not the 1,000-block elytra pad.
- The button must be pressed by hand; the circuit re-arms after the lines clear (about 3 s).
