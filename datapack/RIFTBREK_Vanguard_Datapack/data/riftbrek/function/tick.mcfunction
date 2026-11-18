execute if score #NEW rb_msg matches 1.. run scoreboard players remove #NEW rb_msg 1
execute if score #INT rb_msg matches 1.. run scoreboard players remove #INT rb_msg 1
scoreboard players enable @a rb_req
execute as @a[scores={rb_req=1..}] run function riftbrek:req/dispatch
# Veil operatives are kept invisible everywhere (zone/visible overrides this for non-Veil only).
execute as @a[tag=rb_veil,tag=!rb_revoked,scores={rb_cred=1..}] run effect give @s minecraft:invisibility 4 0 true
# a suspended / credential-less Veil member is NOT anonymous any more
execute as @a[tag=rb_veil,scores={rb_cred=..0}] run effect clear @s minecraft:invisibility
# Visitor passes count down in ONLINE ticks.
execute as @a[tag=rb_guest,scores={rb_visitor=1..}] run scoreboard players remove @s rb_visitor 1
execute as @a[tag=rb_guest,scores={rb_visitor=..0}] run function riftbrek:visitor/expire
execute as @a[scores={rb_msgcd=1..}] run scoreboard players remove @s rb_msgcd 1
execute as @a[scores={rb_cbs=1..}] run scoreboard players remove @s rb_cbs 1
