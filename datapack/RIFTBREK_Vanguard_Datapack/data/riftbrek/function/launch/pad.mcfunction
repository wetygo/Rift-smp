# runs AT a launch pad. Members wearing an elytra are shot 1000 blocks up (slow falling for 6 s to open the wings).
execute as @a[distance=..2.2,tag=rb_member,tag=!rb_revoked,scores={rb_cred=1..}] if items entity @s armor.chest minecraft:elytra run function riftbrek:launch/go
execute as @a[distance=..2.2,tag=rb_member,tag=!rb_revoked,scores={rb_cred=1..}] unless items entity @s armor.chest minecraft:elytra unless score @s rb_msgcd matches 1.. run function riftbrek:launch/no_elytra
