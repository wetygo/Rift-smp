# room 12: lever (east face of this command block) ON = lava curtain, OFF = clear window
execute if block ~1 ~ ~ minecraft:lever[powered=true] run fill ~4 ~0 ~5 ~8 ~2 ~5 minecraft:lava replace minecraft:air
execute unless block ~1 ~ ~ minecraft:lever[powered=true] run fill ~4 ~0 ~5 ~8 ~2 ~5 minecraft:air replace minecraft:lava
