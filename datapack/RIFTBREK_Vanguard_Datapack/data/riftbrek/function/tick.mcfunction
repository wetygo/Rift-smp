scoreboard players enable @a rb_req
execute as @a[scores={rb_req=1..}] run function riftbrek:req/dispatch
# Veil operatives are kept invisible everywhere (zone/visible overrides this for non-Veil only).
execute as @a[tag=rb_veil,tag=!rb_revoked] run effect give @s minecraft:invisibility 4 0 true
# Visitor passes count down in ONLINE ticks.
execute as @a[tag=rb_guest,scores={rb_visitor=1..}] run scoreboard players remove @s rb_visitor 1
execute as @a[tag=rb_guest,scores={rb_visitor=..0}] run function riftbrek:visitor/expire
execute as @a[scores={rb_msgcd=1..}] run scoreboard players remove @s rb_msgcd 1
execute as @a[scores={rb_cbs=1..}] run scoreboard players remove @s rb_cbs 1
