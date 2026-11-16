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
execute if score @s rb_req matches 30 run function riftbrek:msg/quick_0
execute if score @s rb_req matches 31 run function riftbrek:msg/quick_1
execute if score @s rb_req matches 32 run function riftbrek:msg/quick_2
execute if score @s rb_req matches 33 run function riftbrek:msg/quick_3
execute if score @s rb_req matches 34 run function riftbrek:msg/quick_4
execute if score @s rb_req matches 35 run function riftbrek:msg/quick_5
execute if score @s rb_req matches 36 run function riftbrek:msg/quick_6
execute if score @s rb_req matches 37 run function riftbrek:msg/quick_7
execute if score @s rb_req matches 40 run function riftbrek:msg/book_faction
execute if score @s rb_req matches 41 run function riftbrek:msg/book_all
execute if score @s rb_req matches 42 run function riftbrek:msg/book_leaders
execute if score @s rb_req matches 43 run function riftbrek:msg/book_announce
execute if score @s rb_req matches 44 run function riftbrek:msg/history
execute if score @s rb_req matches 45 run function riftbrek:msg/read_last
scoreboard players set @s rb_req 0
scoreboard players enable @s rb_req
