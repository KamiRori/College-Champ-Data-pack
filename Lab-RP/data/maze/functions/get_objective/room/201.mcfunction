
# Assign the anchor to teleport back to when objective is done
summon marker ~ ~ ~ {Tags:["maze_objective_return_anchor"]}
scoreboard players operation @e[type=marker,tag=maze_objective_return_anchor,tag=!assigned_pid] maze_return_anchor_pid = @s maze_pid
tag @e[type=marker,tag=maze_objective_return_anchor,tag=!assigned_pid] add assigned_pid

# Challenge id
scoreboard players set @s maze_room_attempting 201

# Get Challenge Type
execute store result score @s maze_objective_rand run random value 1..2

# Checks if the room is hard
scoreboard players set $hard maze_temp_1 0
execute if score 201 maze_room_capture matches 1 if score red maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1
execute if score 201 maze_room_capture matches 2 if score blue maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1
execute if score 201 maze_room_capture matches 3 if score green maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1
execute if score 201 maze_room_capture matches 4 if score yellow maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1
execute if score 201 maze_room_capture matches 5 if score cyan maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1
execute if score 201 maze_room_capture matches 6 if score pink maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1
execute if score 201 maze_room_capture matches 7 if score orange maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1
execute if score 201 maze_room_capture matches 8 if score purple maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1

# Start a challenge according to the room challenge type.
execute if score @s maze_objective_rand matches 1 if score 201 maze_room_type_1 matches 1 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/icebreaker
execute if score @s maze_objective_rand matches 1 if score 201 maze_room_type_1 matches 2 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/parkour
execute if score @s maze_objective_rand matches 1 if score 201 maze_room_type_1 matches 3 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/path
execute if score @s maze_objective_rand matches 1 if score 201 maze_room_type_1 matches 4 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/pve
execute if score @s maze_objective_rand matches 1 if score 201 maze_room_type_1 matches 5 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/rescue
execute if score @s maze_objective_rand matches 1 if score 201 maze_room_type_1 matches 6 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/search

execute if score @s maze_objective_rand matches 2 if score 201 maze_room_type_2 matches 1 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/icebreaker
execute if score @s maze_objective_rand matches 2 if score 201 maze_room_type_2 matches 2 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/parkour
execute if score @s maze_objective_rand matches 2 if score 201 maze_room_type_2 matches 3 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/path
execute if score @s maze_objective_rand matches 2 if score 201 maze_room_type_2 matches 4 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/pve
execute if score @s maze_objective_rand matches 2 if score 201 maze_room_type_2 matches 5 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/rescue
execute if score @s maze_objective_rand matches 2 if score 201 maze_room_type_2 matches 6 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/search

## Normal
execute if score @s maze_objective_rand matches 1 if score 201 maze_room_type_1 matches 1 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/icebreaker
execute if score @s maze_objective_rand matches 1 if score 201 maze_room_type_1 matches 2 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/parkour
execute if score @s maze_objective_rand matches 1 if score 201 maze_room_type_1 matches 3 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/path
execute if score @s maze_objective_rand matches 1 if score 201 maze_room_type_1 matches 4 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/pve
execute if score @s maze_objective_rand matches 1 if score 201 maze_room_type_1 matches 5 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/rescue
execute if score @s maze_objective_rand matches 1 if score 201 maze_room_type_1 matches 6 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/search

execute if score @s maze_objective_rand matches 2 if score 201 maze_room_type_2 matches 1 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/icebreaker
execute if score @s maze_objective_rand matches 2 if score 201 maze_room_type_2 matches 2 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/parkour
execute if score @s maze_objective_rand matches 2 if score 201 maze_room_type_2 matches 3 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/path
execute if score @s maze_objective_rand matches 2 if score 201 maze_room_type_2 matches 4 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/pve
execute if score @s maze_objective_rand matches 2 if score 201 maze_room_type_2 matches 5 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/rescue
execute if score @s maze_objective_rand matches 2 if score 201 maze_room_type_2 matches 6 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/search