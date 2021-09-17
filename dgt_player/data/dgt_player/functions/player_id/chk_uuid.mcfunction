tellraw @a[tag=debug] {"text":"debug: ","color":"red","extra":[{"text":"chk_uuid"}]}
# Clear the db-functions
function dgt_db:reset
# Get UUID-info
data modify storage dgt_db:main var.tree set from storage dgt_player:main UUID
data modify storage dgt_db:main var.id set from entity @s UUID[3]
data modify storage dgt_db:main var.command set value 'get_id'
function dgt_db:run
# Check if UUID is in the list
execute if data storage dgt_db:main return.UUIDs[0] run function dgt_player:player_id/chk_uuid_set
# UUID found -> set Scoreboard for this player
execute if data storage dgt_player:temp check{UUIDDiff:0} run scoreboard players reset @s
execute if data storage dgt_player:temp check{UUIDDiff:0} store result score @s id run data get storage dgt_db:main return.UUIDs[0].id
