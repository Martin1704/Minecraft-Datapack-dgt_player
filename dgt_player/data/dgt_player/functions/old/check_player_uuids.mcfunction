# Check if in UUID-list
execute store success storage dgt_player:temp check.UUIDDiff int 1 run data modify storage dgt_db:main return.UUIDs[0].UUID set from entity @s UUID
# UUID different -> remove this one and go to next in the list
execute if data storage dgt_player:temp check{UUIDDiff:1} run data remove storage dgt_db:main return.UUIDs[0]
execute if data storage dgt_player:temp check{UUIDDiff:1} if data storage dgt_db:main return.UUIDs[0] run function check_player_uuids
