# Wind-charged chicken launcher (real redstone, no command blocks)

`tools/riftbrek/build_launcher.py`. Placed in Ithaca City at local x640 z430 (world X12928 Z8622 with the default origin).

**What it does.** One button starts three repeater delay lines. A hopper-fed dispenser drops a **chicken spawn egg** into a sealed one-block cell; 0.8 s later a second dispenser throws a **splash potion of Wind Charging** at it; ~1.2 s after that a third throws a **splash potion of Harming II (Instant Damage II)**. The chicken dies while wind-charged and its wind burst throws whatever stands on the glass platform above the cell. Each dispenser is fed by a hopper from a chest (27 stacks): refill the chests, nothing else.

**Tested on a real 1.21.11 server (no player available, so a zombie stood in for one):** powering the circuit spawned a chicken for ~1.2 s, then the zombie on the platform went from y 34 to y 48.3 (about 14 blocks) and landed back at 34.

**Bug found by that test:** the original file placed every repeater with `facing` pointing along the signal flow. In Minecraft a repeater's `facing` points toward its *input*, so all of them were backwards and the circuit never fired. All repeaters were flipped.

**Not verified / caveats**
- Not tried with a real player. The Harming II splash lands one block below the platform, so a player standing on it takes splash damage (distance-reduced; expect a few hearts). Undead mobs are healed by it instead.
- A ~14-block launch is what this design gives; it is not the 1,000-block elytra pad.
- The button must be pressed by hand; the circuit re-arms after the lines clear (about 3 s).
