tellraw @a[tag=debug] {"text":"debug: ","color":"red","extra":[{"text":"new_id"}]}
scoreboard players operation <dgt_player.main> id += #1 num
scoreboard players operation @s id = <dgt_player.main> id
# add to ID & UUID
function dgt_player:player_id/cre_id_data
function dgt_player:player_id/cre_uuid_data
