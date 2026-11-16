# OP ONLY. Closes every door except Royal-tier doors.
scoreboard players set #GLOBAL rb_lock 1
tellraw @a {"text":"RIFTBREK LOCKDOWN: secure facilities closed by staff.","color":"red"}
title @a title {"text":"LOCKDOWN","color":"red","bold":true}
execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0.6
