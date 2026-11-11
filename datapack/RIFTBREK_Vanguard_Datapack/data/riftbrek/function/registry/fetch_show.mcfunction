$data modify storage riftbrek:tmp rec set from storage riftbrek:registry players."$(id)"
# Veil is NEVER shown in the public roster, whatever list the id came from
execute unless data storage riftbrek:tmp rec{key:"veil"} run function riftbrek:registry/show with storage riftbrek:tmp rec
