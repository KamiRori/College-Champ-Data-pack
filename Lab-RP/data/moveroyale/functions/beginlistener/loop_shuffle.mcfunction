

execute if score minute master.timer matches 0 if score second master.timer matches 0 run function moveroyale:shuffle/init
execute if score minute master.timer matches 0 if score second master.timer matches 0 run return 1

schedule function moveroyale:beginlistener/loop_shuffle 1s
