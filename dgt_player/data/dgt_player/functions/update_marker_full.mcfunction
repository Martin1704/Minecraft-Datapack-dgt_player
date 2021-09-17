# Does a full-update for a Player-marker, should only be done at login
function dgt_player:update_marker
execute as @p[tag=CurPlayer] run loot spawn ~ ~ ~ loot dgt_player:marker_name
data modify entity @s CustomName set from entity @e[nbt={Item:{tag:{dgt_player:"marker_name"}}},sort=nearest,limit=1] Item.tag.display.Name
kill @e[nbt={Item:{tag:{dgt_player:"marker_name"}}},sort=nearest,limit=1]
execute as @p[tag=CurPlayer] run loot spawn ~ ~ ~ loot dgt_player:player_temphead
data modify entity @s data.Name set from entity @e[nbt={Item:{tag:{dgt_player:"temphead"}}},sort=nearest,limit=1] Item.tag.SkullOwner.Name
data modify entity @s data.SUUID set from entity @e[nbt={Item:{tag:{dgt_player:"temphead"}}},sort=nearest,limit=1] Item.tag.SkullOwner.Id
data modify entity @s data.DisplayName set from entity @e[nbt={Item:{tag:{dgt_player:"temphead"}}},sort=nearest,limit=1] Item.tag.display.Name
kill @e[nbt={Item:{tag:{dgt_player:"temphead"}}},sort=nearest,limit=1]
function #dgt_player:update_marker_full
