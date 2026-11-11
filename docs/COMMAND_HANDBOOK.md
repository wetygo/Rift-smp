# RIFTBREK Vanguard - Command Handbook (generated from the real datapack)

Data pack format 94.1 (Minecraft Java 1.21.11). Every function in the pack is listed in section 5 and every public entry point in sections 1-4.
Numbering is stable: **C1.. = player commands, C20.. = operator commands, C60.. = command-block-only functions**.

> Permission model: `/function` needs gamemaster (OP level 2+). Players have **no** OP commands - they use `/trigger rb_req set N`. Doors, kit pads, sorters and farms are driven by command blocks inside the schematic, not by players.

## 1. Player commands (no OP needed)

`/trigger rb_req set <N>` - re-enabled for every player every tick; each action re-validates tags/scores server-side.

| # | command | what it does |
|---|---|---|
| C1 | `/trigger rb_req set 1` | **ID book** - Issues your identity book. Non-Veil: Minecraft + Discord username, faction, rank, clearance, credential id. Veil: anonymous operative code only. A book NEVER authorises anything. |
| C2 | `/trigger rb_req set 2` | **Faction kit** - Issues the kit of your own faction (10-minute cooldown; Royal bypasses). |
| C3 | `/trigger rb_req set 3` | **Public roster** - Lists every non-Veil member with Minecraft + Discord names. Veil is never listed. |
| C4 | `/trigger rb_req set 4` | **Leader registry** - Leader/Royal only: restricted Veil ledger (credential id + names). Output goes only to the caller. |
| C5 | `/trigger rb_req set 5` | **My status** - Your faction, rank, status and credential id. |
| C6 | `/trigger rb_req set 9` | **Help** - Shows the trigger list. |
| C7 | `/trigger rb_req set 11` | **FlameFrags-inspired kit** - Members only (design choice, not verified canon). |
| C8 | `/trigger rb_req set 12` | **Wemmbu-inspired kit** - Members only. |
| C9 | `/trigger rb_req set 13` | **TheobaldTheBird-inspired kit** - Members only. |
| C10 | `/trigger rb_req set 14` | **ParrotX2-inspired kit** - Members only. |
| C11 | `/trigger rb_req set 15` | **ManePear-inspired kit** - Members only. |
| C12 | `/trigger rb_req set 16` | **SpokeIsHere-inspired kit** - Members only. |

## 2. Operator commands (OP level 2+)

Macro functions take a compound argument. Use exact Minecraft names; the player must be online for `register`/`visitor`.

### C20. `riftbrek:admin/register`
- who: OP (level 2+)
- args: `{mc,discord,faction}`
- Registers an ONLINE player: assigns a credential id, faction tags, team, clearance 2, writes the registry record. faction = birds | unstables | abstracters | veil | archivist | wildcards.
- example: `/function riftbrek:admin/register {mc:"Steve",discord:"steve_discord",faction:"birds"}`

### C21. `riftbrek:admin/leader`
- who: OP
- args: `{mc}`
- Promotes a registered, un-revoked member to faction Leader (clearance 4).
- example: `/function riftbrek:admin/leader {mc:"Steve"}`

### C22. `riftbrek:admin/unleader`
- who: OP
- args: `{mc}`
- Removes leadership (back to clearance 2 unless Royal).
- example: `/function riftbrek:admin/unleader {mc:"Steve"}`

### C23. `riftbrek:admin/royal`
- who: OP
- args: `{mc}`
- Grants Royal clearance 5 (royal doors, lockdown-proof, kit cooldown bypass).
- example: `/function riftbrek:admin/royal {mc:"wetygo"}`

### C24. `riftbrek:admin/unroyal`
- who: OP
- args: `{mc}`
- Removes Royal clearance.
- example: `/function riftbrek:admin/unroyal {mc:"wetygo"}`

### C25. `riftbrek:admin/revoke`
- who: OP
- args: `{mc}`
- Full revocation: every faction/leader/royal/guest tag removed, rb_revoked added, clearance + credential = 0, team left, invisibility cleared, registry status = revoked.
- example: `/function riftbrek:admin/revoke {mc:"Steve"}`

