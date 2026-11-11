# OP ONLY. /function riftbrek:admin/leader {mc:"PlayerName"}   (player must already be registered)
$execute unless entity @a[name=$(mc),tag=rb_member,tag=!rb_revoked] run tellraw @s {"text":"RIFTBREK: $(mc) is not an active registered member - register first.","color":"red"}
$execute as $(mc) if entity @s[tag=rb_member,tag=!rb_revoked] run function riftbrek:admin/leader_apply
