tellraw @a[tag=debug] {"text":"debug: ","color":"red","extra":[{"text":"chk_playerid"}]}
tag @e remove CurPlayer
tag @e remove CurPlayerData
tag @s remove id_done
tag @s add CurPlayer

# if no id -> check uuid
execute unless score @s id = @s id run function dgt_player:player_id/chk_noid
# if id -> check and select marker if found
execute if score @s id = @s id run function dgt_player:player_id/chk_marker
# if id & not id_done and not marker -> check the id
execute if score @s[tag=!id_done] id = @s id unless entity @e[tag=CurPlayerData] run function dgt_player:player_id/chk_id
# if nothing found, check the id against the uuid
execute if score @s[tag=!id_done] id = @s id unless entity @e[tag=CurPlayerData] unless data storage dgt_player:temp check.IDDiff run function dgt_player:player_id/chk_id_not_found
# if no id and not previously checked for uuid -> check uuid
execute unless entity @s[tag=id_done] unless score @s id = @s id run function dgt_player:player_id/chk_uuid
# All checks are done, if no id -> get a new id (and fill info-structures
execute unless score @s id = @s id run function dgt_player:player_id/new_id
# if no marker, create one and fill with current data
execute unless entity @e[tag=CurPlayerData] run function dgt_player:player_id/cre_marker 
# check if we need to update the player from the marker-info
function dgt_player:player_id/chk_upd_from_marker

data remove storage dgt_player:temp check
function dgt_db:reset
tag @a remove id_done
tag @e remove CurPlayerData
tag @e remove CurPlayer
