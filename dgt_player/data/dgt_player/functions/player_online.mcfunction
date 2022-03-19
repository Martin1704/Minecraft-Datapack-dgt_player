tellraw @a {"text":"Now online: ","extra":[{"selector":"@s"},{"text":" playtime:"},{"score":{"name":"@s","objective":"playtime_ticks"}}]}
scoreboard players reset @s leave_game
advancement revoke @s only dgt_player:player_online
# function dgt_player:check_player
