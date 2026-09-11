

scoreboard objectives add moveroyale_temp_arena_rand dummy
execute store result score trident moveroyale_temp_arena_rand run random value 1..4

execute if score trident moveroyale_temp_arena_rand matches 1 unless score trident_1 moveroyale_arena_used matches 1 run function moveroyale:challenge_set/trident/arena_set/1
execute if score trident moveroyale_temp_arena_rand matches 2 unless score trident_2 moveroyale_arena_used matches 1 run function moveroyale:challenge_set/trident/arena_set/2
execute if score trident moveroyale_temp_arena_rand matches 3 unless score trident_3 moveroyale_arena_used matches 1 run function moveroyale:challenge_set/trident/arena_set/3
execute if score trident moveroyale_temp_arena_rand matches 4 unless score trident_4 moveroyale_arena_used matches 1 run function moveroyale:challenge_set/trident/arena_set/4



execute if score arena moveroyale_game matches 0 run function moveroyale:challenge_set/trident/select_arena