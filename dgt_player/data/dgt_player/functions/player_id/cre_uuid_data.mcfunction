tellraw @a[tag=debug] {"text":"debug: ","color":"red","extra":[{"text":"cre_uuid_data"}]}
# Clear the db-functions
function dgt_db:reset
# Get UUID-info
data modify storage dgt_db:main var.tree set from storage dgt_player:main UUID
data modify storage dgt_db:main var.id set from entity @s UUID[3]
data modify storage dgt_db:main var.command set value 'get_id'
function dgt_db:run
data remove storage dgt_db:main var
data modify storage dgt_db:main var.insert.UUIDs set from storage dgt_db:main return.UUIDs
data remove storage dgt_db:main return
data modify storage dgt_db:main var.insert.UUIDs prepend value {}
data modify storage dgt_db:main var.insert.UUIDs[0].UUID set from entity @s UUID
execute store result storage dgt_db:main var.insert.UUIDs[0].id int 1 run scoreboard players get @s id
data modify storage dgt_db:main var.tree set from storage dgt_player:main UUID
data modify storage dgt_db:main var.id set from entity @s UUID[3]
data modify storage dgt_db:main var.command set value 'set_id'
function dgt_db:run
data modify storage dgt_player:main UUID set from storage dgt_db:main return
