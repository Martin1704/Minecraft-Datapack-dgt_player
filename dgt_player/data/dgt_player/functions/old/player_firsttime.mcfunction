tellraw @a {"text":"Firsttime online: ","extra":[{"selector":"@s"}]}
function dgt_player:check_player
advancement revoke @s only dgt_player:player_firsttime
