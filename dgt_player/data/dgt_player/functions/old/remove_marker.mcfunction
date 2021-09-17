function dgt_db:reset
data modify storage dgt_db:main var.insert set from entity @s data.info
data modify storage dgt_db:main var.tree set from storage dgt_player:main ID
data modify storage dgt_db:main var.id set from storage dgt_db:main var.insert.id
data modify storage dgt_db:main var.command set value 'set_id'
function dgt_db:run
data modify storage dgt_player:main ID set from storage dgt_db:main return
kill @s
