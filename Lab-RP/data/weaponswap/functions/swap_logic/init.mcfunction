

# Init Space and reset all cds
scoreboard objectives add ws_swap_main dummy
scoreboard objectives add ws_swap_playercd dummy
scoreboard objectives add ws_swap_teamcd dummy
scoreboard objectives add ws_swap_round dummy

scoreboard players set @a ws_swap_playercd 0
scoreboard players set swap_type ws_swap_main 1

## Set weapon swap interval along with spread to make things more random.
scoreboard players set swap_interval ws_swap_main 400
scoreboard players set swap_spread_1 ws_swap_main 80
scoreboard players set swap_spread_2 ws_swap_main 40
scoreboard players set swap_spread_3 ws_swap_main 0
scoreboard players set swap_spread_4 ws_swap_main -40
scoreboard players set swap_spread_5 ws_swap_main -80

scoreboard players set swap_cd ws_swap_main 0


# Swap type select
function weaponswap:swap_logic/swap_type_select