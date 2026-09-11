scoreboard players set swap_interval ws_swap_main 220
scoreboard players set swap_spread_1 ws_swap_main 36
scoreboard players set swap_spread_2 ws_swap_main 18
scoreboard players set swap_spread_3 ws_swap_main 0
scoreboard players set swap_spread_4 ws_swap_main -18
scoreboard players set swap_spread_5 ws_swap_main -36

tellraw @a ["","§3[§r尢§3] ","§3武器交换频率提升到约每",{"text":"11","color":"#E3E3E3"},"§3秒一次！"]
effect give @a[gamemode=!spectator] glowing 5 0 true