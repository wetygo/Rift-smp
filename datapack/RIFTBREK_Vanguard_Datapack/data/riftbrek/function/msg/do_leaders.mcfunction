execute unless entity @s[tag=rb_veil] run tellraw @a[tag=rb_leader,tag=!rb_revoked] [{"text":"[Leaders] ","color":"red"},{"selector":"@s"},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
execute unless entity @s[tag=rb_veil] run tellraw @a[tag=rb_royal,tag=!rb_leader,tag=!rb_revoked] [{"text":"[Leaders] ","color":"red"},{"selector":"@s"},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
execute if entity @s[tag=rb_veil] run tellraw @a[tag=rb_leader,tag=!rb_revoked] [{"text":"[Leaders] ","color":"red"},{"text":"Veil operative "},{"score":{"name":"@s","objective":"rb_id"}},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
execute if entity @s[tag=rb_veil] run tellraw @a[tag=rb_royal,tag=!rb_leader,tag=!rb_revoked] [{"text":"[Leaders] ","color":"red"},{"text":"Veil operative "},{"score":{"name":"@s","objective":"rb_id"}},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
scoreboard players set @s rb_msgcd 40
function riftbrek:msg/_hist_faction
