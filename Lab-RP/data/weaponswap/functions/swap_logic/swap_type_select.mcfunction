

execute if score swap_type ws_swap_main matches 1 run function weaponswap:swap_logic/swap_round
execute if score swap_type ws_swap_main matches 0 run function weaponswap:swap_logic/swap_other

scoreboard players add swap_type ws_swap_main 1
execute if score swap_type ws_swap_main matches 2 run scoreboard players set swap_type ws_swap_main 0
