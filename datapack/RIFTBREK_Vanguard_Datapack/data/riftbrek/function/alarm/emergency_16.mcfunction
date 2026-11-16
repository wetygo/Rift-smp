# EMERGENCY button in room 16 (macro: origin)
tellraw @a[tag=rb_member,tag=!rb_revoked] [{"text":"[EMERGENCY] ","color":"red","bold":true},{"text":"room 16 sent an emergency signal","color":"white"}]
title @a[tag=rb_member,tag=!rb_revoked] actionbar {"text":"EMERGENCY in room 16","color":"red"}
execute as @a[tag=rb_member,tag=!rb_revoked] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 0.7 0.5
$execute positioned $(x) -64 $(z) positioned ~495 ~109 ~574 run function riftbrek:alarm/ring_here
