
# Check Button Pressed
execute as @e[type=marker,tag=maze_room_main_anchor] at @s if block ~ ~ ~ oak_button[powered=true] run function maze:maze_room_action/pressed_check

execute if score gameflag maze_game matches 1 run schedule function maze:maze_room_action/tick 1t