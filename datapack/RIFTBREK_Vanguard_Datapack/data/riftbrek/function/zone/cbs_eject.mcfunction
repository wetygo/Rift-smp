# executor position is the command block: push the offender 28 blocks south (outside the wall)
tp @s ~ ~ ~28
scoreboard players set @s rb_cbs 0
tellraw @s {"text":"You were ejected from the Chunk Ban Square (simulation).","color":"red"}
