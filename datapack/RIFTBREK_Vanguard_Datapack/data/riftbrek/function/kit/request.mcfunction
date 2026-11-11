# trigger 2: issue the kit of the caller's own faction
execute if entity @s[tag=rb_birds] run function riftbrek:kit/birds
execute if entity @s[tag=rb_unstables] run function riftbrek:kit/unstables
execute if entity @s[tag=rb_abstracters] run function riftbrek:kit/abstracters
execute if entity @s[tag=rb_veil] run function riftbrek:kit/veil
execute if entity @s[tag=rb_archivist] run function riftbrek:kit/archivist
execute if entity @s[tag=rb_wildcards] run function riftbrek:kit/wildcards
execute unless entity @s[tag=rb_member] run tellraw @s {"text":"Kit denied: members only.","color":"red"}
