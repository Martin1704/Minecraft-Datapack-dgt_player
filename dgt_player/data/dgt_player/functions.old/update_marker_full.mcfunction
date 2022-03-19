execute unless entity @e[tag=NewPlayerData] run tag @s add CurPlayer
execute as @e[type=minecraft:marker,tag=PlayerData] if score @s id = @p[tag=CurPlayer] id run function dgt_player:update_marker_do
loot spawn ~ ~ ~ loot dgt_player:player_marker
data modify entity @e[tag=CurPlayerData,limit=1] CustomName set from entity @e[nbt={Item:{tag:{dgt_player:"tempmarkerhead"}}},sort=nearest,limit=1] Item.tag.display.Name
kill @e[nbt={Item:{tag:{dgt_player:"tempmarkerhead"}}},sort=nearest,limit=1]
loot spawn ~ ~ ~ loot dgt_player:player_temphead
data modify entity @e[tag=CurPlayerData,limit=1] data.Name set from entity @e[nbt={Item:{tag:{dgt_player:"temphead"}}},sort=nearest,limit=1] Item.tag.SkullOwner.Name
data modify entity @e[tag=CurPlayerData,limit=1] data.SUUID set from entity @e[nbt={Item:{tag:{dgt_player:"temphead"}}},sort=nearest,limit=1] Item.tag.SkullOwner.Id
data modify entity @e[tag=CurPlayerData,limit=1] data.DisplayName set from entity @e[nbt={Item:{tag:{dgt_player:"temphead"}}},sort=nearest,limit=1] Item.tag.display.Name
kill @e[nbt={Item:{tag:{dgt_player:"temphead"}}},sort=nearest,limit=1]
execute unless entity @e[tag=NewPlayerData] run tag @s remove CurPlayer
execute unless entity @e[tag=NewPlayerData] run tag @e[type=minecraft:marker,tag=CurPlayerData] remove CurPlayerData
