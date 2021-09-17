tellraw @a[tag=debug] {"text":"debug: ","color":"red","extra":[{"text":"chk_id_not_found"}]}
scoreboard players operation <dgt_player.temp> id = @s id
function dgt_player:player_id/chk_uuid
# check if we got a new id -> id_done
execute if score @s id = @s id unless score <dgt_player.temp> id = @s id run tag @s add id_done
scoreboard players reset <dgt_player.temp> id
# if we found a new id, check if there's a marker
execute if entity @s[tag=id_done] run function dgt_player:player_id/chk_marker
