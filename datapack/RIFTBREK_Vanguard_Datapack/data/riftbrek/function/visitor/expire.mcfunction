tag @s remove rb_guest
scoreboard players set @s rb_clear 0
scoreboard players set @s rb_cred 0
function riftbrek:admin/_setstatus {status:"expired"}
tellraw @s {"text":"RIFTBREK: visitor access expired.","color":"yellow"}
