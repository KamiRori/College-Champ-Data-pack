
schedule function tagrush:beginlistener 1s
execute if score minute master.timer matches 0 if score second master.timer matches 0 run function tagrush:game/first_round
