# OP ONLY - shows full record INCLUDING Veil. Output goes to the operator only. {id:1001}
$data modify storage riftbrek:tmp rec set from storage riftbrek:registry players."$(id)"
function riftbrek:registry/show_full with storage riftbrek:tmp rec
