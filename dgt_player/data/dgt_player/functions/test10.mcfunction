function dgt_db:reset
scoreboard players set <dgt_db.id> num 1
data modify storage dgt_db:main var.tree set from storage dgt_player:main ID
data modify storage dgt_db:main var.id set value 1
data modify storage dgt_db:main var.command set value "get_id"
