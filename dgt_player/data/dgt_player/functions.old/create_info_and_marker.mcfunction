# Find any existing UUID with the same UUID[3]
function dgt_db:reset
# Get UUID-info
data modify storage dgt_db:main var.tree set from storage dgt_player:main UUID
data modify storage dgt_db:main var.id set from entity @s UUID[3]
data modify storage dgt_db:main var.command set value 'get_id'
function dgt_db:run
data modify storage dgt_db:main var.insert.UUIDs set from storage dgt_db:main return.UUIDs
# Create UUID-entry
function dgt_db:reset
# Set command-stuff
data modify storage dgt_db:main var.tree set from storage dgt_player:main UUID
data modify storage dgt_db:main var.id set from entity @s UUID[3]
data modify storage dgt_db:main var.command set value 'set_id'
# Set the data to insert/update
data modify storage dgt_db:main var.insert.UUIDs append value {}
data modify storage dgt_db:main var.insert.UUIDs[0].UUID set from entity @s UUID
execute store result storage dgt_db:main var.insert.UUIDs[0].id int 1 run scoreboard players get @s id
# Execute the database-function
function dgt_db:run
# Store the result in the ID
data modify storage dgt_player:main UUID set from storage dgt_db:main return

# Create ID-entry
function dgt_db:reset
# Set command-stuff
data modify storage dgt_db:main var.tree set from storage dgt_player:main ID
execute store result storage dgt_db:main var.id int 1 run scoreboard players get @s id
data modify storage dgt_db:main var.command set value 'set_id'
# Set the data to insert/update
data modify storage dgt_db:main var.insert set value {}
data modify storage dgt_db:main var.insert.id set from storage dgt_db:main var.id
data modify storage dgt_db:main var.insert.UUID set from entity @s UUID
# Execute the database-function
function dgt_db:run
# Store the result in the ID
data modify storage dgt_player:main ID set from storage dgt_db:main return

# Create the Marker
function create_marker_from_id

data remove storage dgt_player:temp var