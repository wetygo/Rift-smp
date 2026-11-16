tag @s remove rb_msg_ok
execute if entity @s[tag=rb_member,tag=!rb_revoked,scores={rb_cred=1..}] unless score @s rb_msgcd matches 1.. run tag @s add rb_msg_ok
execute if entity @s[tag=!rb_msg_ok] run tellraw @s {"text":"Message blocked: active members only, and wait a moment between messages.","color":"red"}
execute if entity @s[tag=rb_msg_ok,tag=!rb_leader,tag=!rb_royal] run tellraw @s {"text":"Leaders channel: leaders and royals only.","color":"red"}
execute if entity @s[tag=rb_msg_ok,tag=rb_leader] run function riftbrek:msg/do_leaders
execute if entity @s[tag=rb_msg_ok,tag=rb_royal,tag=!rb_leader] run function riftbrek:msg/do_leaders
