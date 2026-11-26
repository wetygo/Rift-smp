tag @s add rb_navi
team add rb_navi
team join rb_navi @s
effect give @s minecraft:night_vision infinite 0 true
effect give @s minecraft:jump_boost infinite 1 true
effect give @s minecraft:speed infinite 0 true
give @s minecraft:bow[minecraft:custom_name={text:"Na'vi bow",color:"aqua",italic:false}]
give @s minecraft:arrow 64
give @s minecraft:elytra[minecraft:custom_name={text:"Ikran wings",color:"aqua",italic:false}]
give @s minecraft:firework_rocket 64
give @s minecraft:leather_chestplate[minecraft:dyed_color=2977750,minecraft:custom_name={text:"Na'vi sash",color:"aqua",italic:false}]
give @s minecraft:leather_leggings[minecraft:dyed_color=2977750]
tellraw @s {text:"You are Na'vi. Eywa is with you. Jump off a roost and glide on your Ikran wings.",color:"aqua"}
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 1.2
