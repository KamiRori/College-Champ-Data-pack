

execute if score minute master.timer matches 0 if score second master.timer matches 1 if score pause master.timer matches 0 run schedule function moveroyale:round_start 1s
execute if score minute master.timer matches 0 if score second master.timer matches 0 run return 1

# Time announce
execute if score minute master.timer matches 0 if score second master.timer matches 10 if score pause master.timer matches 0 run function moveroyale:timeannounce/10
execute if score minute master.timer matches 0 if score second master.timer matches 9 if score pause master.timer matches 0 run function moveroyale:timeannounce/9
execute if score minute master.timer matches 0 if score second master.timer matches 8 if score pause master.timer matches 0 run function moveroyale:timeannounce/8
execute if score minute master.timer matches 0 if score second master.timer matches 7 if score pause master.timer matches 0 run function moveroyale:timeannounce/7
execute if score minute master.timer matches 0 if score second master.timer matches 6 if score pause master.timer matches 0 run function moveroyale:timeannounce/6
execute if score minute master.timer matches 0 if score second master.timer matches 5 if score pause master.timer matches 0 run function moveroyale:timeannounce/5
execute if score minute master.timer matches 0 if score second master.timer matches 4 if score pause master.timer matches 0 run function moveroyale:timeannounce/4
execute if score minute master.timer matches 0 if score second master.timer matches 3 if score pause master.timer matches 0 run function moveroyale:timeannounce/3
execute if score minute master.timer matches 0 if score second master.timer matches 2 if score pause master.timer matches 0 run function moveroyale:timeannounce/2
execute if score minute master.timer matches 0 if score second master.timer matches 1 if score pause master.timer matches 0 run function moveroyale:timeannounce/1
schedule function moveroyale:beginlistener/loop_start 1s
