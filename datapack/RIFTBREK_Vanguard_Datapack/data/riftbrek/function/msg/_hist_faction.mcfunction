data modify storage riftbrek:msg h set value {}
data modify storage riftbrek:msg h.text set from storage riftbrek:msg raw
execute if entity @s[tag=rb_birds] run data modify storage riftbrek:msg h.from set value "The Biggest Birds"
execute if entity @s[tag=rb_unstables] run data modify storage riftbrek:msg h.from set value "The Unstables"
execute if entity @s[tag=rb_abstracters] run data modify storage riftbrek:msg h.from set value "Abstracters"
execute if entity @s[tag=rb_veil] run data modify storage riftbrek:msg h.from set value "Veil"
execute if entity @s[tag=rb_archivist] run data modify storage riftbrek:msg h.from set value "The Archivist"
execute if entity @s[tag=rb_wildcards] run data modify storage riftbrek:msg h.from set value "Wildcards"
data modify storage riftbrek:msg history append from storage riftbrek:msg h
execute store result score #n rb_msg run data get storage riftbrek:msg history
execute if score #n rb_msg matches 21.. run data remove storage riftbrek:msg history[0]
