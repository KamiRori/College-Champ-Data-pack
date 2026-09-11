

tellraw @s "[§6Dev§f] Stopped gate direction test§f."

execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=st] at @s run fill ~ ~ ~1 ~ ~3 ~-1 air

execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_ne] at @s run fill ~ ~ ~ ~ ~3 ~ air
execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_ne] at @s run fill ~-1 ~ ~1 ~-1 ~3 ~1 air
execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_ne] at @s run fill ~1 ~ ~-1 ~1 ~3 ~-1 air

execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_nw] at @s run fill ~ ~ ~ ~ ~3 ~ air
execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_nw] at @s run fill ~1 ~ ~1 ~1 ~3 ~1 air
execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_nw] at @s run fill ~-1 ~ ~-1 ~-1 ~3 ~-1 air

execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=st] at @s run fill ~ ~ ~1 ~ ~ ~-1 netherite_block

execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_ne] at @s run fill ~ ~ ~ ~ ~ ~ netherite_block
execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_ne] at @s run fill ~-1 ~ ~1 ~-1 ~ ~1 netherite_block
execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_ne] at @s run fill ~1 ~ ~-1 ~1 ~ ~-1 netherite_block

execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_nw] at @s run fill ~ ~ ~ ~ ~ ~ netherite_block
execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_nw] at @s run fill ~1 ~ ~1 ~1 ~ ~1 netherite_block
execute as @e[type=marker,tag=maze_anchors,tag=room_gate,tag=diag_nw] at @s run fill ~-1 ~ ~-1 ~-1 ~ ~-1 netherite_block