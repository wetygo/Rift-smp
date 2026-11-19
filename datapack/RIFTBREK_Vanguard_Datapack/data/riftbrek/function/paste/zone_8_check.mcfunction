# zone 8 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1807 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1823 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1839 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1855 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1871 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1887 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1903 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1912 ~ ~15 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1792 ~ ~16 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1819 ~ ~27 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1819 ~ ~27 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1810 ~ ~26 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"113,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~24 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1832 ~ ~24 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"114,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~24 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~24 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"115,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~24 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1862 ~ ~24 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"116,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1880 ~ ~24 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1880 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1884 ~ ~25 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"117,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~28 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~28 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1792 ~ ~32 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1819 ~ ~43 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1819 ~ ~43 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1822 ~ ~41 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"113,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1838 ~ ~38 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"114,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1851 ~ ~38 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"115,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1869 ~ ~38 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"116,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1880 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1880 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1882 ~ ~39 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"117,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1889 ~ ~44 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~44 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1792 ~ ~48 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1819 ~ ~59 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1819 ~ ~59 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1810 ~ ~58 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"113,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~56 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1831 ~ ~56 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"114,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~56 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1843 ~ ~56 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"115,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~56 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1859 ~ ~56 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"116,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1880 ~ ~56 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1880 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1880 ~ ~57 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"117,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~60 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~60 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1792 ~ ~64 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~76 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~76 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1792 ~ ~80 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1812 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1860 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1889 ~ ~92 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~92 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1792 ~ ~96 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~108 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1792 ~ ~112 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~124 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~124 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1792 ~ ~128 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~140 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~140 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1792 ~ ~144 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1812 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1860 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1889 ~ ~156 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~156 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1798 ~ ~167 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~170 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~170 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~170 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~170 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~170 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~172 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~172 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1798 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~186 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~186 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~186 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~186 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~186 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~188 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~188 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1799 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1860 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1889 ~ ~204 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~204 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1792 ~ ~208 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"112,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~218 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"113,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~218 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~218 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~218 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~218 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~220 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~220 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1792 ~ ~224 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"112,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1815 ~ ~234 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"113,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~234 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~234 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~234 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~234 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~236 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~236 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1792 ~ ~240 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"112,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1815 ~ ~250 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"113,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~250 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~250 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~250 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~250 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~252 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~252 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,15"}
tellraw @s [{"text":"[PASTE zone 8] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 8 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z8 rb_p 1
