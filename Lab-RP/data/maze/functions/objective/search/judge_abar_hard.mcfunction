

# TICK -> SEC
scoreboard players operation $sec_elapsed maze_temp_1 = $elapsed maze_objective_time_limit
scoreboard players operation $ms_elapsed maze_temp_1 = $elapsed maze_objective_time_limit

scoreboard players operation $max maze_temp_1 = $max maze_objective_time_limit

scoreboard players operation $sec_elapsed maze_temp_1 /= 20 math
scoreboard players operation $ms_elapsed maze_temp_1 %= 20 math
scoreboard players operation $ms_elapsed maze_temp_1 /= 2 math

scoreboard players operation $max maze_temp_1 /= 20 math

# Normal Mode: shows item collected
title @s actionbar [{"text":"","color": "#66CCFF"},"§b[§r褎§b] ",{"score":{"name": "$sec_elapsed","objective": "maze_temp_1"}},".",{"score":{"name": "$ms_elapsed","objective": "maze_temp_1"}},"§f/",{"score":{"name": "$max","objective": "maze_temp_1"},"color":"gray"},"§7s"," §8- ","§6挖掘指定数量的指定方块。"]