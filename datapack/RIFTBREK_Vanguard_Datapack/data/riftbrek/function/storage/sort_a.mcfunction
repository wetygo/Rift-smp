# Sorter hall 'a' controller (repeating command block, always active).
execute if items block ~ ~ ~1 container.0 * run function riftbrek:storage/hall_a_slot_0
execute if items block ~ ~ ~1 container.1 * run function riftbrek:storage/hall_a_slot_1
execute if items block ~ ~ ~1 container.2 * run function riftbrek:storage/hall_a_slot_2
execute if items block ~ ~ ~1 container.3 * run function riftbrek:storage/hall_a_slot_3
execute if items block ~ ~ ~1 container.4 * run function riftbrek:storage/hall_a_slot_4
execute unless items block ~ ~ ~1 container.0 * run setblock ~-1 ~ ~ minecraft:air
execute unless items block ~ ~ ~1 container.1 * run setblock ~-1 ~ ~ minecraft:air
execute unless items block ~ ~ ~1 container.2 * run setblock ~-1 ~ ~ minecraft:air
execute unless items block ~ ~ ~1 container.3 * run setblock ~-1 ~ ~ minecraft:air
execute unless items block ~ ~ ~1 container.4 * run setblock ~-1 ~ ~ minecraft:air
execute if items block ~ ~ ~1 container.0 * if items block ~ ~ ~1 container.1 * if items block ~ ~ ~1 container.2 * if items block ~ ~ ~1 container.3 * if items block ~ ~ ~1 container.4 * run setblock ~-1 ~ ~ minecraft:redstone_block
