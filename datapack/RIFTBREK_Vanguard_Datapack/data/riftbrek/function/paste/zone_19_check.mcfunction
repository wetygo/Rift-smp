# zone 19 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 39 $(z) if block ~524 ~ ~519 minecraft:cherry_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"32,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~540 ~ ~527 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"33,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~520 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~545 ~ ~526 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"34,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~520 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~567 ~ ~522 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"35,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~520 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~586 ~ ~524 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"36,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~520 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~599 ~ ~520 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"37,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~520 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~617 ~ ~524 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"38,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~520 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~634 ~ ~524 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"39,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~520 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~647 ~ ~520 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"40,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~520 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~665 ~ ~524 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"41,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~520 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~682 ~ ~524 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"42,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~520 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~695 ~ ~520 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"43,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~520 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~713 ~ ~524 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"44,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~520 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~520 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~731 ~ ~527 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"45,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 94 $(z) if block ~751 ~ ~512 minecraft:purple_wall_banner run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"46,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~766 ~ ~525 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"32,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~540 ~ ~543 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"33,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~536 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~559 ~ ~543 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"34,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~536 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~569 ~ ~535 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"35,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~536 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~589 ~ ~541 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"36,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~536 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~607 ~ ~543 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"37,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~536 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~623 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"38,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~536 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~637 ~ ~541 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"39,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~536 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~655 ~ ~543 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"40,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~536 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~671 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"41,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~536 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~685 ~ ~541 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"42,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~536 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~703 ~ ~543 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"43,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~536 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~719 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"44,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~536 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~536 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~731 ~ ~543 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"45,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"46,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~766 ~ ~541 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"32,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~540 ~ ~559 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"33,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~552 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~557 ~ ~557 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"34,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~552 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~571 ~ ~559 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"35,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~552 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~576 ~ ~554 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"36,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~552 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~603 ~ ~544 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"37,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~552 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~620 ~ ~555 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"38,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~552 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~624 ~ ~554 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"39,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~552 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~651 ~ ~544 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"40,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~552 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~668 ~ ~555 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"41,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~552 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~672 ~ ~554 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"42,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~552 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~699 ~ ~544 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"43,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~552 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~716 ~ ~555 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"44,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~552 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~552 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~731 ~ ~546 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"45,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"46,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~766 ~ ~557 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~568 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 51 $(z) if block ~527 ~ ~567 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"32,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~540 ~ ~575 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"33,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~568 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~553 ~ ~567 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"34,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~568 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~572 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"35,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~568 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~586 ~ ~572 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"36,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~568 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~599 ~ ~568 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"37,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~568 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~617 ~ ~572 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"38,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~568 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~634 ~ ~572 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"39,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~568 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~647 ~ ~568 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"40,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~568 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~665 ~ ~572 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"41,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~568 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~682 ~ ~572 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"42,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~568 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~695 ~ ~568 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"43,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~568 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~713 ~ ~572 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"44,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~568 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~568 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~731 ~ ~575 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"45,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 154 $(z) if block ~751 ~ ~575 minecraft:black_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"46,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 159 $(z) if block ~755 ~ ~574 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~584 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 51 $(z) if block ~527 ~ ~591 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"32,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~540 ~ ~591 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"33,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~584 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~559 ~ ~591 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"34,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~584 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~569 ~ ~583 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"35,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~584 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~589 ~ ~589 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"36,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~584 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~607 ~ ~591 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"37,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~584 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~623 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"38,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~584 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~637 ~ ~589 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"39,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~584 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~655 ~ ~591 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"40,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~584 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~671 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"41,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~584 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~685 ~ ~589 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"42,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~584 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~703 ~ ~591 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"43,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~584 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~719 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"44,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~584 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~584 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~731 ~ ~591 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"45,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 154 $(z) if block ~751 ~ ~576 minecraft:black_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"46,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~757 ~ ~576 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 51 $(z) if block ~526 ~ ~594 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"32,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~540 ~ ~607 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"33,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~600 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~558 ~ ~604 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"34,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~600 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~574 ~ ~603 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"35,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~600 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~576 ~ ~604 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"36,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~600 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~594 ~ ~604 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"37,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~600 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~608 ~ ~604 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"38,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~600 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~624 ~ ~604 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"39,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~600 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~642 ~ ~604 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"40,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~600 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~656 ~ ~604 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"41,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~600 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~672 ~ ~604 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"42,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~600 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~690 ~ ~604 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"43,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~600 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 79 $(z) if block ~704 ~ ~604 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"44,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~600 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~600 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~731 ~ ~607 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"45,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"46,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~766 ~ ~605 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"32,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~541 ~ ~609 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"33,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~557 ~ ~609 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"34,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~573 ~ ~609 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"35,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~589 ~ ~609 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"36,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~605 ~ ~609 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"37,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~621 ~ ~609 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"38,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~637 ~ ~609 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"39,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~653 ~ ~609 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"40,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~669 ~ ~609 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"41,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~685 ~ ~609 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"42,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~701 ~ ~609 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"43,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 80 $(z) if block ~717 ~ ~609 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"44,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~616 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~731 ~ ~609 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"45,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 94 $(z) if block ~751 ~ ~608 minecraft:purple_wall_banner run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"46,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~766 ~ ~621 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"32,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"33,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"34,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"35,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"36,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"37,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"38,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"39,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"40,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"41,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"42,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"43,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 38 $(z) if block ~705 ~ ~625 minecraft:spruce_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"44,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~632 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"45,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"46,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~766 ~ ~637 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~648 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"32,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~648 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"33,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~648 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"34,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~648 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"35,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~648 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"36,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~648 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"37,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~648 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"38,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~648 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"39,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~648 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"40,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~648 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"41,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~648 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"42,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~648 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"43,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~648 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"44,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~648 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~648 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"45,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~648 minecraft:polished_blackstone run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"46,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~766 ~ ~653 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"32,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"33,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"34,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~568 ~ ~671 minecraft:spruce_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"35,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"36,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"37,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"38,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"39,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"40,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"41,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"42,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"43,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 40 $(z) if block ~705 ~ ~663 minecraft:cherry_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"44,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~664 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"45,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 94 $(z) if block ~751 ~ ~656 minecraft:purple_wall_banner run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"46,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~766 ~ ~669 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"32,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"33,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"34,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"35,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 40 $(z) if block ~590 ~ ~684 minecraft:spruce_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"36,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"37,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 38 $(z) if block ~608 ~ ~685 minecraft:cherry_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"38,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"39,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"40,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"41,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"42,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"43,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~716 ~ ~685 minecraft:cherry_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"44,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~680 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"45,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"46,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~766 ~ ~685 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"32,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"33,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"34,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"35,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"36,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"37,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 40 $(z) if block ~619 ~ ~691 minecraft:spruce_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"38,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"39,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"40,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"41,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"42,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"43,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"44,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~696 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"45,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"46,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~766 ~ ~701 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"32,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"33,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"34,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"35,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"36,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"37,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"38,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 39 $(z) if block ~630 ~ ~717 minecraft:cherry_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"39,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"40,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"41,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"42,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"43,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~712 ~ ~716 minecraft:cherry_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"44,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~712 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"45,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"46,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~766 ~ ~717 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~728 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"32,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~728 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"33,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~728 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"34,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~728 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"35,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~728 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"36,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~728 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"37,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~728 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"38,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~728 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"39,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~728 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"40,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~728 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"41,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~728 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"42,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~728 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"43,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~728 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"44,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~728 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~728 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
$execute positioned $(x) 175 $(z) if block ~735 ~ ~735 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"45,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 175 $(z) if block ~751 ~ ~735 minecraft:black_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"46,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 175 $(z) if block ~759 ~ ~735 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 94 $(z) if block ~512 ~ ~751 minecraft:purple_wall_banner run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"32,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"33,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"34,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 154 $(z) if block ~575 ~ ~751 minecraft:black_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"35,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 154 $(z) if block ~578 ~ ~751 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"36,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"37,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 94 $(z) if block ~608 ~ ~751 minecraft:purple_wall_banner run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"38,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"39,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"40,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 94 $(z) if block ~656 ~ ~751 minecraft:purple_wall_banner run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"41,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"42,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"43,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"44,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 175 $(z) if block ~735 ~ ~751 minecraft:black_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"45,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 189 $(z) if block ~747 ~ ~747 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"46,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 183 $(z) if block ~752 ~ ~751 minecraft:black_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~520 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~520 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~524 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"32,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~536 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~536 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~540 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"33,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~552 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~552 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~556 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"34,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~568 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~568 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 159 $(z) if block ~574 ~ ~755 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"35,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~584 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~584 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~576 ~ ~757 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"36,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~600 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~600 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~604 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"37,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~616 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~616 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~620 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"38,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~632 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~632 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~636 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"39,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~648 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~648 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~652 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"40,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~664 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~664 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~668 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"41,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~680 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~680 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~684 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"42,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~696 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~696 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~700 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"43,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~712 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~712 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~716 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"44,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~728 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~728 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 175 $(z) if block ~735 ~ ~759 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"45,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~744 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~744 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 183 $(z) if block ~751 ~ ~752 minecraft:black_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"46,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~760 ~ ~760 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~760 ~ ~760 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 183 $(z) if block ~752 ~ ~752 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"47,47"}
tellraw @s [{"text":"[PASTE zone 19] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 19 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z19 rb_p 1
