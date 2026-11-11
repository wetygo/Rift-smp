# macro: x,z = schematic origin (admin/origin).  Run: /function riftbrek:admin/verify
tellraw @s {"text":"[RIFTBREK] paste check (PASS = expected block found):","color":"light_purple"}
$execute positioned $(x) 31 $(z) if block ~100 ~ ~100 minecraft:grass_block run tellraw @s {"text":"PASS  ground (grass) at local 100,95,100","color":"green"}
$execute positioned $(x) 31 $(z) unless block ~100 ~ ~100 minecraft:grass_block run tellraw @s {"text":"FAIL  ground (grass) at local 100,95,100 (chunk not loaded, wrong origin, or not pasted)","color":"red"}
$execute positioned $(x) 35 $(z) if block ~378 ~ ~760 minecraft:repeating_command_block run tellraw @s {"text":"PASS  gatehouse door controller","color":"green"}
$execute positioned $(x) 35 $(z) unless block ~378 ~ ~760 minecraft:repeating_command_block run tellraw @s {"text":"FAIL  gatehouse door controller (chunk not loaded, wrong origin, or not pasted)","color":"red"}
$execute positioned $(x) 35 $(z) if block ~378 ~ ~366 minecraft:repeating_command_block run tellraw @s {"text":"PASS  citadel entrance controller","color":"green"}
$execute positioned $(x) 35 $(z) unless block ~378 ~ ~366 minecraft:repeating_command_block run tellraw @s {"text":"FAIL  citadel entrance controller (chunk not loaded, wrong origin, or not pasted)","color":"red"}
$execute positioned $(x) 30 $(z) if block ~250 ~ ~78 minecraft:repeating_command_block run tellraw @s {"text":"PASS  blimp controller (dock A)","color":"green"}
$execute positioned $(x) 30 $(z) unless block ~250 ~ ~78 minecraft:repeating_command_block run tellraw @s {"text":"FAIL  blimp controller (dock A) (chunk not loaded, wrong origin, or not pasted)","color":"red"}
$execute positioned $(x) -4 $(z) if block ~560 ~ ~472 minecraft:repeating_command_block run tellraw @s {"text":"PASS  sorter A controller (B5)","color":"green"}
$execute positioned $(x) -4 $(z) unless block ~560 ~ ~472 minecraft:repeating_command_block run tellraw @s {"text":"FAIL  sorter A controller (B5) (chunk not loaded, wrong origin, or not pasted)","color":"red"}
$execute positioned $(x) -12 $(z) if block ~560 ~ ~520 minecraft:repeating_command_block run tellraw @s {"text":"PASS  sorter B controller (B6)","color":"green"}
$execute positioned $(x) -12 $(z) unless block ~560 ~ ~520 minecraft:repeating_command_block run tellraw @s {"text":"FAIL  sorter B controller (B6) (chunk not loaded, wrong origin, or not pasted)","color":"red"}
$execute positioned $(x) -55 $(z) if block ~220 ~ ~300 minecraft:repeating_command_block run tellraw @s {"text":"PASS  synthesis unit (B11)","color":"green"}
$execute positioned $(x) -55 $(z) unless block ~220 ~ ~300 minecraft:repeating_command_block run tellraw @s {"text":"FAIL  synthesis unit (B11) (chunk not loaded, wrong origin, or not pasted)","color":"red"}
$execute positioned $(x) 202 $(z) if block ~383 ~ ~271 minecraft:black_concrete run tellraw @s {"text":"PASS  great spire tip region (citadel)","color":"green"}
$execute positioned $(x) 202 $(z) unless block ~383 ~ ~271 minecraft:black_concrete run tellraw @s {"text":"FAIL  great spire tip region (citadel) (chunk not loaded, wrong origin, or not pasted)","color":"red"}
$execute positioned $(x) 42 $(z) if block ~760 ~ ~760 minecraft:polished_blackstone_bricks run tellraw @s {"text":"PASS  south-east corner tower base","color":"green"}
$execute positioned $(x) 42 $(z) unless block ~760 ~ ~760 minecraft:polished_blackstone_bricks run tellraw @s {"text":"FAIL  south-east corner tower base (chunk not loaded, wrong origin, or not pasted)","color":"red"}
