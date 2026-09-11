
tellraw @s "[§6Dev§f] Cleared the §6nearest text display entity§f."
execute as @e[type=text_display,sort=nearest,limit=1,distance=0..10,tag=maze_text_display] at @s run particle block_marker barrier ~ ~1.5 ~ 0 0 0 1 0 force
kill @e[type=text_display,sort=nearest,limit=1,distance=0..10,tag=maze_text_display]