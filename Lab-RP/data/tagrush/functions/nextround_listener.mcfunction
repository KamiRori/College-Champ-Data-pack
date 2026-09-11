
execute if score minute master.timer matches 0 if score second master.timer matches 1 run schedule function tagrush:game/next_round 1s
schedule function tagrush:nextround_listener 1s

