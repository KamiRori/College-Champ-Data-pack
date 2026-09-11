
tellraw @s ["§c[§r鼱§c]§r 你的抬升道具顺便帮你把火球充能次数充满了。"]
scoreboard players set @s rsr_updraft_time 5
effect give @s levitation 1 100 true
scoreboard players set @s rsr_dura_recharges 3