tag @s add CurPlayer
execute as @e[type=minecraft:marker,tag=PlayerData] if score @s id = @p[tag=CurPlayer] id run function dgt_player:update_marker_do
tag @s remove CurPlayer
tag @e[type=minecraft:marker,tag=CurPlayerData] remove CurPlayerData