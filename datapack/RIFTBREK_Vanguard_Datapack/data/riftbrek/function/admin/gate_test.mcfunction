# run AS a player to see which tiers they would pass
execute if entity @s[tag=!rb_revoked,scores={rb_cred=1..,rb_clear=1..}] run tellraw @s {"text":"public tier: PASS","color":"green"}
execute if entity @s[tag=!rb_revoked,scores={rb_cred=1..,rb_clear=2..}] run tellraw @s {"text":"member tier: PASS","color":"green"}
execute if entity @s[tag=!rb_revoked,scores={rb_cred=1..,rb_clear=4..}] run tellraw @s {"text":"leader tier: PASS","color":"green"}
execute if entity @s[tag=rb_royal,tag=!rb_revoked,scores={rb_cred=1..,rb_clear=5..}] run tellraw @s {"text":"royal tier: PASS","color":"gold"}
execute if score #GLOBAL rb_lock matches 1 run tellraw @s {"text":"LOCKDOWN ACTIVE: only royal doors open","color":"red"}
