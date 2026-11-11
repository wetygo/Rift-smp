scoreboard players set @s rb_cred 0
function riftbrek:admin/_setstatus {status:"suspended"}
tellraw @s {"text":"RIFTBREK: credential suspended.","color":"red"}
