give @s minecraft:shield 1
give @s minecraft:netherite_helmet[minecraft:enchantments={"minecraft:protection":4,"minecraft:unbreaking":3}] 1
give @s minecraft:netherite_chestplate[minecraft:enchantments={"minecraft:protection":4,"minecraft:unbreaking":3}] 1
give @s minecraft:netherite_leggings[minecraft:enchantments={"minecraft:protection":4,"minecraft:unbreaking":3}] 1
give @s minecraft:netherite_boots[minecraft:enchantments={"minecraft:protection":4,"minecraft:unbreaking":3}] 1
give @s minecraft:netherite_sword[minecraft:enchantments={"minecraft:sharpness":5,"minecraft:unbreaking":3}] 1
give @s minecraft:bow 1
give @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:fire_resistance"}] 1
give @s minecraft:golden_apple 8
function riftbrek:kit/_done
tellraw @s {"text":"Issued custom FlameFrags-inspired kit (design choice, not verified canon).","color":"green"}
