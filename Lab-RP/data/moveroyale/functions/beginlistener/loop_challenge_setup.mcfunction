

execute if score minute master.timer matches 0 if score second master.timer matches 1 run schedule function moveroyale:round_challenge_setup 1s
execute if score minute master.timer matches 0 if score second master.timer matches 1 run return 1

schedule function moveroyale:beginlistener/loop_challenge_setup 1t
