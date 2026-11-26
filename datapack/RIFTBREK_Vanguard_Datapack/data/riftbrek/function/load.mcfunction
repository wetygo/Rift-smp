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
scoreboard objectives add rb_p dummy
scoreboard objectives add rb_msg dummy
scoreboard objectives add rb_seen dummy
scoreboard objectives add rb_req trigger
execute unless score #GLOBAL rb_lock = #GLOBAL rb_lock run scoreboard players set #GLOBAL rb_lock 0
execute unless score #NEXT rb_id = #NEXT rb_id run scoreboard players set #NEXT rb_id 1000
scoreboard players set #20 rb_const 20
scoreboard players set #200 rb_const 200
execute unless score #VER rb_msg = #VER rb_msg run scoreboard players set #VER rb_msg 0
scoreboard players set #NEW rb_msg 2
execute unless data storage riftbrek:msg history run data modify storage riftbrek:msg history set value []
execute unless data storage riftbrek:msg lines run data modify storage riftbrek:msg lines set value [{"text":"BULLETIN"},{"text":"no messages"},{"text":""},{"text":""}]
scoreboard players set #100 rb_const 100
scoreboard players set #2 rb_const 2
scoreboard players set #600 rb_const 600
execute unless data storage riftbrek:registry roster run data modify storage riftbrek:registry roster set value []
data modify storage riftbrek:const factions set value {birds:1b,unstables:1b,abstracters:1b,veil:1b,archivist:1b,wildcards:1b}
execute unless data storage riftbrek:registry players run data modify storage riftbrek:registry players set value {}
execute unless data storage riftbrek:log entries run data modify storage riftbrek:log entries set value []
function riftbrek:setup/teams
function riftbrek:setup/gamerules
tellraw @a {"text":"[RIFTBREK] Vanguard datapack loaded.","color":"light_purple"}
