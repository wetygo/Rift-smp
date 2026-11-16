playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 3 0.7
particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.15 60
tp @s ~ ~1000 ~
effect give @s minecraft:slow_falling 6 0 true
title @s actionbar {"text":"LAUNCHED - open your elytra!","color":"aqua"}
