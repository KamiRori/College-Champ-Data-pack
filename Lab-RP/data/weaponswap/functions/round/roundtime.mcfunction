# Border, and increase swap speed overtime.
execute if score map ws_game matches 1 if score minute master.timer matches 4 if score second master.timer matches 0 run function weaponswap:border/startwidth
execute if score map ws_game matches 1 if score minute master.timer matches 5 if score second master.timer matches 0 run function weaponswap:swap_logic/swap_speed_up/1
execute if score map ws_game matches 1 if score minute master.timer matches 3 if score second master.timer matches 40 run function weaponswap:swap_logic/swap_speed_up/2
execute if score map ws_game matches 1 if score minute master.timer matches 2 if score second master.timer matches 40 run function weaponswap:swap_logic/swap_speed_up/3
execute if score map ws_game matches 1 if score minute master.timer matches 2 if score second master.timer matches 0 run function weaponswap:swap_logic/swap_speed_up/4
execute if score map ws_game matches 1 if score minute master.timer matches 1 if score second master.timer matches 20 run function weaponswap:swap_logic/swap_speed_up/5


execute if score gameflag ws_game matches 1 if score minute master.timer matches 0.. run schedule function weaponswap:round/roundtime 1s