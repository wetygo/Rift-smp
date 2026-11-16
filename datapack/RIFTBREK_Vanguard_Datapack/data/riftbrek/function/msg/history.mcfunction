tellraw @s {"text":"=== last messages (sender faction only) ===","color":"light_purple"}
data modify storage riftbrek:msg iter set from storage riftbrek:msg history
function riftbrek:msg/_hist_iter
