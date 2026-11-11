# Leader/Royal only, output to the caller only. NEVER paste this output publicly.
execute unless entity @s[tag=!rb_revoked,scores={rb_cred=1..,rb_clear=4..}] run tellraw @s {"text":"DENIED: leader authorization required.","color":"red"}
execute if entity @s[tag=!rb_revoked,scores={rb_cred=1..,rb_clear=4..}] run function riftbrek:registry/veil_list
