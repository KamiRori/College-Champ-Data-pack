

execute as @e[type=marker,tag=maze_anchors,tag=room_gate] at @s run particle block_marker iron_bars ~ ~1.5 ~ 0 0 0 1 0
schedule function maze:map/anchors/view/loop 2t