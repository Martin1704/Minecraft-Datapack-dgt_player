tag @s add CurPlayerData
execute store result entity @s data.info.playtime_ticks int 1 run scoreboard players get @p[tag=CurPlayer] playtime_ticks
execute if score <dgt_player.marker_live> num matches 1.. run scoreboard players operation @s num = <dgt_player.marker_live> num
execute unless score <dgt_player.marker_live> num matches 1.. run scoreboard players set @s num 1
