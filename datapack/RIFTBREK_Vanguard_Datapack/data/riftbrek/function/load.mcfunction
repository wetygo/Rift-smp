# Runs on every /reload and world start. NOTHING here may reset persistent player data.
scoreboard objectives add rb_clear dummy
scoreboard objectives add rb_cred dummy
scoreboard objectives add rb_role dummy
scoreboard objectives add rb_id dummy
scoreboard objectives add rb_visitor dummy
scoreboard objectives add rb_kit dummy
scoreboard objectives add rb_lastkit dummy
scoreboard objectives add rb_issued dummy
scoreboard objectives add rb_denied dummy
scoreboard objectives add rb_incident dummy
scoreboard objectives add rb_lock dummy
scoreboard objectives add rb_tmp dummy
scoreboard objectives add rb_const dummy
scoreboard objectives add rb_msgcd dummy
scoreboard objectives add rb_cbs dummy
scoreboard objectives add rb_bl dummy
scoreboard objectives add rb_req trigger
execute unless score #GLOBAL rb_lock = #GLOBAL rb_lock run scoreboard players set #GLOBAL rb_lock 0
execute unless score #NEXT rb_id = #NEXT rb_id run scoreboard players set #NEXT rb_id 1000
scoreboard players set #20 rb_const 20
scoreboard players set #200 rb_const 200
scoreboard players set #100 rb_const 100
scoreboard players set #2 rb_const 2
execute unless score #ON rb_bl = #ON rb_bl run scoreboard players set #ON rb_bl 0
execute unless score #SPAWNED rb_bl = #SPAWNED rb_bl run scoreboard players set #SPAWNED rb_bl 0
execute unless score #PH rb_bl = #PH rb_bl run scoreboard players set #PH rb_bl 0
execute unless score #T rb_bl = #T rb_bl run scoreboard players set #T rb_bl 0
scoreboard players set #600 rb_const 600
execute unless data storage riftbrek:registry roster run data modify storage riftbrek:registry roster set value []
execute unless data storage riftbrek:registry players run data modify storage riftbrek:registry players set value {}
execute unless data storage riftbrek:log entries run data modify storage riftbrek:log entries set value []
function riftbrek:setup/teams
function riftbrek:setup/gamerules
tellraw @a {"text":"[RIFTBREK] Vanguard datapack loaded.","color":"light_purple"}
