summon minecraft:marker 0.0 0.0 0.0 {Tags:["PlayerData","CurPlayerData","NewPlayerData"]}
scoreboard players operation @e[tag=CurPlayerData] id = @s id
data modify entity @e[tag=CurPlayerData,limit=1] data.info set from storage dgt_db:main return
function dgt_player:update_marker_full
tag @e[tag=NewPlayerData] remove NewPlayerData
