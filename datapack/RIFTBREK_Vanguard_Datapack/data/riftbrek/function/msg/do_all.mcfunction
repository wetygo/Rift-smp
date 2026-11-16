execute if entity @s[tag=rb_birds] run tellraw @a[tag=rb_member,tag=!rb_revoked] [{"text":"[ALL] ","color":"gold"},{"text":"The Biggest Birds ","color":"light_purple"},{"selector":"@s"},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
execute if entity @s[tag=rb_unstables] run tellraw @a[tag=rb_member,tag=!rb_revoked] [{"text":"[ALL] ","color":"gold"},{"text":"The Unstables ","color":"blue"},{"selector":"@s"},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
execute if entity @s[tag=rb_abstracters] run tellraw @a[tag=rb_member,tag=!rb_revoked] [{"text":"[ALL] ","color":"gold"},{"text":"Abstracters ","color":"dark_gray"},{"selector":"@s"},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
execute if entity @s[tag=rb_veil] run tellraw @a[tag=rb_member,tag=!rb_revoked] [{"text":"[ALL] ","color":"gold"},{"text":"Veil operative ","color":"dark_purple"},{"score":{"name":"@s","objective":"rb_id"}},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
execute if entity @s[tag=rb_archivist] run tellraw @a[tag=rb_member,tag=!rb_revoked] [{"text":"[ALL] ","color":"gold"},{"text":"The Archivist ","color":"white"},{"selector":"@s"},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
execute if entity @s[tag=rb_wildcards] run tellraw @a[tag=rb_member,tag=!rb_revoked] [{"text":"[ALL] ","color":"gold"},{"text":"Wildcards ","color":"aqua"},{"selector":"@s"},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
scoreboard players set @s rb_msgcd 40
function riftbrek:msg/_hist_faction
