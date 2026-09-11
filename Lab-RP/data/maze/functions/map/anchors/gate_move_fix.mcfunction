

tellraw @s "[§6Dev§f] Attempted the anchor fix."
execute as @e[type=marker,tag=maze_anchors,sort=nearest,limit=1] at @s run particle block_marker barrier ~ ~1.5 ~ 0 0 0 1 0 force
execute as @e[type=marker,tag=maze_anchors,sort=nearest,limit=1] at @s run tag @s add toMove

# NE FIX
execute as @e[type=marker,tag=maze_anchors,tag=toMove,tag=diag_ne,sort=nearest,limit=1] at @s run fill ~ ~ ~ ~ ~ ~ oak_planks
execute as @e[type=marker,tag=maze_anchors,tag=toMove,tag=diag_ne,sort=nearest,limit=1] at @s run fill ~-1 ~ ~1 ~-1 ~ ~1 oak_planks
execute as @e[type=marker,tag=maze_anchors,tag=toMove,tag=diag_ne,sort=nearest,limit=1] at @s run fill ~1 ~ ~-1 ~1 ~ ~-1 oak_planks

execute as @e[type=marker,tag=maze_anchors,tag=toMove,tag=diag_ne,sort=nearest,limit=1] at @s run tp @s ~1 ~ ~-1

execute as @e[type=marker,tag=maze_anchors,tag=toMove,tag=diag_ne,sort=nearest,limit=1] at @s run fill ~ ~ ~ ~ ~ ~ netherite_block
execute as @e[type=marker,tag=maze_anchors,tag=toMove,tag=diag_ne,sort=nearest,limit=1] at @s run fill ~-1 ~ ~1 ~-1 ~ ~1 netherite_block
execute as @e[type=marker,tag=maze_anchors,tag=toMove,tag=diag_ne,sort=nearest,limit=1] at @s run fill ~1 ~ ~-1 ~1 ~ ~-1 netherite_block

# NW FIX
execute as @e[type=marker,tag=maze_anchors,tag=toMove,tag=diag_nw,sort=nearest,limit=1] at @s run fill ~ ~ ~ ~ ~ ~ oak_planks
execute as @e[type=marker,tag=maze_anchors,tag=toMove,tag=diag_nw,sort=nearest,limit=1] at @s run fill ~-1 ~ ~-1 ~-1 ~ ~-1 oak_planks
execute as @e[type=marker,tag=maze_anchors,tag=toMove,tag=diag_nw,sort=nearest,limit=1] at @s run fill ~1 ~ ~1 ~1 ~ ~1 oak_planks

execute as @e[type=marker,tag=maze_anchors,tag=toMove,tag=diag_nw,sort=nearest,limit=1] at @s run tp @s ~-1 ~ ~-1

execute as @e[type=marker,tag=maze_anchors,tag=toMove,tag=diag_nw,sort=nearest,limit=1] at @s run fill ~ ~ ~ ~ ~ ~ netherite_block
execute as @e[type=marker,tag=maze_anchors,tag=toMove,tag=diag_nw,sort=nearest,limit=1] at @s run fill ~-1 ~ ~1 ~-1 ~ ~-1 netherite_block
execute as @e[type=marker,tag=maze_anchors,tag=toMove,tag=diag_nw,sort=nearest,limit=1] at @s run fill ~1 ~ ~1 ~1 ~ ~1 netherite_block

execute as @e[type=marker,tag=maze_anchors,tag=toMove] at @s run tag @s remove toMove


