tellraw @a[tag=debug] {"text":"debug: ","color":"red","extra":[{"text":"chk_id"}]}
# Clear the db-functions
function dgt_db:reset
# Get ID-info
data modify storage dgt_db:main var.tree set from storage dgt_player:main ID
execute store result storage dgt_db:main var.id int 1 run scoreboard players get @s id
data modify storage dgt_db:main var.command set value 'get_id'
function dgt_db:run
# Check if UUID is correct, check{IDDiff:0} -> found and Ok, check{IDDiff:1} -> Found but different
execute if data storage dgt_db:main return.UUID store success storage dgt_player:temp check.IDDiff int 1 run data modify storage dgt_db:main return.UUID set from entity @s UUID
# UUID different -> reset Scoreboard for this player
execute if data storage dgt_player:temp check{IDDiff:1} run scoreboard players reset @s
