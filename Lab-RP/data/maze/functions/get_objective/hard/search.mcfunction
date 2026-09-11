
tag @s add getting_challenge
# Universal registeration
scoreboard players add $current maze_objective_id 1
scoreboard players operation @s maze_objective_attempting = $current maze_objective_id
# Should be ran by the player that initiates the challenge (as @..)
execute as @e[type=marker,tag=maze_objective,tag=difficulty_hard,tag=type_search,tag=!state_inuse,limit=1,sort=random] run tag @s add selected_challenge
# Register challenge id
scoreboard players operation @e[type=marker,tag=maze_objective,tag=selected_challenge] maze_objective_id = $current maze_objective_id

# Run challenge specific setup
execute as @e[type=marker,tag=maze_objective,tag=selected_challenge] at @s run function maze:objective/search/setup_hard

# FX
title @s times 5 30 5
title @s title "§6§l搜索挑战§c§l +"
title @s subtitle "采集指定数量的指定方块"

tellraw @s ["§e[§r獍§e] ","需采集的方块如下，§c采集多余的方块将会失败！"]
execute if score @s maze_objective_search_required_1 matches 1.. run tellraw @s ["  §7↪ ","钻石块: ",{"score":{"name": "@s","objective": "maze_objective_search_required_1"},"color": "gold"}]
execute if score @s maze_objective_search_required_2 matches 1.. run tellraw @s ["  §7↪ ","金块: ",{"score":{"name": "@s","objective": "maze_objective_search_required_2"},"color": "gold"}]
execute if score @s maze_objective_search_required_3 matches 1.. run tellraw @s ["  §7↪ ","煤炭块: ",{"score":{"name": "@s","objective": "maze_objective_search_required_3"},"color": "gold"}]
execute if score @s maze_objective_search_required_4 matches 1.. run tellraw @s ["  §7↪ ","青金石块: ",{"score":{"name": "@s","objective": "maze_objective_search_required_4"},"color": "gold"}]
execute if score @s maze_objective_search_required_5 matches 1.. run tellraw @s ["  §7↪ ","粗金块: ",{"score":{"name": "@s","objective": "maze_objective_search_required_5"},"color": "gold"}]
execute if score @s maze_objective_search_required_6 matches 1.. run tellraw @s ["  §7↪ ","铁块: ",{"score":{"name": "@s","objective": "maze_objective_search_required_6"},"color": "gold"}]
execute if score @s maze_objective_search_required_7 matches 1.. run tellraw @s ["  §7↪ ","石英砖: ",{"score":{"name": "@s","objective": "maze_objective_search_required_7"},"color": "gold"}]
execute if score @s maze_objective_search_required_8 matches 1.. run tellraw @s ["  §7↪ ","海晶石砖: ",{"score":{"name": "@s","objective": "maze_objective_search_required_8"},"color": "gold"}]
execute if score @s maze_objective_search_required_9 matches 1.. run tellraw @s ["  §7↪ ","玄武岩: ",{"score":{"name": "@s","objective": "maze_objective_search_required_9"},"color": "gold"}]
execute if score @s maze_objective_search_required_10 matches 1.. run tellraw @s ["  §7↪ ","铜块: ",{"score":{"name": "@s","objective": "maze_objective_search_required_10"},"color": "gold"}]

tellraw @s ["§c[§r鼱§c] ","§c房间难度已被强化！§7已采集的方块将不显示在状态栏中。"]
# Time Limit
scoreboard players operation @s maze_objective_time_limit = $search_hard maze_objective_time_limit
scoreboard players set @s maze_objective_time_elapsed 0

# Cleanup
execute as @e[type=marker,tag=maze_objective] run tag @s remove selected_challenge
tag @s remove getting_challenge