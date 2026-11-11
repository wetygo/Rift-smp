# Public roster: every NON-Veil member with Minecraft + Discord usernames. Veil is never listed.
tellraw @s {"text":"=== RIFTBREK Vanguard roster ===","color":"light_purple"}
data modify storage riftbrek:tmp iter set from storage riftbrek:registry roster
function riftbrek:registry/iter
tellraw @s {"text":"Veil: CLASSIFIED. Names, Discord handles and UUIDs are omitted.","color":"dark_purple"}
