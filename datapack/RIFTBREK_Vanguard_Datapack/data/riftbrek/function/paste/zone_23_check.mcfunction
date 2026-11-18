# zone 23 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"96,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"97,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"98,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"99,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"96,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"97,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"98,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"99,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"96,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"97,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"98,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"99,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1544 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1544 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"96,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1560 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1560 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"97,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1576 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1576 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"98,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1592 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1592 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"99,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1608 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1608 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1624 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1624 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1640 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1640 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1656 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1656 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1672 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1672 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1688 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1688 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1704 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1704 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1720 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1720 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1736 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1736 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1752 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1752 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1768 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1768 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1784 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1784 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1540 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1540 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"96,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1556 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1556 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"97,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1572 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1572 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"98,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1588 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1588 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"99,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1604 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1604 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"100,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1620 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1620 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"101,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1636 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1636 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"102,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1652 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1652 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"103,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1668 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1668 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"104,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1684 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1684 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"105,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1700 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1700 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"106,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1716 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1716 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"107,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1732 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1732 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"108,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1748 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1748 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"109,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1764 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1764 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"110,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1780 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1780 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"111,36"}
tellraw @s [{"text":"[PASTE zone 23] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 23 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z23 rb_p 1
