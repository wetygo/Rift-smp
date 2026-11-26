# runs AT a bond pad command block (repeating): a player standing within 1.6 blocks who is not Na'vi yet becomes one
execute as @a[distance=..1.6,tag=!rb_navi] run function riftbrek:pandora/become_navi
