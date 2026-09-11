
# Adds an animation tick to everyone in animation
scoreboard players add @a[scores={maze_fx_type=1..}] maze_fx_tick 1

# Animation
execute as @a[scores={maze_fx_type=1}] at @s run function maze:fx/fail_objective
execute as @a[scores={maze_fx_type=2}] at @s run function maze:fx/complete_objective


execute if score gameflag maze_game matches 1 run schedule function maze:fx/tick 1t