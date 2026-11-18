# zone 7 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"96,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"97,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1571 ~ ~15 minecraft:stone run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1592 ~ ~10 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1739 ~ ~13 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1536 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 59 $(z) if block ~1567 ~ ~31 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1571 ~ ~31 minecraft:polished_andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1598 ~ ~26 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1722 ~ ~30 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1728 ~ ~24 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 49 $(z) if block ~1757 ~ ~30 minecraft:polished_deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 55 $(z) if block ~1764 ~ ~31 minecraft:crimson_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 55 $(z) if block ~1782 ~ ~31 minecraft:crimson_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1536 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 153 $(z) if block ~1566 ~ ~43 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1571 ~ ~47 minecraft:stone run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1598 ~ ~42 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1706 ~ ~46 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1725 ~ ~47 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1734 ~ ~38 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 57 $(z) if block ~1759 ~ ~46 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 57 $(z) if block ~1775 ~ ~46 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 56 $(z) if block ~1791 ~ ~47 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1536 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 139 $(z) if block ~1567 ~ ~48 minecraft:stone run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1569 ~ ~63 minecraft:polished_andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1598 ~ ~58 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1690 ~ ~62 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1709 ~ ~63 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1712 ~ ~60 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 33 $(z) if block ~1728 ~ ~48 minecraft:redstone_wire run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"108,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 56 $(z) if block ~1757 ~ ~48 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 55 $(z) if block ~1760 ~ ~48 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 55 $(z) if block ~1782 ~ ~63 minecraft:crimson_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1536 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1558 ~ ~78 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1573 ~ ~78 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1598 ~ ~74 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1674 ~ ~78 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1693 ~ ~79 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1696 ~ ~76 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 33 $(z) if block ~1712 ~ ~64 minecraft:redstone_wire run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"107,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 49 $(z) if block ~1756 ~ ~66 minecraft:crimson_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"109,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 55 $(z) if block ~1764 ~ ~64 minecraft:crimson_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"110,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 55 $(z) if block ~1782 ~ ~64 minecraft:crimson_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"111,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1536 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1562 ~ ~95 minecraft:polished_andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1570 ~ ~95 minecraft:deepslate_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1598 ~ ~90 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1658 ~ ~94 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1677 ~ ~95 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1680 ~ ~92 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 33 $(z) if block ~1696 ~ ~80 minecraft:redstone_wire run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"106,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1551 ~ ~111 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1557 ~ ~111 minecraft:end_rod run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1569 ~ ~100 minecraft:deepslate_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"98,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1598 ~ ~106 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1642 ~ ~110 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1661 ~ ~111 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1664 ~ ~108 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 33 $(z) if block ~1680 ~ ~96 minecraft:redstone_wire run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"105,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1548 ~ ~125 minecraft:polished_andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1555 ~ ~113 minecraft:polished_andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"98,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1598 ~ ~122 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1626 ~ ~126 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1645 ~ ~127 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1648 ~ ~124 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 33 $(z) if block ~1664 ~ ~112 minecraft:redstone_wire run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"104,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1538 ~ ~143 minecraft:polished_andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1552 ~ ~133 minecraft:deepslate_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"97,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"98,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1598 ~ ~138 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1614 ~ ~138 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"100,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1629 ~ ~143 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1632 ~ ~140 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 33 $(z) if block ~1648 ~ ~128 minecraft:redstone_wire run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"103,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1536 ~ ~145 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"96,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"97,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"98,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1598 ~ ~154 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1615 ~ ~157 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"100,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1616 ~ ~156 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 33 $(z) if block ~1632 ~ ~144 minecraft:redstone_wire run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"102,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"96,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"97,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"98,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1598 ~ ~170 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1612 ~ ~160 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"100,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 33 $(z) if block ~1616 ~ ~160 minecraft:redstone_wire run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"101,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"96,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"97,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"98,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1598 ~ ~186 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"96,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"97,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"98,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1598 ~ ~202 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"96,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"97,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"98,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1598 ~ ~218 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"96,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"97,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"98,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1598 ~ ~234 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"96,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"97,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"98,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1598 ~ ~250 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"99,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,15"}
tellraw @s [{"text":"[PASTE zone 7] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 7 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z7 rb_p 1
