tellraw @a[tag=debug] {"text":"debug: ","color":"red","extra":[{"text":"chk_upd_from_marker"}]}
execute store result score <dgt_player.temp> playtime_ticks run data get entity @e[tag=CurPlayerData,limit=1] data.info.playtime_ticks 1
scoreboard players add @s playtime_ticks 0
execute if score <dgt_player.temp> playtime_ticks > @s playtime_ticks run function dgt_player:player_id/upd_from_marker
scoreboard players reset <dgt_player.temp> playtime_ticks
