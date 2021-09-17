function dgt_db:reset
data modify storage dgt_db:main var.insert.UUIDs append value {}
data modify storage dgt_db:main var.insert.UUIDs[0].UUID set from entity @s UUID
execute store result storage dgt_db:main var.insert.UUIDs[0].id int 1 run scoreboard players get @s id
data modify storage dgt_db:main var.tree set from storage dgt_player:main UUID
data modify storage dgt_db:main var.id set from entity @s UUID[3]
data modify storage dgt_db:main var.command set value 'set_id'
function dgt_db:run
data modify storage dgt_player:main UUID set from storage dgt_db:main return

function dgt_db:reset
data modify storage dgt_db:main var.insert set value {}
data modify storage dgt_db:main var.insert.UUID set from entity @s UUID
execute store result storage dgt_db:main var.insert.id int 1 run scoreboard players get @s id
data modify storage dgt_db:main var.tree set from storage dgt_player:main ID
data modify storage dgt_db:main var.id set from storage dgt_db:main var.insert.id
data modify storage dgt_db:main var.command set value 'set_id'
function dgt_db:run
data modify storage dgt_player:main ID set from storage dgt_db:main return
