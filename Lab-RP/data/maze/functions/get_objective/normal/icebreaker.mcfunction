
tag @s add getting_challenge
# Universal registeration
scoreboard players add $current maze_objective_id 1
scoreboard players operation @s maze_objective_attempting = $current maze_objective_id
# Should be ran by the player that initiates the challenge (as @..)
execute as @e[type=marker,tag=maze_objective,tag=difficulty_normal,tag=type_icebreaker,tag=!state_inuse,limit=1,sort=random] run tag @s add selected_challenge
# Register challenge id
scoreboard players operation @e[type=marker,tag=maze_objective,tag=selected_challenge] maze_objective_id = $current maze_objective_id

# Run challenge specific setup
execute as @e[type=marker,tag=maze_objective,tag=selected_challenge] at @s run function maze:objective/icebreaker/setup_normal

# FX
title @s times 5 30 5
title @s title "§b§l破冰挑战"
title @s subtitle "将§b左边§f的冰雕复制到§6右边"

# Time Limit
scoreboard players operation @s maze_objective_time_limit = $icebreaker_normal maze_objective_time_limit
scoreboard players set @s maze_objective_time_elapsed 0

# Cleanup
execute as @e[type=marker,tag=maze_objective] run tag @s remove selected_challenge
tag @s remove getting_challenge