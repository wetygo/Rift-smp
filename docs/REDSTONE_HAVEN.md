# Redstone Haven (Ithaca City)

The ground floor of the industrial redstone district (x 94..156, z 337..362 local; walk in from the industrial hall) is a hall of **real vanilla redstone, no command blocks**. Teleport: `/tp @s 12413 32 8537`.

| module | what it does | how to use |
|---|---|---|
| Logic lab | NOT, OR, AND, NAND, NOR built from dust, solid blocks and redstone torches, each with its own levers and an output lamp | flip the levers, watch the lamp |
| Hopper clock | two hoppers pass one item back and forth (8-tick cooldown); a comparator reads it, a repeater restores full strength, 6 lamps blink ~every 0.8 s | nothing to do, it runs by itself |
| Fill meters (3) | chest -> comparator -> dust line -> a repeater and lamp per row; the lamps (zig-zagged left/right) show how full the chest is, 1 lamp per 1/14 | put items in or take them out of the chest |
| Piston curtain | one lever, a dust line behind six sticky pistons, a repeater powering each piston: the coloured wall slides out one block | flip the lever |

## Coordinates (world X Y Z, default origin 12288 / 8192)
| circuit | inputs | output |
|---|---|---|
| NOT gate | levers `12384 32 8547` | lamp `12390 32 8547` |
| OR gate | levers `12396 32 8547` , `12396 32 8549` | lamp `12402 32 8548` |
| AND gate | levers `12408 32 8547` , `12408 32 8551` | lamp `12416 32 8549` |
| NAND gate | levers `12420 32 8547` , `12420 32 8551` | lamp `12427 32 8549` |
| NOR gate | levers `12432 32 8547` , `12432 32 8549` | lamp `12441 32 8548` |
| Hopper clock | (runs itself) | lamps under the dust line starting `12384 31 8537` |
| METER 5/27 | chest `12406 32 8530` | 14 lamps, zig-zag beside the dust line |
| METER 13/27 | chest `12416 32 8530` | 14 lamps, zig-zag beside the dust line |
| METER 24/27 | chest `12426 32 8530` | 14 lamps, zig-zag beside the dust line |
| Piston curtain | lever `12442 287 8288` | pistons at X 12440 |

## Tested on a real Minecraft 1.21.11 server
`tools/haven_livetest.py` (uses `docs/haven_tests.json`) replays the circuits: for every gate it flips the levers through every input combination and reads the lamp back, plus the **settled all-off state** before anything is touched; it samples the clock lamps for 8 s, checks each meter's lit-lamp count before and after taking a stack out of the chest, and checks that all 6 pistons slide out and back. Result: **all 29 checks PASS** (5 gates incl. initial states, clock, 3 meters incl. the live update, piston curtain).

Not a player test: nobody has walked or clicked in it, and the server was run with the haven chunks force-loaded.

## Things the testing taught (kept in the generator comments)
- A schematic is **not** block-updated when pasted, so every circuit is written in its settled all-levers-off state (torch `lit`, dust `power`, lamp `lit`, repeater `powered`); the first test run proved those values.
- A repeater/comparator `facing` points toward its **input**.
- Redstone dust on top of a piston **pops off** when the piston extends: power pistons with repeaters beside them instead.
- A redstone lamp that is strongly powered (by a repeater) **lights the lamps touching it**; the meter lamps are zig-zagged so none touch.
- A lever must be at the same height as the dust it feeds.
