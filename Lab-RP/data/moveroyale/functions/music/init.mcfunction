
scoreboard players set OvertimeActive OvertimeMusic 0
execute if score round moveroyale_game matches 1..2 run execute as @a at @s run playsound music.moveroyale_track_1 voice @s
execute if score round moveroyale_game matches 3..4 run execute as @a at @s run playsound music.moveroyale_track_2 voice @s
execute if score round moveroyale_game matches 5..6 run execute as @a at @s run playsound music.moveroyale_track_3 voice @s
execute if score round moveroyale_game matches 7..8 run execute as @a at @s run playsound music.moveroyale_track_4 voice @s
execute if score round moveroyale_game matches 9..10 run execute as @a at @s run playsound music.moveroyale_track_5 voice @s

function moveroyale:music/loop