### C26. `riftbrek:admin/revoke_credential`
- who: OP
- args: `{mc}`
- Suspends ONLY the credential (rb_cred = 0). Tags stay so the player can be restored.
- example: `/function riftbrek:admin/revoke_credential {mc:"Steve"}`

### C27. `riftbrek:admin/restore`
- who: OP
- args: `{mc}`
- Restores a suspended credential. Refuses revoked players (re-register them).
- example: `/function riftbrek:admin/restore {mc:"Steve"}`

### C28. `riftbrek:admin/visitor`
- who: OP
- args: `{mc}`
- 10-minute visitor pass (12000 ONLINE ticks, clearance 1). Ignored for members.
- example: `/function riftbrek:admin/visitor {mc:"Guest123"}`

### C29. `riftbrek:admin/lockdown_on`
- who: OP
- args: `-`
- Emergency lockdown: every command-block door closes except royal-tier doors; royal players still pass everything.
- example: `/function riftbrek:admin/lockdown_on`

### C30. `riftbrek:admin/lockdown_off`
- who: OP
- args: `-`
- Lifts lockdown.
- example: `/function riftbrek:admin/lockdown_off`

### C31. `riftbrek:admin/incident`
- who: OP
- args: `{mc}`
- Increments the player's rb_incident counter.
- example: `/function riftbrek:admin/incident {mc:"Steve"}`

### C32. `riftbrek:admin/whois`
- who: OP
- args: `{id}`
- Prints the FULL registry record (including Veil real names) to the operator only.
- example: `/function riftbrek:admin/whois {id:1001}`

### C33. `riftbrek:admin/gate_test`
- who: run AS the player
- args: `-`
- Shows which door tiers the player passes right now.
- example: `/execute as Steve run function riftbrek:admin/gate_test`

### C34. `riftbrek:admin/reset_cooldown`
- who: run AS the player
- args: `-`
- Resets the kit cooldown for that player.
- example: `/execute as Steve run function riftbrek:admin/reset_cooldown`

### C35. `riftbrek:admin/origin`
- who: OP
- args: `{x,z}`
- Stores the world X/Z where you pasted schematic local (0,0). Needed by verify/forceload.
- example: `/function riftbrek:admin/origin {x:1000,z:-500}`

### C36. `riftbrek:admin/verify`
- who: OP
- args: `-`
- Checks 9 signature blocks of the pasted schematic and prints PASS/FAIL for each (chunks must be loaded).
- example: `/function riftbrek:admin/verify`

### C37. `riftbrek:admin/forceload`
- who: OP
- args: `-`
- Force-loads sorters, industry, synthesis hall, blimp lane and checkpoint (after admin/origin).
- example: `/function riftbrek:admin/forceload`

### C38. `riftbrek:admin/forceload_off`
- who: OP
- args: `-`
- Removes those force-loaded chunks.
- example: `/function riftbrek:admin/forceload_off`

### C39. `riftbrek:admin/blimp_on`
- who: OP
- args: `-`
- Spawns the experimental airship at dock A and starts its route.
- example: `/function riftbrek:admin/blimp_on`

### C40. `riftbrek:admin/blimp_off`
- who: OP
- args: `-`
- Removes the airship.
- example: `/function riftbrek:admin/blimp_off`

### C41. `riftbrek:admin/recover`
- who: OP
- args: `-`
- Admin recovery: re-runs load (objectives, teams, storage defaults). Never resets player data.
- example: `/function riftbrek:admin/recover`

## 3. Faction kit functions (OP, or called by a kit pad)

