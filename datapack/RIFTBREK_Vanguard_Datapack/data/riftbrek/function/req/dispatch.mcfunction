# Player-facing commands: /trigger rb_req set <n>.  Every action re-validates server side.
execute if score @s rb_req matches 1 run function riftbrek:book/issue
execute if score @s rb_req matches 2 run function riftbrek:kit/request
execute if score @s rb_req matches 3 run function riftbrek:registry/public
execute if score @s rb_req matches 4 run function riftbrek:registry/leader_private
execute if score @s rb_req matches 5 run function riftbrek:registry/self
execute if score @s rb_req matches 9 run function riftbrek:req/help
execute if score @s rb_req matches 11 run function riftbrek:kit/creator_flame
execute if score @s rb_req matches 12 run function riftbrek:kit/creator_wemmbu
execute if score @s rb_req matches 13 run function riftbrek:kit/creator_theobald
execute if score @s rb_req matches 14 run function riftbrek:kit/creator_parrot
execute if score @s rb_req matches 15 run function riftbrek:kit/creator_manepear
execute if score @s rb_req matches 16 run function riftbrek:kit/creator_spoke
scoreboard players set @s rb_req 0
scoreboard players enable @s rb_req
