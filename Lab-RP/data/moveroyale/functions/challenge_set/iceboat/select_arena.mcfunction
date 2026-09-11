

scoreboard objectives add moveroyale_temp_arena_rand dummy
execute store result score iceboat moveroyale_temp_arena_rand run random value 1..3

execute if score iceboat moveroyale_temp_arena_rand matches 1 unless score iceboat_1 moveroyale_arena_used matches 1 run function moveroyale:challenge_set/iceboat/arena_set/1
execute if score iceboat moveroyale_temp_arena_rand matches 2 unless score iceboat_2 moveroyale_arena_used matches 1 run function moveroyale:challenge_set/iceboat/arena_set/2
execute if score iceboat moveroyale_temp_arena_rand matches 3 unless score iceboat_3 moveroyale_arena_used matches 1 run function moveroyale:challenge_set/iceboat/arena_set/3


execute if score arena moveroyale_game matches 0 run function moveroyale:challenge_set/iceboat/select_arena