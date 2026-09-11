

tellraw @s "[§6Dev§f] Cleared the §6nearest anchor§f."
execute as @e[type=marker,tag=maze_anchors,sort=nearest,limit=1] at @s run particle block_marker barrier ~ ~1.5 ~ 0 0 0 1 0 force
kill @e[type=marker,tag=maze_anchors,sort=nearest,limit=1]
