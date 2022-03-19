# Clear the db-functions
function dgt_db:reset
# Get UUID-info
data modify storage dgt_db:main var.tree set from storage dgt_player:main UUID
data modify storage dgt_db:main var.id set from entity @s UUID[3]
data modify storage dgt_db:main var.command set value 'get_id'
function dgt_db:run
# Check if UUID is in the list
data modify storage dgt_player:temp check.UUIDDiff set value 2
execute if data storage dgt_db:main return.UUIDs[0] run function dgt_player:check_player_uuids
# UUID found -> set Scoreboard for this player, check+create for info/marker etc
execute if data storage dgt_player:temp check{UUIDDiff:0} run function dgt_player:create_from_uuid
# execute if data storage dgt_player:temp check{UUIDDiff:0} run store result score @s id run data get storage dgt_db:main return.UUIDs[0].id
