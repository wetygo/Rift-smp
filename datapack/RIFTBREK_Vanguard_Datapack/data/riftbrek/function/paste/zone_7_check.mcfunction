# zone 7 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1551 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1567 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1583 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1599 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1615 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1630 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1647 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1663 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1679 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1695 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1711 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1727 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1743 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1759 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1775 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1791 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1538 ~ ~23 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1554 ~ ~23 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1581 ~ ~16 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1589 ~ ~26 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1606 ~ ~28 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1620 ~ ~28 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1632 ~ ~16 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1648 ~ ~16 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~16 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1695 ~ ~22 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1709 ~ ~23 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1719 ~ ~28 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1732 ~ ~16 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1744 ~ ~16 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~16 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1776 ~ ~16 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1536 ~ ~44 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1558 ~ ~46 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1581 ~ ~32 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1588 ~ ~42 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1602 ~ ~39 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1617 ~ ~39 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1632 ~ ~32 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1648 ~ ~32 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~32 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1690 ~ ~33 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1699 ~ ~44 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1714 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1735 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1744 ~ ~32 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~32 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1776 ~ ~32 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1536 ~ ~60 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1564 ~ ~60 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~61 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1589 ~ ~58 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1606 ~ ~60 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1620 ~ ~60 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1632 ~ ~48 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1648 ~ ~48 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~48 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1690 ~ ~49 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1699 ~ ~60 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1724 ~ ~60 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1733 ~ ~60 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1744 ~ ~48 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~48 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1776 ~ ~48 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1536 ~ ~76 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1560 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1569 ~ ~75 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1589 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1606 ~ ~76 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1620 ~ ~76 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1632 ~ ~64 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1648 ~ ~64 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~64 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1690 ~ ~65 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1710 ~ ~77 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1724 ~ ~75 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1738 ~ ~75 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1744 ~ ~64 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~64 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1776 ~ ~64 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1536 ~ ~92 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1558 ~ ~91 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1579 ~ ~92 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1588 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1602 ~ ~87 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1617 ~ ~87 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1632 ~ ~80 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1648 ~ ~80 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~80 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1690 ~ ~81 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1699 ~ ~92 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1713 ~ ~91 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1735 ~ ~95 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1744 ~ ~80 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~80 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1776 ~ ~80 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1540 ~ ~98 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1567 ~ ~110 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1583 ~ ~111 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1589 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1606 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1620 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1632 ~ ~96 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1648 ~ ~96 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~96 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1690 ~ ~97 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1699 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1723 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1733 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1744 ~ ~96 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~96 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1776 ~ ~96 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1541 ~ ~112 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1555 ~ ~125 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~112 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1589 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1606 ~ ~124 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1620 ~ ~124 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1632 ~ ~112 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1648 ~ ~112 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~112 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1690 ~ ~113 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1704 ~ ~127 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1715 ~ ~127 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1732 ~ ~124 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1744 ~ ~112 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~112 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1776 ~ ~112 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1539 ~ ~140 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1560 ~ ~128 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~128 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1589 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1606 ~ ~140 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1620 ~ ~140 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1632 ~ ~128 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1648 ~ ~128 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~128 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1690 ~ ~129 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1711 ~ ~139 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1720 ~ ~140 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1735 ~ ~143 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1744 ~ ~128 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~128 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1776 ~ ~128 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1537 ~ ~145 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1552 ~ ~144 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~144 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1588 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1602 ~ ~151 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1617 ~ ~151 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1635 ~ ~157 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1656 ~ ~144 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1672 ~ ~144 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1692 ~ ~158 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1705 ~ ~153 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1715 ~ ~156 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1732 ~ ~156 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1748 ~ ~144 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1764 ~ ~144 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1785 ~ ~152 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1547 ~ ~167 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1552 ~ ~160 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~160 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1589 ~ ~170 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1606 ~ ~172 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1627 ~ ~166 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1645 ~ ~160 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1655 ~ ~174 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1677 ~ ~169 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1686 ~ ~169 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1711 ~ ~160 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1721 ~ ~172 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1740 ~ ~175 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1753 ~ ~171 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1775 ~ ~171 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1787 ~ ~167 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1536 ~ ~176 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1552 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1589 ~ ~186 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1606 ~ ~188 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1623 ~ ~178 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1634 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1648 ~ ~188 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1679 ~ ~188 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1695 ~ ~191 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1701 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1712 ~ ~177 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1734 ~ ~188 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1759 ~ ~191 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1762 ~ ~188 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1790 ~ ~187 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1536 ~ ~192 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1552 ~ ~192 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~192 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1588 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1602 ~ ~199 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1617 ~ ~199 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1638 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1655 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1671 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1687 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1696 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1718 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1735 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1750 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1767 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1783 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1536 ~ ~208 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1552 ~ ~208 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~208 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1589 ~ ~218 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1606 ~ ~220 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1620 ~ ~220 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~216 minecraft:podzol run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1646 ~ ~217 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~216 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1661 ~ ~217 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~216 minecraft:podzol run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1676 ~ ~217 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~216 minecraft:podzol run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1694 ~ ~217 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~216 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1696 ~ ~218 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1712 ~ ~216 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1741 ~ ~222 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1754 ~ ~215 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1770 ~ ~215 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1776 ~ ~208 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1536 ~ ~224 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1552 ~ ~224 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~224 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1589 ~ ~234 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1606 ~ ~236 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1620 ~ ~236 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~232 minecraft:podzol run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1647 ~ ~233 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~232 minecraft:podzol run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1661 ~ ~233 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~232 minecraft:podzol run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1676 ~ ~233 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~232 minecraft:podzol run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1694 ~ ~233 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~232 minecraft:podzol run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1696 ~ ~234 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1712 ~ ~234 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1728 ~ ~234 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1744 ~ ~234 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~224 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1776 ~ ~224 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1536 ~ ~240 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1552 ~ ~240 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~240 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1589 ~ ~250 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1606 ~ ~252 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1620 ~ ~252 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1636 ~ ~244 minecraft:podzol run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1636 ~ ~244 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1638 ~ ~250 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1652 ~ ~244 minecraft:podzol run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1652 ~ ~244 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1655 ~ ~250 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1668 ~ ~244 minecraft:podzol run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1668 ~ ~244 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1671 ~ ~250 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1684 ~ ~244 minecraft:podzol run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1684 ~ ~244 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1687 ~ ~250 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1700 ~ ~244 minecraft:podzol run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1700 ~ ~244 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1701 ~ ~250 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1727 ~ ~249 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1743 ~ ~249 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1759 ~ ~249 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~240 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1776 ~ ~240 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,15"}
tellraw @s [{"text":"[PASTE zone 7] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 7 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z7 rb_p 1
