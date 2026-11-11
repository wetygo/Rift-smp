# OP ONLY.  /function riftbrek:admin/register {mc:"PlayerName",discord:"discord_handle",faction:"birds"}
# faction = birds | unstables | abstracters | veil | archivist | wildcards.  Player must be ONLINE.
$execute unless entity @a[name=$(mc)] run tellraw @s {"text":"RIFTBREK: $(mc) must be online to register.","color":"red"}
$execute as $(mc) run function riftbrek:admin/register_apply {mc:"$(mc)",discord:"$(discord)",faction:"$(faction)"}
