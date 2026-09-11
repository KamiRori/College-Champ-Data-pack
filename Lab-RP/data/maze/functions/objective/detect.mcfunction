


execute as @e[type=marker,tag=maze_objective,tag=type_icebreaker,tag=state_inuse] at @s run function maze:objective/icebreaker/detect
execute as @e[type=marker,tag=maze_objective,tag=type_parkour,tag=state_inuse] at @s run function maze:objective/parkour/detect
execute as @e[type=marker,tag=maze_objective,tag=type_pve,tag=state_inuse] at @s run function maze:objective/pve/detect
execute as @e[type=marker,tag=maze_objective,tag=type_path,tag=state_inuse] at @s run function maze:objective/path/detect
execute as @e[type=marker,tag=maze_objective,tag=type_rescue,tag=state_inuse] at @s run function maze:objective/rescue/detect
execute as @e[type=marker,tag=maze_objective,tag=type_search,tag=state_inuse] at @s run function maze:objective/search/detect