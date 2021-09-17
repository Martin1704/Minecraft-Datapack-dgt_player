tag @s add CurPlayer
# Check if there is a marker (eg relog), check if id is ok, or check if there is another id for the uuid
execute unless entity @e[tag=CurPlayerData] if score @s id = @s id as @e[type=minecraft:marker,tag=PlayerData] if score @s id = @p[tag=CurPlayer] id run function dgt_player:check_player_marker
execute unless entity @e[tag=CurPlayerData] if score @s id = @s id run function dgt_player:check_player_id
execute unless entity @e[tag=CurPlayerData] if data storage dgt_player:temp check{IDDiff:0} run function dgt_player:create_marker_from_id
execute unless entity @e[tag=CurPlayerData] run function dgt_player:check_player_uuid
execute unless entity @e[tag=CurPlayerData] if score @s id > <dgt_player.main> id run scoreboard players operation <dgt_player.main> id = @s id
execute unless entity @e[tag=CurPlayerData] unless score @s id matches 1.. run function dgt_player:set_id
execute unless entity @e[tag=CurPlayerData] run function dgt_player:create_info_and_marker

data remove storage dgt_player:temp check
tag @e[tag=CurPlayerData] remove CurPlayerData
tag @a[tag=CurPlayer] remove CurPlayer
function dgt_db:reset
