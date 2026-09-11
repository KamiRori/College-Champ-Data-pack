
# Assign the anchor to teleport back to when objective is done
summon marker ~ ~ ~ {Tags:["maze_objective_return_anchor"]}
scoreboard players operation @e[type=marker,tag=maze_objective_return_anchor,tag=!assigned_pid] maze_return_anchor_pid = @s maze_pid
tag @e[type=marker,tag=maze_objective_return_anchor,tag=!assigned_pid] add assigned_pid

# Challenge id
$scoreboard players set @s maze_room_attempting $(roomId)

# Get Challenge Type
execute store result score @s maze_objective_rand run random value 1..2

# Start a challenge according to the room challenge type. (Ring 1 Challenge is always hard, no need for checking)
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 1 run function maze:get_objective/hard/icebreaker
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 2 run function maze:get_objective/hard/parkour
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 3 run function maze:get_objective/hard/path
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 4 run function maze:get_objective/hard/pve
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 5 run function maze:get_objective/hard/rescue
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 6 run function maze:get_objective/hard/search

$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 1 run function maze:get_objective/hard/icebreaker
$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 2 run function maze:get_objective/hard/parkour
$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 3 run function maze:get_objective/hard/path
$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 4 run function maze:get_objective/hard/pve
$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 5 run function maze:get_objective/hard/rescue
$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 6 run function maze:get_objective/hard/search