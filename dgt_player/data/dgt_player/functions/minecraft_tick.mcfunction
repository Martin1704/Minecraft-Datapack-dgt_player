execute as @a unless score @s playtime_ticks matches 4.. run tellraw @a [{"selector":"@s"},{"text":" playtime: "},{"score":{"name":"@s","objective":"playtime_ticks"}}]
