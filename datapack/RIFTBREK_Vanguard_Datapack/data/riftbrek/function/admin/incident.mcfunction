# OP ONLY. /function riftbrek:admin/incident {mc:"PlayerName"}
$execute as $(mc) run scoreboard players add @s rb_incident 1
$tellraw @s {"text":"Incident counter incremented for $(mc). Document in the Archivist log.","color":"yellow"}
