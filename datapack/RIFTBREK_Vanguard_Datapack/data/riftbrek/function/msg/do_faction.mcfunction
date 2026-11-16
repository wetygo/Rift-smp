execute if entity @s[tag=rb_birds] run tellraw @a[tag=rb_birds,tag=!rb_revoked] [{"text":"[The Biggest Birds] ","color":"light_purple"},{"selector":"@s"},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
execute if entity @s[tag=rb_unstables] run tellraw @a[tag=rb_unstables,tag=!rb_revoked] [{"text":"[The Unstables] ","color":"blue"},{"selector":"@s"},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
execute if entity @s[tag=rb_abstracters] run tellraw @a[tag=rb_abstracters,tag=!rb_revoked] [{"text":"[Abstracters] ","color":"dark_gray"},{"selector":"@s"},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
execute if entity @s[tag=rb_veil] run tellraw @a[tag=rb_veil,tag=!rb_revoked] [{"text":"[Veil] ","color":"dark_purple"},{"text":"operative "},{"score":{"name":"@s","objective":"rb_id"}},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
execute if entity @s[tag=rb_archivist] run tellraw @a[tag=rb_archivist,tag=!rb_revoked] [{"text":"[The Archivist] ","color":"white"},{"selector":"@s"},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
execute if entity @s[tag=rb_wildcards] run tellraw @a[tag=rb_wildcards,tag=!rb_revoked] [{"text":"[Wildcards] ","color":"aqua"},{"selector":"@s"},{"text":": "},{"nbt":"raw","storage":"riftbrek:msg"}]
scoreboard players set @s rb_msgcd 40
function riftbrek:msg/_hist_faction