- `riftbrek:kit/birds` - run AS a The Biggest Birds member: `/execute as Name run function riftbrek:kit/birds`. Shield banner colour: purple. Needs faction tag + active credential, 10-minute cooldown.
- `riftbrek:kit/unstables` - run AS a The Unstables member: `/execute as Name run function riftbrek:kit/unstables`. Shield banner colour: blue. Needs faction tag + active credential, 10-minute cooldown.
- `riftbrek:kit/abstracters` - run AS a Abstracters member: `/execute as Name run function riftbrek:kit/abstracters`. Shield banner colour: black. Needs faction tag + active credential, 10-minute cooldown.
- `riftbrek:kit/veil` - run AS a Veil member: `/execute as Name run function riftbrek:kit/veil`. Shield banner colour: gray. Needs faction tag + active credential, 10-minute cooldown.
- `riftbrek:kit/archivist` - run AS a The Archivist member: `/execute as Name run function riftbrek:kit/archivist`. Shield banner colour: white. Needs faction tag + active credential, 10-minute cooldown.
- `riftbrek:kit/wildcards` - run AS a Wildcards member: `/execute as Name run function riftbrek:kit/wildcards`. Shield banner colour: light_blue. Needs faction tag + active credential, 10-minute cooldown.
- `riftbrek:kit/creator_flame` - any active member.
- `riftbrek:kit/creator_wemmbu` - any active member.
- `riftbrek:kit/creator_theobald` - any active member.
- `riftbrek:kit/creator_parrot` - any active member.
- `riftbrek:kit/creator_manepear` - any active member.
- `riftbrek:kit/creator_spoke` - any active member.
- `riftbrek:book/issue`, `riftbrek:registry/public`, `riftbrek:registry/self`, `riftbrek:registry/leader_private` - run AS the player (the trigger calls these).

## 4. Command-block-only functions (called by blocks inside the schematic - not typed by anyone)

- C60. `riftbrek:door/abstracters`
- C61. `riftbrek:door/abstracters_w12`
- C62. `riftbrek:door/abstracters_w6`
- C63. `riftbrek:door/archivist`
- C64. `riftbrek:door/archivist_w12`
- C65. `riftbrek:door/archivist_w6`
- C66. `riftbrek:door/birds`
- C67. `riftbrek:door/birds_w12`
- C68. `riftbrek:door/birds_w6`
- C69. `riftbrek:door/leader`
- C70. `riftbrek:door/leader_w12`
- C71. `riftbrek:door/leader_w6`
- C72. `riftbrek:door/member`
- C73. `riftbrek:door/member_w12`
- C74. `riftbrek:door/member_w6`
- C75. `riftbrek:door/public`
- C76. `riftbrek:door/public_w12`
- C77. `riftbrek:door/public_w6`
- C78. `riftbrek:door/royal`
- C79. `riftbrek:door/royal_w12`
- C80. `riftbrek:door/royal_w6`
- C81. `riftbrek:door/unstables`
- C82. `riftbrek:door/unstables_w12`
- C83. `riftbrek:door/unstables_w6`
- C84. `riftbrek:door/veil`
- C85. `riftbrek:door/veil_w12`
- C86. `riftbrek:door/veil_w6`
- C87. `riftbrek:door/wildcards`
- C88. `riftbrek:door/wildcards_w12`
- C89. `riftbrek:door/wildcards_w6`
- C90. `riftbrek:industry/pulse_crafter`
- C91. `riftbrek:industry/run_farm_beetroot`
- C92. `riftbrek:industry/run_farm_carrots`
- C93. `riftbrek:industry/run_farm_potatoes`
- C94. `riftbrek:industry/run_farm_wheat`
- C95. `riftbrek:kit/pad_abstracters`
- C96. `riftbrek:kit/pad_archivist`
- C97. `riftbrek:kit/pad_birds`
- C98. `riftbrek:kit/pad_creator_flame`
- C99. `riftbrek:kit/pad_creator_manepear`
- C100. `riftbrek:kit/pad_creator_parrot`
- C101. `riftbrek:kit/pad_creator_spoke`
- C102. `riftbrek:kit/pad_creator_theobald`
- C103. `riftbrek:kit/pad_creator_wemmbu`
- C104. `riftbrek:kit/pad_unstables`
- C105. `riftbrek:kit/pad_veil`
- C106. `riftbrek:kit/pad_wildcards`
- C107. `riftbrek:storage/sort_a`
- C108. `riftbrek:storage/sort_b`
- C109. `riftbrek:zone/cbs_eject`
- C110. `riftbrek:zone/cbs_hit`
- C111. `riftbrek:zone/chunkban`
- C112. `riftbrek:zone/lockdown_siren`
- C113. `riftbrek:zone/visible`
- C114. `riftbrek:zone/visible_wide`

