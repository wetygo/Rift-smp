# bulletin board: refreshes the sign above (2 ticks after every announcement) and shows the text in chat to anyone who walks up
execute if score #NEW rb_msg matches 1.. run data modify block ~ ~1 ~ front_text.messages set from storage riftbrek:msg lines
execute if score #VER rb_msg matches 1.. as @a[distance=..6] unless score @s rb_seen = #VER rb_msg run function riftbrek:msg/read_last
