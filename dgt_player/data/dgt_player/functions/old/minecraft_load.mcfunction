scoreboard objectives add id dummy
scoreboard objectives add num dummy
scoreboard objectives add tmp dummy
scoreboard objectives add playtime_ticks minecraft.custom:minecraft.play_time "Playtime"
scoreboard objectives add leave_game minecraft.custom:minecraft.leave_game "Leave game"

scoreboard players set #1 num 1
scoreboard players set #10000 num 10000

execute unless score <dgt_player.marker_live> num matches 0.. run scoreboard players set <dgt_player.marker_live> num 10
execute unless score <dgt_player.main> id matches 0.. run scoreboard players set <dgt_player.main> id 0

schedule function dgt_player:update_markers 1t

tellraw @a {"text":"Datapack dgt_player is loaded","color":"aqua"}