## 5. Full function index (what is public vs internal)

| function | class |
|---|---|
| `riftbrek:admin/_clear_roles` | internal - do not call by hand |
| `riftbrek:admin/_faction_abstracters` | internal - do not call by hand |
| `riftbrek:admin/_faction_archivist` | internal - do not call by hand |
| `riftbrek:admin/_faction_birds` | internal - do not call by hand |
| `riftbrek:admin/_faction_unstables` | internal - do not call by hand |
| `riftbrek:admin/_faction_veil` | internal - do not call by hand |
| `riftbrek:admin/_faction_wildcards` | internal - do not call by hand |
| `riftbrek:admin/_newid` | internal - do not call by hand |
| `riftbrek:admin/_setrank` | internal - do not call by hand |
| `riftbrek:admin/_setrank2` | internal - do not call by hand |
| `riftbrek:admin/_setstatus` | internal - do not call by hand |
| `riftbrek:admin/_setstatus2` | internal - do not call by hand |
| `riftbrek:admin/_write` | internal - do not call by hand |
| `riftbrek:admin/blimp_off` | public (player/OP) |
| `riftbrek:admin/blimp_on` | public (player/OP) |
| `riftbrek:admin/forceload` | public (player/OP) |
| `riftbrek:admin/forceload_do` | internal - do not call by hand |
| `riftbrek:admin/forceload_off` | public (player/OP) |
| `riftbrek:admin/forceload_remove_do` | internal - do not call by hand |
| `riftbrek:admin/gate_test` | public (player/OP) |
| `riftbrek:admin/incident` | public (player/OP) |
| `riftbrek:admin/leader` | public (player/OP) |
| `riftbrek:admin/leader_apply` | internal - do not call by hand |
| `riftbrek:admin/lockdown_off` | public (player/OP) |
| `riftbrek:admin/lockdown_on` | public (player/OP) |
| `riftbrek:admin/origin` | public (player/OP) |
| `riftbrek:admin/recover` | public (player/OP) |
| `riftbrek:admin/register` | public (player/OP) |
| `riftbrek:admin/register_apply` | internal - do not call by hand |
| `riftbrek:admin/reset_cooldown` | public (player/OP) |
| `riftbrek:admin/restore` | public (player/OP) |
| `riftbrek:admin/restore_apply` | internal - do not call by hand |
| `riftbrek:admin/revoke` | public (player/OP) |
| `riftbrek:admin/revoke_apply` | internal - do not call by hand |
| `riftbrek:admin/revoke_credential` | public (player/OP) |
| `riftbrek:admin/royal` | public (player/OP) |
| `riftbrek:admin/royal_apply` | internal - do not call by hand |
| `riftbrek:admin/suspend_apply` | internal - do not call by hand |
| `riftbrek:admin/unleader` | public (player/OP) |
| `riftbrek:admin/unleader_apply` | internal - do not call by hand |
| `riftbrek:admin/unroyal` | public (player/OP) |
| `riftbrek:admin/unroyal_apply` | internal - do not call by hand |
| `riftbrek:admin/verify` | public (player/OP) |
| `riftbrek:admin/verify_do` | internal - do not call by hand |
| `riftbrek:admin/visitor` | public (player/OP) |
| `riftbrek:admin/visitor_apply` | internal - do not call by hand |
| `riftbrek:admin/visitor_grant` | internal - do not call by hand |
| `riftbrek:admin/whois` | public (player/OP) |
| `riftbrek:blimp/board` | internal - do not call by hand |
| `riftbrek:blimp/left` | internal - do not call by hand |
| `riftbrek:blimp/mount` | internal - do not call by hand |
| `riftbrek:blimp/move_n` | internal - do not call by hand |
| `riftbrek:blimp/move_s` | internal - do not call by hand |
| `riftbrek:blimp/next` | internal - do not call by hand |
| `riftbrek:blimp/run` | internal - do not call by hand |
| `riftbrek:blimp/spawn` | internal - do not call by hand |
| `riftbrek:blimp/tick` | internal - do not call by hand |
| `riftbrek:book/fetch` | internal - do not call by hand |
| `riftbrek:book/give_member` | internal - do not call by hand |
| `riftbrek:book/give_veil` | internal - do not call by hand |
| `riftbrek:book/give_visitor` | internal - do not call by hand |
| `riftbrek:book/issue` | public (player/OP) |
| `riftbrek:door/abstracters` | command-block only |
| `riftbrek:door/abstracters_w12` | command-block only |
| `riftbrek:door/abstracters_w6` | command-block only |
| `riftbrek:door/archivist` | command-block only |
| `riftbrek:door/archivist_w12` | command-block only |
| `riftbrek:door/archivist_w6` | command-block only |
| `riftbrek:door/birds` | command-block only |
| `riftbrek:door/birds_w12` | command-block only |
| `riftbrek:door/birds_w6` | command-block only |
| `riftbrek:door/leader` | command-block only |
| `riftbrek:door/leader_w12` | command-block only |
| `riftbrek:door/leader_w6` | command-block only |
| `riftbrek:door/member` | command-block only |
| `riftbrek:door/member_w12` | command-block only |
| `riftbrek:door/member_w6` | command-block only |
| `riftbrek:door/public` | command-block only |
| `riftbrek:door/public_w12` | command-block only |
| `riftbrek:door/public_w6` | command-block only |
| `riftbrek:door/royal` | command-block only |
| `riftbrek:door/royal_w12` | command-block only |
| `riftbrek:door/royal_w6` | command-block only |
| `riftbrek:door/unstables` | command-block only |
| `riftbrek:door/unstables_w12` | command-block only |
| `riftbrek:door/unstables_w6` | command-block only |
| `riftbrek:door/veil` | command-block only |
| `riftbrek:door/veil_w12` | command-block only |
| `riftbrek:door/veil_w6` | command-block only |
| `riftbrek:door/wildcards` | command-block only |
| `riftbrek:door/wildcards_w12` | command-block only |
| `riftbrek:door/wildcards_w6` | command-block only |
| `riftbrek:industry/farm_beetroot` | internal - do not call by hand |
| `riftbrek:industry/farm_carrots` | internal - do not call by hand |
| `riftbrek:industry/farm_potatoes` | internal - do not call by hand |
| `riftbrek:industry/farm_tick` | internal - do not call by hand |
| `riftbrek:industry/farm_wheat` | internal - do not call by hand |
| `riftbrek:industry/pulse_crafter` | command-block only |
| `riftbrek:industry/run_farm_beetroot` | command-block only |
| `riftbrek:industry/run_farm_carrots` | command-block only |
| `riftbrek:industry/run_farm_potatoes` | command-block only |
| `riftbrek:industry/run_farm_wheat` | command-block only |
| `riftbrek:industry/synth_blaze` | internal - do not call by hand |
| `riftbrek:industry/synth_bones` | internal - do not call by hand |
| `riftbrek:industry/synth_flesh` | internal - do not call by hand |
| `riftbrek:industry/synth_gunpowder` | internal - do not call by hand |
| `riftbrek:industry/synth_iron` | internal - do not call by hand |
| `riftbrek:industry/synth_pearls` | internal - do not call by hand |
| `riftbrek:industry/synth_string` | internal - do not call by hand |
| `riftbrek:industry/synth_witch` | internal - do not call by hand |
| `riftbrek:kit/_cooldown_check` | internal - do not call by hand |
| `riftbrek:kit/_done` | internal - do not call by hand |
| `riftbrek:kit/abstracters` | public (player/OP) |
| `riftbrek:kit/archivist` | public (player/OP) |
| `riftbrek:kit/birds` | public (player/OP) |
| `riftbrek:kit/creator_flame` | public (player/OP) |
| `riftbrek:kit/creator_manepear` | public (player/OP) |
| `riftbrek:kit/creator_parrot` | public (player/OP) |
| `riftbrek:kit/creator_spoke` | public (player/OP) |
| `riftbrek:kit/creator_theobald` | public (player/OP) |
| `riftbrek:kit/creator_wemmbu` | public (player/OP) |
| `riftbrek:kit/internal_abstracters` | internal - do not call by hand |
| `riftbrek:kit/internal_archivist` | internal - do not call by hand |
| `riftbrek:kit/internal_birds` | internal - do not call by hand |
| `riftbrek:kit/internal_creator_flame` | internal - do not call by hand |
| `riftbrek:kit/internal_creator_manepear` | internal - do not call by hand |
| `riftbrek:kit/internal_creator_parrot` | internal - do not call by hand |
| `riftbrek:kit/internal_creator_spoke` | internal - do not call by hand |
| `riftbrek:kit/internal_creator_theobald` | internal - do not call by hand |
| `riftbrek:kit/internal_creator_wemmbu` | internal - do not call by hand |
| `riftbrek:kit/internal_unstables` | internal - do not call by hand |
| `riftbrek:kit/internal_veil` | internal - do not call by hand |
| `riftbrek:kit/internal_wildcards` | internal - do not call by hand |
| `riftbrek:kit/pad_abstracters` | command-block only |
| `riftbrek:kit/pad_archivist` | command-block only |
| `riftbrek:kit/pad_birds` | command-block only |
| `riftbrek:kit/pad_creator_flame` | command-block only |
| `riftbrek:kit/pad_creator_manepear` | command-block only |
| `riftbrek:kit/pad_creator_parrot` | command-block only |
| `riftbrek:kit/pad_creator_spoke` | command-block only |
| `riftbrek:kit/pad_creator_theobald` | command-block only |
| `riftbrek:kit/pad_creator_wemmbu` | command-block only |
| `riftbrek:kit/pad_unstables` | command-block only |
| `riftbrek:kit/pad_veil` | command-block only |
| `riftbrek:kit/pad_wildcards` | command-block only |
| `riftbrek:kit/request` | public (player/OP) |
| `riftbrek:kit/unstables` | public (player/OP) |
| `riftbrek:kit/veil` | public (player/OP) |
| `riftbrek:kit/wildcards` | public (player/OP) |
| `riftbrek:load` | internal - do not call by hand |
| `riftbrek:log/entry_kit` | internal - do not call by hand |
| `riftbrek:log/entry_leader` | internal - do not call by hand |
| `riftbrek:log/entry_register` | internal - do not call by hand |
| `riftbrek:log/entry_revoke` | internal - do not call by hand |
| `riftbrek:log/entry_royal` | internal - do not call by hand |
| `riftbrek:registry/fetch_show` | internal - do not call by hand |
| `riftbrek:registry/fetch_show_veil` | internal - do not call by hand |
| `riftbrek:registry/iter` | internal - do not call by hand |
| `riftbrek:registry/iter_veil` | internal - do not call by hand |
| `riftbrek:registry/leader_private` | public (player/OP) |
| `riftbrek:registry/public` | public (player/OP) |
| `riftbrek:registry/self` | public (player/OP) |
| `riftbrek:registry/self_fetch` | internal - do not call by hand |
| `riftbrek:registry/show` | internal - do not call by hand |
| `riftbrek:registry/show_full` | internal - do not call by hand |
| `riftbrek:registry/show_self` | internal - do not call by hand |
| `riftbrek:registry/show_veil` | internal - do not call by hand |
| `riftbrek:registry/veil_list` | internal - do not call by hand |
| `riftbrek:req/dispatch` | public (player/OP) |
| `riftbrek:req/help` | public (player/OP) |
| `riftbrek:setup/gamerules` | internal - do not call by hand |
| `riftbrek:setup/team_veil` | internal - do not call by hand |
| `riftbrek:setup/teams` | internal - do not call by hand |
| `riftbrek:storage/a/c00_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c00_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c00_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c00_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c00_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c01_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c01_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c01_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c01_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c01_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c02_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c02_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c02_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c02_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c02_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c03_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c03_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c03_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c03_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c03_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c04_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c04_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c04_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c04_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c04_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c05_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c05_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c05_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c05_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c05_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c06_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c06_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c06_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c06_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c06_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c07_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c07_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c07_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c07_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c07_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c08_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c08_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c08_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c08_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c08_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c09_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c09_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c09_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c09_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c09_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c10_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c10_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c10_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c10_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c10_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c11_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c11_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c11_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c11_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c11_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c12_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c12_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c12_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c12_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c12_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c13_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c13_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c13_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c13_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c13_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c14_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c14_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c14_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c14_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c14_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c15_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c15_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c15_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c15_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c15_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c16_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c16_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c16_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c16_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c16_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c00_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c00_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c00_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c00_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c00_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c01_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c01_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c01_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c01_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c01_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c02_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c02_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c02_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c02_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c02_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c03_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c03_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c03_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c03_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c03_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c04_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c04_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c04_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c04_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c04_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c05_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c05_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c05_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c05_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c05_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c06_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c06_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c06_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c06_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c06_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c07_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c07_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c07_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c07_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c07_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c08_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c08_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c08_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c08_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c08_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c09_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c09_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c09_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c09_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c09_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c10_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c10_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c10_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c10_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c10_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c11_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c11_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c11_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c11_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c11_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c12_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c12_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c12_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c12_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c12_s4` | internal - do not call by hand |
| `riftbrek:storage/hall_a_slot_0` | internal - do not call by hand |
| `riftbrek:storage/hall_a_slot_1` | internal - do not call by hand |
| `riftbrek:storage/hall_a_slot_2` | internal - do not call by hand |
| `riftbrek:storage/hall_a_slot_3` | internal - do not call by hand |
| `riftbrek:storage/hall_a_slot_4` | internal - do not call by hand |
| `riftbrek:storage/hall_b_slot_0` | internal - do not call by hand |
| `riftbrek:storage/hall_b_slot_1` | internal - do not call by hand |
| `riftbrek:storage/hall_b_slot_2` | internal - do not call by hand |
| `riftbrek:storage/hall_b_slot_3` | internal - do not call by hand |
| `riftbrek:storage/hall_b_slot_4` | internal - do not call by hand |
| `riftbrek:storage/move` | internal - do not call by hand |
| `riftbrek:storage/sort_a` | command-block only |
| `riftbrek:storage/sort_b` | command-block only |
| `riftbrek:tick` | internal - do not call by hand |
| `riftbrek:visitor/expire` | internal - do not call by hand |
| `riftbrek:zone/cbs_eject` | command-block only |
| `riftbrek:zone/cbs_hit` | command-block only |
| `riftbrek:zone/chunkban` | command-block only |
| `riftbrek:zone/lockdown_siren` | command-block only |
| `riftbrek:zone/visible` | command-block only |
| `riftbrek:zone/visible_wide` | command-block only |

