# Member Quarters (BAT-style systems)

Location: HQ-local x 478..526, z 568..593 (east of the plaza), 3 floors + roof; **22 numbered rooms**, a lobby (member-tier door) and an **alarm control room** (leader-tier door). Ladders at both corridor ends reach the roof.

| system | how it works | what to do |
|---|---|---|
| **Player launcher** | Launch pads (roof of the quarters + 4 on the surface lawns around the plaza) fire a member **wearing an elytra** 1,000 blocks straight up (slow falling 6 s so you can open the wings). No elytra / not a member / revoked = nothing. | stand on the blue pad |
| **Alarm control room** | Wall panel of buttons: one per room (1-22), **ALL** and **RESET**. A room alarm rings a bell and shows a red title only to people inside that room; ALL rings every room. | press a button (leader-tier door) |
| **Emergency button** | A red-flagged button in every room: all members get a chat message + action-bar + bell: "room N sent an emergency signal"; that room rings too. | press the button in your room |
| **Book mail** | Each room has a **dispenser** (the mailbox). Put a written book in it whose **title (or anvil name) is another room's number** and it is moved to that room's dispenser (same slot; kept if the slot is taken; unknown numbers stay). The recipient gets an action-bar notice. | title the book "7" -> room 7 |
| **Privacy curtain** | Every room window = glass / **lava** / glass. The lever beside the window toggles it: ON = lava curtain, OFF = clear glass. | flip the lever |
| **Ruined vault** | B12 (`x 290..369, z 290..349`, local): a storage vault that was blown up - craters, rubble, scorched floor - but ~70 chests of treasure remain (diamond/emerald/gold/netherite blocks, nether stars, totems, elytra, dragon egg ...). | enter through the breach on the west wall |

Needs the schematic origin to be known to the pack for alarms: `/function riftbrek:admin/origin {x:..,z:..}` (rooms are located relative to it). Admin: `/function riftbrek:alarm/all`, `/function riftbrek:alarm/reset`.

Tested only by model/simulation (see `TEST_RESULTS_AUTO.txt`): the mail routing (9/9 cases incl. raw/plain titles, custom names, occupied slots), launch conditions, and the schematic wiring of every room (command blocks, dispensers, buttons, levers, lava fully sealed). **Not tested in the real game:** how Minecraft stores the book title/name (the pack matches four forms), lava behaviour next to glass, and the launch altitude.
