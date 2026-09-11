
schedule clear moveroyale:beginlistener/loop_start
schedule clear master:timer/nextround/sec
schedule clear master:timer/starting/sec

scoreboard players set gameflag moveroyale_game 1
scoreboard players set RoundActive tourney_stats 1

scoreboard players set pause master.timer 0
execute if score round_type moveroyale_game matches 1 run function moveroyale:challenge_set/parkour/round_start
execute if score round_type moveroyale_game matches 2 run function moveroyale:challenge_set/iceboat/round_start
execute if score round_type moveroyale_game matches 3 run function moveroyale:challenge_set/trident/round_start
execute if score round_type moveroyale_game matches 4 run function moveroyale:challenge_set/obstacles/round_start
execute if score round_type moveroyale_game matches 5 run function moveroyale:challenge_set/sprint/round_start

execute as @a at @s run playsound sound.start record @s ~ ~ ~
title @a title ""
title @a subtitle ""

team modify placeholder_3 prefix ["§c剩余时间："]
scoreboard players operation timeleft_t moveroyale_game = timelimit_t moveroyale_game
scoreboard players set time_elapsed_tick moveroyale_game 0
function moveroyale:timer/main
function moveroyale:scoreboard/refresh

function moveroyale:music/init