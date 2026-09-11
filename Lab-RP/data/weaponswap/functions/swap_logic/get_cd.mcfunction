

execute store result score $spread ws_swap_main run random value 1..5

scoreboard players operation swap_cd ws_swap_main = swap_interval ws_swap_main
execute if score $spread ws_swap_main matches 1 run scoreboard players operation swap_cd ws_swap_main += swap_spread_1 ws_swap_main
execute if score $spread ws_swap_main matches 2 run scoreboard players operation swap_cd ws_swap_main += swap_spread_2 ws_swap_main
execute if score $spread ws_swap_main matches 3 run scoreboard players operation swap_cd ws_swap_main += swap_spread_3 ws_swap_main
execute if score $spread ws_swap_main matches 4 run scoreboard players operation swap_cd ws_swap_main += swap_spread_4 ws_swap_main
execute if score $spread ws_swap_main matches 5 run scoreboard players operation swap_cd ws_swap_main += swap_spread_5 ws_swap_main
