# zone 24 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1801 ~ ~526 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~522 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~522 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1847 ~ ~526 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1862 ~ ~518 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1879 ~ ~522 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1893 ~ ~522 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~527 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1812 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1860 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1893 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~543 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1893 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~559 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1893 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~575 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1893 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~591 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1812 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1860 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1893 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~607 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~618 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~618 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~618 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~618 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~618 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~618 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1893 ~ ~618 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~623 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1893 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~639 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1812 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1860 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1893 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~655 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1893 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~671 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1893 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~687 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1893 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~703 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1812 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1860 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1893 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~719 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1893 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~735 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1813 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1845 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1861 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1877 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1893 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~751 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1807 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1823 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1839 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1855 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1871 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1887 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1903 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1919 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,47"}
tellraw @s [{"text":"[PASTE zone 24] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 24 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z24 rb_p 1
