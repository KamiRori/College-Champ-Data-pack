scoreboard players set swap_interval ws_swap_main 180
scoreboard players set swap_spread_1 ws_swap_main 24
scoreboard players set swap_spread_2 ws_swap_main 12
scoreboard players set swap_spread_3 ws_swap_main 0
scoreboard players set swap_spread_4 ws_swap_main -12
scoreboard players set swap_spread_5 ws_swap_main -24

scoreboard players set endtime ws_game 1
tellraw @a ["","§3[§r尢§3] ","§3武器交换频率提升到约每",{"text":"9","color":"#E3E3E3"},"§3秒一次！"]
tellraw @a ["","§c[§r尢§c] ","§c§l结束时间：","§f持剑者不再拥有无敌，且攻击力提升！"]
execute as @a at @s run playsound minecraft:sound.generalshrinkwarn record @s
effect give @a[gamemode=!spectator] glowing 5 0 true