## 6. Admin recovery & troubleshooting

| symptom | fix |
|---|---|
| Doors never open | Command blocks disabled: set `enable-command-block=true` in `server.properties` and restart. In singleplayer: Open to LAN / cheats on. |
| Doors/sorters dead far from you | Command blocks only run in loaded chunks. Stand nearby or `/forceload add <x1> <z1> <x2> <z2>` over the module (see MODULE_INDEX). |
| Chat spam from command blocks | `/gamerule command_block_output false` (1.21.11 name). The pack tries to set it on load. |
| Player locked out / wrong rank | `/function riftbrek:admin/revoke {mc:"Name"}` then `register` again. Manual: `/tag Name list`, `/scoreboard players get Name rb_clear`. |
| Lockdown stuck on | `/function riftbrek:admin/lockdown_off` (or `/scoreboard players set #GLOBAL rb_lock 0`). |
| Door slot stuck open/closed | The slot is the block directly below each gate's command block: set `iron_bars` (closed) / `redstone_block` (open) by hand. |
| Kit says cooldown | `/execute as Name run function riftbrek:admin/reset_cooldown`. |
| Scoreboard/teams missing after update | `/function riftbrek:admin/recover` (does not touch player data). |
| Wipe EVERYTHING (destructive!) | `/scoreboard objectives remove rb_clear` ... for each rb_* objective, `/data remove storage riftbrek:registry players`, `/data remove storage riftbrek:log entries`, then `/reload`. |
| Sorter tray stuck (alarm lamp lit) | All five tray slots hold items that no category chest could take: empty the MISC chests or add chests; then the tray drains by itself. |
| Reload error mentioning `setup/gamerules` | Harmless: run `/gamerule command_block_output false` yourself. |

