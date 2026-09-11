
# Assign the anchor to teleport back to when objective is done
summon marker ~ ~ ~ {Tags:["maze_objective_return_anchor"]}
scoreboard players operation @e[type=marker,tag=maze_objective_return_anchor,tag=!assigned_pid] maze_return_anchor_pid = @s maze_pid
tag @e[type=marker,tag=maze_objective_return_anchor,tag=!assigned_pid] add assigned_pid

# Challenge id
$scoreboard players set @s maze_room_attempting $(roomId)

# Adds an attempt count to current room
$execute if score @s maze_tid matches 1 run scoreboard players add $(roomId) maze_room_attempt_count_red 1
$execute if score @s maze_tid matches 2 run scoreboard players add $(roomId) maze_room_attempt_count_blue 1
$execute if score @s maze_tid matches 3 run scoreboard players add $(roomId) maze_room_attempt_count_green 1
$execute if score @s maze_tid matches 4 run scoreboard players add $(roomId) maze_room_attempt_count_yellow 1
$execute if score @s maze_tid matches 5 run scoreboard players add $(roomId) maze_room_attempt_count_cyan 1
$execute if score @s maze_tid matches 6 run scoreboard players add $(roomId) maze_room_attempt_count_pink 1
$execute if score @s maze_tid matches 7 run scoreboard players add $(roomId) maze_room_attempt_count_orange 1
$execute if score @s maze_tid matches 8 run scoreboard players add $(roomId) maze_room_attempt_count_purple 1

# Get Challenge Type
execute store result score @s maze_objective_rand run random value 1..2

# Checks if the room is hard
scoreboard players set $hard maze_temp_1 0
$execute if score $(roomId) maze_room_capture matches 1 if score red maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1
$execute if score $(roomId) maze_room_capture matches 2 if score blue maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1
$execute if score $(roomId) maze_room_capture matches 3 if score green maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1
$execute if score $(roomId) maze_room_capture matches 4 if score yellow maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1
$execute if score $(roomId) maze_room_capture matches 5 if score cyan maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1
$execute if score $(roomId) maze_room_capture matches 6 if score pink maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1
$execute if score $(roomId) maze_room_capture matches 7 if score orange maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1
$execute if score $(roomId) maze_room_capture matches 8 if score purple maze_hard_objective_timer matches 1.. run scoreboard players set $hard maze_temp_1 1

# Start a challenge according to the room challenge type.
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 1 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/icebreaker
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 2 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/parkour
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 3 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/path
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 4 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/pve
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 5 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/rescue
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 6 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/search

$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 1 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/icebreaker
$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 2 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/parkour
$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 3 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/path
$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 4 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/pve
$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 5 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/rescue
$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 6 if score $hard maze_temp_1 matches 1 run function maze:get_objective/hard/search

## Normal
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 1 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/icebreaker
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 2 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/parkour
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 3 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/path
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 4 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/pve
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 5 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/rescue
$execute if score @s maze_objective_rand matches 1 if score $(roomId) maze_room_type_1 matches 6 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/search

$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 1 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/icebreaker
$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 2 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/parkour
$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 3 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/path
$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 4 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/pve
$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 5 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/rescue
$execute if score @s maze_objective_rand matches 2 if score $(roomId) maze_room_type_2 matches 6 if score $hard maze_temp_1 matches 0 run function maze:get_objective/normal/search