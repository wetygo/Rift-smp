# runs AT the room centre: audible/visible only to players inside that room (8 blocks)
playsound minecraft:block.bell.use master @a[distance=..9] ~ ~ ~ 2 0.5
title @a[distance=..9] title {"text":"ALARM","color":"red","bold":true}
particle minecraft:angry_villager ~ ~1 ~ 1.5 1 1.5 0 12
