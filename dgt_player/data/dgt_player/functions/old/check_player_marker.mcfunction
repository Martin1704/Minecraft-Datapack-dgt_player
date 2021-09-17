# Check if UUID is correct
data modify storage dgt_player:temp check.UUID set from entity @s data.info.UUID
execute store result storage dgt_player:temp check.MrkUUIDDiff int 1 run data modify storage dgt_player:temp check.UUID set from entity @p[tag=CurPlayer] UUID
# UUID Correct -> add CurPlayerData-tag
execute if data storage dgt_player:temp check{MrkUUIDDiff:0} run tag @s add CurPlayerData
execute if data storage dgt_player:temp check{MrkUUIDDiff:0} run function dgt_player:update_marker_do
# UUID not correct -> Reset player scoreboard
execute if data storage dgt_player:temp check{MrkUUIDDiff:1} run scoreboard players reset @p[tag=CurPlayer]
