# Main function to update all Player-markers or delete them if player has been offline for a certain time
execute as @e[type=marker,tag=PlayerData,scores={num=1..}] run scoreboard players remove @s num 1
execute as @a run function dgt_player:update_player_marker
execute as @e[type=marker,tag=PlayerData,scores={num=0}] run function dgt_player:remove_marker
schedule function dgt_player:update_players_marker 60s
