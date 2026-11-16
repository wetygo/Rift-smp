tag @s remove rb_ann_ok
execute if entity @s[tag=!rb_revoked,scores={rb_cred=1..,rb_clear=4..}] unless score @s rb_msgcd matches 1.. run tag @s add rb_ann_ok
execute if entity @s[tag=!rb_ann_ok] run tellraw @s {"text":"Announcements: leaders and royals only (and wait a moment).","color":"red"}
execute if entity @s[tag=rb_ann_ok] run function riftbrek:msg/do_announce
