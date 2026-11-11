execute unless entity @s[tag=rb_member,tag=!rb_revoked,scores={rb_cred=1..}] run tellraw @s {"text":"Creator kit denied: active membership required.","color":"red"}
execute if entity @s[tag=rb_member,tag=!rb_revoked,scores={rb_cred=1..}] run function riftbrek:kit/_cooldown_check
execute if entity @s[tag=rb_member,tag=!rb_revoked,tag=rb_kit_ok,scores={rb_cred=1..}] run function riftbrek:kit/internal_creator_spoke
