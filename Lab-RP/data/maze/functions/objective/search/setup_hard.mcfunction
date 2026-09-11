
# Objective Build
clone ~-14 ~-10 ~-7 ~14 ~-10 ~11 ~-14 ~ ~-7

# Item Given
give @a[tag=getting_challenge] iron_pickaxe{CanDestroy:[diamond_block,gold_block,coal_block,lapis_block,raw_gold_block,iron_block,quartz_bricks,prismarine_bricks,basalt,copper_block],challengeItem:1}

# Teleport
tp @a[tag=getting_challenge] ~ ~ ~-16 0 0

# Assign Type and Amount (Normal Mode will have 6 target items and 2-5 to collect for each type)
scoreboard players set @s maze_objective_search_progress_1 0
scoreboard players set @s maze_objective_search_progress_2 0
scoreboard players set @s maze_objective_search_progress_3 0
scoreboard players set @s maze_objective_search_progress_4 0
scoreboard players set @s maze_objective_search_progress_5 0
scoreboard players set @s maze_objective_search_progress_6 0
scoreboard players set @s maze_objective_search_progress_7 0
scoreboard players set @s maze_objective_search_progress_8 0
scoreboard players set @s maze_objective_search_progress_9 0
scoreboard players set @s maze_objective_search_progress_10 0

scoreboard players set @s maze_objective_search_required_1 0
scoreboard players set @s maze_objective_search_required_2 0
scoreboard players set @s maze_objective_search_required_3 0
scoreboard players set @s maze_objective_search_required_4 0
scoreboard players set @s maze_objective_search_required_5 0
scoreboard players set @s maze_objective_search_required_6 0
scoreboard players set @s maze_objective_search_required_7 0
scoreboard players set @s maze_objective_search_required_8 0
scoreboard players set @s maze_objective_search_required_9 0
scoreboard players set @s maze_objective_search_required_10 0

scoreboard players set $itemsToAssign maze_temp_1 6
function maze:objective/search/loop_get_target_item
# Flags the anchor as in use.
tag @s add state_inuse