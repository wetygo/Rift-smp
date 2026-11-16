data modify storage riftbrek:msg last set value {}
data modify storage riftbrek:msg last.text set from storage riftbrek:msg raw
data modify storage riftbrek:msg last.from set value "Vanguard command"
execute if entity @s[tag=rb_birds,tag=!rb_veil] run data modify storage riftbrek:msg last.from set value "The Biggest Birds leadership"
execute if entity @s[tag=rb_unstables,tag=!rb_veil] run data modify storage riftbrek:msg last.from set value "The Unstables leadership"
execute if entity @s[tag=rb_abstracters,tag=!rb_veil] run data modify storage riftbrek:msg last.from set value "Abstracters leadership"
execute if entity @s[tag=rb_archivist,tag=!rb_veil] run data modify storage riftbrek:msg last.from set value "The Archivist leadership"
execute if entity @s[tag=rb_wildcards,tag=!rb_veil] run data modify storage riftbrek:msg last.from set value "Wildcards leadership"
execute if entity @s[tag=rb_royal] run data modify storage riftbrek:msg last.from set value "The Crown"
scoreboard players add #VER rb_msg 1
scoreboard players set #NEW rb_msg 2
data modify storage riftbrek:msg lines set value [{"text":"BULLETIN"},{"text":""},{"text":"read in chat"},{"text":"or /trigger 45"}]
data modify storage riftbrek:msg lines[1].text set from storage riftbrek:msg last.from
tellraw @a [{"text":"[ANNOUNCEMENT] ","color":"gold","bold":true},{"nbt":"last.from","storage":"riftbrek:msg","color":"light_purple"},{"text":": "},{"nbt":"last.text","storage":"riftbrek:msg","color":"white"}]
title @a actionbar [{"text":"ANNOUNCEMENT: ","color":"gold"},{"nbt":"last.text","storage":"riftbrek:msg","color":"white"}]
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1
scoreboard players set @s rb_msgcd 100
data modify storage riftbrek:msg h set value {}
data modify storage riftbrek:msg h.text set from storage riftbrek:msg raw
data modify storage riftbrek:msg h.from set from storage riftbrek:msg last.from
data modify storage riftbrek:msg history append from storage riftbrek:msg h
