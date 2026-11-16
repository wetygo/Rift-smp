scoreboard players set #INT rb_msg 200
tellraw @a[tag=rb_member,tag=!rb_revoked] [{"text":"[INTRUSION] ","color":"red","bold":true},{"text":"an unregistered player was detected at the perimeter wall","color":"white"}]
execute as @a[tag=rb_member,tag=!rb_revoked] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 0.6 0.5
playsound minecraft:block.bell.use master @a[distance=..40] ~ ~ ~ 3 0.5
