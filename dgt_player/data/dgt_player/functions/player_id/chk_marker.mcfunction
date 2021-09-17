tellraw @a[tag=debug] {"text":"debug: ","color":"red","extra":[{"text":"chk_marker"}]}
execute as @e[type=minecraft:marker,tag=PlayerData] if score @s id = @p[tag=CurPlayer] id run function dgt_player:player_id/chk_marker_player
