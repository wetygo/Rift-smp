# Books are informational only. Doors/kits NEVER read books - only server-side tags & scores.
execute unless score @s rb_id matches 1.. run tellraw @s {"text":"Book denied: you are not registered.","color":"red"}
execute if entity @s[tag=rb_revoked] run tellraw @s {"text":"Book denied: credential revoked.","color":"red"}
data modify storage riftbrek:tmp q set value {}
execute store result storage riftbrek:tmp q.id int 1 run scoreboard players get @s rb_id
execute if score @s rb_id matches 1.. unless entity @s[tag=rb_revoked] run function riftbrek:book/fetch with storage riftbrek:tmp q
