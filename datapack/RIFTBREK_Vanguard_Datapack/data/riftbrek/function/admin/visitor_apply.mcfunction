execute if entity @s[tag=rb_member] run tellraw @s {"text":"Already a member - visitor pass not needed.","color":"yellow"}
$execute unless entity @s[tag=rb_member] run function riftbrek:admin/visitor_grant {mc:"$(mc)"}
