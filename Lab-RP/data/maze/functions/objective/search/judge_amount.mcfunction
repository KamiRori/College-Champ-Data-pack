## MATCH
execute if score @s maze_objective_search_progress_1 = @s maze_objective_search_required_1 run scoreboard players add $matched maze_temp_1 1
execute if score @s maze_objective_search_progress_2 = @s maze_objective_search_required_2 run scoreboard players add $matched maze_temp_1 1
execute if score @s maze_objective_search_progress_3 = @s maze_objective_search_required_3 run scoreboard players add $matched maze_temp_1 1
execute if score @s maze_objective_search_progress_4 = @s maze_objective_search_required_4 run scoreboard players add $matched maze_temp_1 1
execute if score @s maze_objective_search_progress_5 = @s maze_objective_search_required_5 run scoreboard players add $matched maze_temp_1 1
execute if score @s maze_objective_search_progress_6 = @s maze_objective_search_required_6 run scoreboard players add $matched maze_temp_1 1
execute if score @s maze_objective_search_progress_7 = @s maze_objective_search_required_7 run scoreboard players add $matched maze_temp_1 1
execute if score @s maze_objective_search_progress_8 = @s maze_objective_search_required_8 run scoreboard players add $matched maze_temp_1 1
execute if score @s maze_objective_search_progress_9 = @s maze_objective_search_required_9 run scoreboard players add $matched maze_temp_1 1
execute if score @s maze_objective_search_progress_10 = @s maze_objective_search_required_10 run scoreboard players add $matched maze_temp_1 1

## EXCEEDED (FAIL)
execute if score @s maze_objective_search_progress_1 > @s maze_objective_search_required_1 run scoreboard players set $matched maze_temp_1 -9999
execute if score @s maze_objective_search_progress_2 > @s maze_objective_search_required_2 run scoreboard players set $matched maze_temp_1 -9999
execute if score @s maze_objective_search_progress_3 > @s maze_objective_search_required_3 run scoreboard players set $matched maze_temp_1 -9999
execute if score @s maze_objective_search_progress_4 > @s maze_objective_search_required_4 run scoreboard players set $matched maze_temp_1 -9999
execute if score @s maze_objective_search_progress_5 > @s maze_objective_search_required_5 run scoreboard players set $matched maze_temp_1 -9999
execute if score @s maze_objective_search_progress_6 > @s maze_objective_search_required_6 run scoreboard players set $matched maze_temp_1 -9999
execute if score @s maze_objective_search_progress_7 > @s maze_objective_search_required_7 run scoreboard players set $matched maze_temp_1 -9999
execute if score @s maze_objective_search_progress_8 > @s maze_objective_search_required_8 run scoreboard players set $matched maze_temp_1 -9999
execute if score @s maze_objective_search_progress_9 > @s maze_objective_search_required_9 run scoreboard players set $matched maze_temp_1 -9999
execute if score @s maze_objective_search_progress_10 > @s maze_objective_search_required_10 run scoreboard players set $matched maze_temp_1 -9999

# 