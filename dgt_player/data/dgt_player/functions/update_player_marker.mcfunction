# Update Player-marker for current player
tag @s add CurPlayerUM
execute as @e[type=minecraft:marker,tag=PlayerData] if score @s id = @p[tag=CurPlayerUM] id run function dgt_player:update_marker
tag @e[type=minecraft:marker,tag=CurPlayerData] remove CurPlayerData
tag @s remove CurPlayerUM