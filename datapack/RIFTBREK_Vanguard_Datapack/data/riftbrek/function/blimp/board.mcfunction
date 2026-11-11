# during the first 5 s of every stop: authorised players within 8 blocks of the ship are seated (6 seats). Lockdown = no boarding.
execute unless score #GLOBAL rb_lock matches 1 as @e[tag=rb_seat,limit=1] at @s as @a[distance=..8,tag=!rb_riding,tag=!rb_nob,tag=!rb_revoked,scores={rb_cred=1..,rb_clear=1..}] run function riftbrek:blimp/mount
