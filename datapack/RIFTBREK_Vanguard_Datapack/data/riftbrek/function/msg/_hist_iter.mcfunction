execute if data storage riftbrek:msg iter[0] run tellraw @s [{"text":"[","color":"gray"},{"nbt":"iter[0].from","storage":"riftbrek:msg"},{"text":"] "},{"nbt":"iter[0].text","storage":"riftbrek:msg","color":"white"}]
data remove storage riftbrek:msg iter[0]
execute if data storage riftbrek:msg iter[0] run function riftbrek:msg/_hist_iter
