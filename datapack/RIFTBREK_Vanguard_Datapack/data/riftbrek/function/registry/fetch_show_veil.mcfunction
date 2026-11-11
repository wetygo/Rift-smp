$data modify storage riftbrek:tmp rec set from storage riftbrek:registry players."$(id)"
execute if data storage riftbrek:tmp rec{key:"veil"} run function riftbrek:registry/show_veil with storage riftbrek:tmp rec
