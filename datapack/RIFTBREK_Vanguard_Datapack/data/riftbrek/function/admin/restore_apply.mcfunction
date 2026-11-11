execute if entity @s[tag=rb_member,tag=!rb_revoked] run scoreboard players set @s rb_cred 1
execute if entity @s[tag=rb_member,tag=!rb_revoked] run function riftbrek:admin/_setstatus {status:"active"}
execute unless entity @s[tag=rb_member,tag=!rb_revoked] run tellraw @s {"text":"Cannot restore: player is revoked or not registered. Use admin/register again.","color":"red"}
execute if entity @s[tag=rb_member,tag=!rb_revoked] run tellraw @s {"text":"RIFTBREK: credential restored.","color":"green"}
