scoreboard players add @s rb_kit 1
scoreboard players operation @s rb_lastkit = #now rb_tmp
function riftbrek:log/entry_kit
tellraw @s {"text":"Kit issued and logged in the Archivist ledger.","color":"green"}
