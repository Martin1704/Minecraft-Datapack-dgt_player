tellraw @a[tag=debug] {"text":"debug: ","color":"red","extra":[{"text":"cre_marker"}]}
summon minecraft:marker 0.0 0.0 0.0 {Tags:["PlayerData","CurPlayerData"]}
scoreboard players operation @e[tag=CurPlayerData] id = @s id
data modify entity @e[tag=CurPlayerData,limit=1] data.info.UUID set from entity @p[tag=CurPlayer] UUID
execute unless data storage dgt_player:temp check{IDDiff:0} run function dgt_player:player_id/chk_id
execute if data storage dgt_player:temp check{IDDiff:0} run data modify entity @e[tag=CurPlayerData,limit=1] data.info set from storage dgt_db:main return
execute store result entity @e[tag=CurPlayerData,limit=1] data.info.playtime_ticks int 1 run scoreboard players get @s playtime_ticks
execute if score <dgt_player.marker_live> num matches 1.. run scoreboard players operation @e[tag=CurPlayerData,limit=1] num = <dgt_player.marker_live> num
#function dgt_player:update_marker_full
