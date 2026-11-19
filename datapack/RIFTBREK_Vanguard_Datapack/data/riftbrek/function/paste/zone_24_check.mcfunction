# zone 24 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~522 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1820 ~ ~524 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1824 ~ ~524 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1855 ~ ~527 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1864 ~ ~517 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1880 ~ ~517 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1901 ~ ~521 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~524 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1808 ~ ~541 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1839 ~ ~543 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1851 ~ ~534 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1871 ~ ~543 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1887 ~ ~543 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1888 ~ ~539 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~540 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1823 ~ ~559 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1839 ~ ~559 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1844 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1856 ~ ~545 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1875 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1895 ~ ~548 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~556 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1797 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1814 ~ ~572 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1830 ~ ~566 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1846 ~ ~560 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1862 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1879 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1891 ~ ~572 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~572 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
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
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~588 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~588 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
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
$execute positioned $(x) 192 $(z) if block ~1889 ~ ~604 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~604 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
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
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~620 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~620 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
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
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~636 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~636 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
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
$execute positioned $(x) 192 $(z) if block ~1889 ~ ~652 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~652 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1798 ~ ~668 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1822 ~ ~664 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1829 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1849 ~ ~656 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
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
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~668 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~668 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
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
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~684 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~684 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
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
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~700 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~700 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
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
$execute positioned $(x) 192 $(z) if block ~1889 ~ ~716 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~716 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
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
$execute positioned $(x) 192 $(z) if block ~1890 ~ ~732 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~732 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1799 ~ ~739 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1821 ~ ~743 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1838 ~ ~739 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1847 ~ ~739 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1869 ~ ~743 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1886 ~ ~739 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1903 ~ ~747 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1911 ~ ~748 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1800 ~ ~754 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"112,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1816 ~ ~754 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"113,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1832 ~ ~754 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"114,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1848 ~ ~754 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"115,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1864 ~ ~754 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"116,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1880 ~ ~754 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"117,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1896 ~ ~754 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"118,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1912 ~ ~754 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"119,47"}
tellraw @s [{"text":"[PASTE zone 24] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 24 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z24 rb_p 1
