
# if already exists, void the current loop
$execute if score @s maze_objective_search_required_$(id) matches 1.. run return 0

scoreboard players remove $itemsToAssign maze_temp_1 1
$execute store result score @s maze_objective_search_required_$(id) run random value 2..5