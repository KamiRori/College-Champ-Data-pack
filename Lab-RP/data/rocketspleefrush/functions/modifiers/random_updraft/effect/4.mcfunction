
tellraw @s ["§c[§r鼱§c]§r 你的抬升道具决定给你放一段音乐。"]
execute at @s run playsound minecraft:music.overtime_loop voice @s

scoreboard players set @s rsr_updraft_time 5
effect give @s levitation 1 100 true