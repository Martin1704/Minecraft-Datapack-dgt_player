scoreboard players reset @s
execute store result score @s id run data get storage dgt_db:main return.UUIDs[0].id
execute as @e[type=minecraft:marker,tag=PlayerData] if score @s id = @p[tag=CurPlayer] id run function dgt_player:check_player_marker
function dgt_player:check_player_id
function player_restore_from_info
execute unless entity @e[tag=CurPlayerData] run function dgt_player:create_marker_from_id
