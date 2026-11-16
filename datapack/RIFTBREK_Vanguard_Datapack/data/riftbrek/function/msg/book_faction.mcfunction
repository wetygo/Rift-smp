# reads page 1 of the Book & Quill in the main hand (pages may be {raw:..} or plain strings)
data remove storage riftbrek:msg raw
data modify storage riftbrek:msg raw set from entity @s SelectedItem.components."minecraft:writable_book_content".pages[0]
execute if data storage riftbrek:msg raw.raw run data modify storage riftbrek:msg raw set from storage riftbrek:msg raw.raw
execute unless data storage riftbrek:msg raw run tellraw @s {"text":"Hold a Book & Quill with your message on page 1 first.","color":"yellow"}
execute if data storage riftbrek:msg raw run function riftbrek:msg/to_faction
