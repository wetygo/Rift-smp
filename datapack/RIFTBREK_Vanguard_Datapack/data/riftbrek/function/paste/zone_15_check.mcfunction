# zone 15 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1549 ~ ~263 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1552 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1576 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1597 ~ ~263 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1600 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"100,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1624 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1645 ~ ~263 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1648 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1672 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1693 ~ ~263 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1696 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1720 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1741 ~ ~263 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1744 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1768 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1789 ~ ~263 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1538 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1566 ~ ~279 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1572 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1586 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1614 ~ ~279 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"100,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1620 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1634 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1662 ~ ~279 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1668 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1682 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1710 ~ ~279 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1716 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1730 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1758 ~ ~279 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1764 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1778 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1544 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1565 ~ ~295 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1592 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1613 ~ ~295 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"100,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1616 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1640 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1661 ~ ~295 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1688 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1709 ~ ~295 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1712 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1736 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1757 ~ ~295 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1784 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1544 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1565 ~ ~311 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1592 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1613 ~ ~311 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"100,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1616 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1640 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1661 ~ ~311 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1688 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1709 ~ ~311 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1712 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1736 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1757 ~ ~311 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1784 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1544 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1565 ~ ~327 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1592 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1613 ~ ~327 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"100,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1616 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1640 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1661 ~ ~327 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1688 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1709 ~ ~327 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1712 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1736 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1757 ~ ~327 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1784 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1544 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1565 ~ ~343 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1592 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1613 ~ ~343 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"100,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1616 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1640 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1661 ~ ~343 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1688 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1709 ~ ~343 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1712 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1736 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1757 ~ ~343 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1784 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1544 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1565 ~ ~359 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1592 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1613 ~ ~359 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"100,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1616 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1640 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1661 ~ ~359 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1688 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1709 ~ ~359 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1712 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1736 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1757 ~ ~359 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1784 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1544 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1565 ~ ~375 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1592 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1613 ~ ~375 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"100,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1616 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1640 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1661 ~ ~375 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1688 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1709 ~ ~375 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1712 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1736 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1757 ~ ~375 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1784 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1544 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1565 ~ ~391 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1592 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1613 ~ ~391 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"100,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1616 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1640 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1661 ~ ~391 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1688 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1709 ~ ~391 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1712 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1736 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1757 ~ ~391 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1784 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1544 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1565 ~ ~407 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1592 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1613 ~ ~407 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"100,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1616 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1640 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1661 ~ ~407 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1688 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1709 ~ ~407 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1712 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1736 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1757 ~ ~407 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1784 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1544 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1565 ~ ~423 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1592 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1613 ~ ~423 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"100,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1616 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1640 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1661 ~ ~423 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1688 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1709 ~ ~423 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1712 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1736 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1757 ~ ~423 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1784 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1544 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1565 ~ ~439 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1568 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1592 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1613 ~ ~439 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"100,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1616 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1640 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1661 ~ ~439 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1688 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1709 ~ ~439 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1712 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1736 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1757 ~ ~439 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1784 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1541 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1557 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1573 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1589 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1605 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1621 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1637 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1653 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1669 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1685 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1701 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1717 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1733 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1749 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1765 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1781 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1541 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1557 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1573 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1589 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1605 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1621 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1637 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1653 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1669 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1685 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1701 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1717 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1733 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1749 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1765 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1781 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1541 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1557 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1573 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1588 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1605 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1618 ~ ~487 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1637 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1653 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1669 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1682 ~ ~488 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1701 ~ ~489 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1717 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1733 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1752 ~ ~487 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~482 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1787 ~ ~481 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1541 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"96,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1557 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"97,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1573 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"98,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1589 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"99,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1605 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"100,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1627 ~ ~497 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"101,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1632 ~ ~496 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"102,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1653 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"103,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1664 ~ ~496 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"104,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1691 ~ ~497 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"105,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1698 ~ ~510 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"106,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1712 ~ ~496 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"107,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1740 ~ ~498 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"108,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1748 ~ ~507 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"109,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1760 ~ ~508 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"110,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1781 ~ ~509 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"111,31"}
tellraw @s [{"text":"[PASTE zone 15] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 15 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z15 rb_p 1
