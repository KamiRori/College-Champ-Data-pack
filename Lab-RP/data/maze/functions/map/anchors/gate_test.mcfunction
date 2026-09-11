

tellraw @s "[§6Dev§f] Executed gate direction test§f."

execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=st] at @s run fill ~ ~ ~1 ~ ~3 ~-1 diamond_block

execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_ne] at @s run fill ~ ~ ~ ~ ~3 ~ diamond_block
execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_ne] at @s run fill ~-1 ~ ~1 ~-1 ~3 ~1 diamond_block
execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_ne] at @s run fill ~1 ~ ~-1 ~1 ~3 ~-1 diamond_block

execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_nw] at @s run fill ~ ~ ~ ~ ~3 ~ diamond_block
execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_nw] at @s run fill ~1 ~ ~1 ~1 ~3 ~1 diamond_block
execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_nw] at @s run fill ~-1 ~ ~-1 ~-1 ~3 ~-1 diamond_block