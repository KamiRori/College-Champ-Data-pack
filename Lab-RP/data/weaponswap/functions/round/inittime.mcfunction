
execute if score minute master.timer matches 0 if score second master.timer matches 11 if score pause master.timer matches 0 if score round ws_game matches 1 run function weaponswap:timeannounce/10
execute if score minute master.timer matches 0 if score second master.timer matches 10 if score pause master.timer matches 0 if score round ws_game matches 1 run function weaponswap:timeannounce/9
execute if score minute master.timer matches 0 if score second master.timer matches 9 if score pause master.timer matches 0 if score round ws_game matches 1 run function weaponswap:timeannounce/8
execute if score minute master.timer matches 0 if score second master.timer matches 8 if score pause master.timer matches 0 if score round ws_game matches 1 run function weaponswap:timeannounce/7
execute if score minute master.timer matches 0 if score second master.timer matches 7 if score pause master.timer matches 0 if score round ws_game matches 1 run function weaponswap:timeannounce/6
execute if score minute master.timer matches 0 if score second master.timer matches 6 if score pause master.timer matches 0 if score round ws_game matches 1 run function weaponswap:timeannounce/5
execute if score minute master.timer matches 0 if score second master.timer matches 5 if score pause master.timer matches 0 if score round ws_game matches 1 run function weaponswap:timeannounce/4
execute if score minute master.timer matches 0 if score second master.timer matches 4 if score pause master.timer matches 0 if score round ws_game matches 1 run function weaponswap:timeannounce/3
execute if score minute master.timer matches 0 if score second master.timer matches 3 if score pause master.timer matches 0 if score round ws_game matches 1 run function weaponswap:timeannounce/2
execute if score minute master.timer matches 0 if score second master.timer matches 2 if score pause master.timer matches 0 if score round ws_game matches 1 run function weaponswap:timeannounce/1

execute if score minute master.timer matches 0 if score second master.timer matches 10 if score pause master.timer matches 0 if score round ws_game matches 2..3 run function weaponswap:timeannounce/10
execute if score minute master.timer matches 0 if score second master.timer matches 9 if score pause master.timer matches 0 if score round ws_game matches 2..3 run function weaponswap:timeannounce/9
execute if score minute master.timer matches 0 if score second master.timer matches 8 if score pause master.timer matches 0 if score round ws_game matches 2..3 run function weaponswap:timeannounce/8
execute if score minute master.timer matches 0 if score second master.timer matches 7 if score pause master.timer matches 0 if score round ws_game matches 2..3 run function weaponswap:timeannounce/7
execute if score minute master.timer matches 0 if score second master.timer matches 6 if score pause master.timer matches 0 if score round ws_game matches 2..3 run function weaponswap:timeannounce/6
execute if score minute master.timer matches 0 if score second master.timer matches 5 if score pause master.timer matches 0 if score round ws_game matches 2..3 run function weaponswap:timeannounce/5
execute if score minute master.timer matches 0 if score second master.timer matches 4 if score pause master.timer matches 0 if score round ws_game matches 2..3 run function weaponswap:timeannounce/4
execute if score minute master.timer matches 0 if score second master.timer matches 3 if score pause master.timer matches 0 if score round ws_game matches 2..3 run function weaponswap:timeannounce/3
execute if score minute master.timer matches 0 if score second master.timer matches 2 if score pause master.timer matches 0 if score round ws_game matches 2..3 run function weaponswap:timeannounce/2
execute if score minute master.timer matches 0 if score second master.timer matches 1 if score pause master.timer matches 0 if score round ws_game matches 2..3 run function weaponswap:timeannounce/1

execute if score minute master.timer matches 0 if score second master.timer matches 1 if score round ws_game matches 1 run function weaponswap:round/1/start
execute if score minute master.timer matches 0 if score second master.timer matches 1 if score round ws_game matches 2 run schedule function weaponswap:round/2/start 1s
execute if score minute master.timer matches 0 if score second master.timer matches 1 if score round ws_game matches 3 run schedule function weaponswap:round/3/start 1s

execute if score minute master.timer matches 0 if score second master.timer matches 1 if score round ws_game matches 2..3 run scoreboard players set pregame ws_game 0
# Loop
execute if score pregame ws_game matches 1 run schedule function weaponswap:round/inittime 1s