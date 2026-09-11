

# Resets Player flag
tag @a remove ws_weapon

execute unless score red ws_swap_round matches 1 run function weaponswap:swap_logic/team/red
execute unless score blue ws_swap_round matches 1 run function weaponswap:swap_logic/team/blue
execute unless score green ws_swap_round matches 1 run function weaponswap:swap_logic/team/green
execute unless score yellow ws_swap_round matches 1 run function weaponswap:swap_logic/team/yellow
execute unless score cyan ws_swap_round matches 1 run function weaponswap:swap_logic/team/cyan
execute unless score pink ws_swap_round matches 1 run function weaponswap:swap_logic/team/pink
execute unless score orange ws_swap_round matches 1 run function weaponswap:swap_logic/team/orange
execute unless score purple ws_swap_round matches 1 run function weaponswap:swap_logic/team/purple

# Weapon given and taken
function weaponswap:swap_logic/weapon_given_taken

# Generate cd
function weaponswap:swap_logic/get_cd

# Reset
kill @e[type=marker,tag=swap_rand]

# fallback if no one is selected.
execute unless entity @a[tag=ws_weapon] run scoreboard players set swap_type ws_swap_main 1
execute unless entity @a[tag=ws_weapon] run function weaponswap:swap_logic/swap_type_select