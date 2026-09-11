

tellraw @s "[§6Dev§f] Cleared the §6nearest Main Room anchor§f."
execute as @e[type=marker,tag=maze_room_main_anchor,sort=nearest,limit=1,distance=0..10] at @s run particle block_marker barrier ~ ~1.5 ~ 0 0 0 1 0 force
kill @e[type=marker,tag=maze_room_main_anchor,sort=nearest,limit=1,distance=0..10]
