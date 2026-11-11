execute store result score #t rb_tmp run time query gametime
scoreboard players operation #t rb_tmp %= #200 rb_const
execute if score #t rb_tmp matches 0 run function riftbrek:industry/farm_beetroot
