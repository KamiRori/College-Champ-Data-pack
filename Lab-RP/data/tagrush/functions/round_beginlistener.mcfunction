
execute if score minute master.timer matches 0 if score second master.timer matches 10 if score pause master.timer matches 0 run function tagrush:timeannounce/10
execute if score minute master.timer matches 0 if score second master.timer matches 9 if score pause master.timer matches 0 run function tagrush:timeannounce/9
execute if score minute master.timer matches 0 if score second master.timer matches 8 if score pause master.timer matches 0 run function tagrush:timeannounce/8
execute if score minute master.timer matches 0 if score second master.timer matches 7 if score pause master.timer matches 0 run function tagrush:timeannounce/7
execute if score minute master.timer matches 0 if score second master.timer matches 6 if score pause master.timer matches 0 run function tagrush:timeannounce/6
execute if score minute master.timer matches 0 if score second master.timer matches 5 if score pause master.timer matches 0 run function tagrush:timeannounce/5
execute if score minute master.timer matches 0 if score second master.timer matches 4 if score pause master.timer matches 0 run function tagrush:timeannounce/4
execute if score minute master.timer matches 0 if score second master.timer matches 3 if score pause master.timer matches 0 run function tagrush:timeannounce/3
execute if score minute master.timer matches 0 if score second master.timer matches 2 if score pause master.timer matches 0 run function tagrush:timeannounce/2
execute if score minute master.timer matches 0 if score second master.timer matches 1 if score pause master.timer matches 0 run function tagrush:timeannounce/1

execute if score minute master.timer matches 0 if score second master.timer matches 0 run function tagrush:game/round_start

execute if score gameflag tagrush_game matches 0 run schedule function tagrush:round_beginlistener 1s