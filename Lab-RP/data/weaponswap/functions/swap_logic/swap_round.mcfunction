
scoreboard objectives add ws_swap_round dummy
scoreboard players set red ws_swap_round 0
scoreboard players set blue ws_swap_round 0
scoreboard players set green ws_swap_round 0
scoreboard players set yellow ws_swap_round 0
scoreboard players set cyan ws_swap_round 0
scoreboard players set pink ws_swap_round 0
scoreboard players set orange ws_swap_round 0
scoreboard players set purple ws_swap_round 0

# Resets Player flag
tag @a remove ws_weapon

# Counts Teams
scoreboard players set teams ws_swap_main 0

execute as @p[team=red,tag=!ws_eliminated] run scoreboard players add teams ws_swap_main 1
execute as @p[team=blue,tag=!ws_eliminated] run scoreboard players add teams ws_swap_main 1
execute as @p[team=green,tag=!ws_eliminated] run scoreboard players add teams ws_swap_main 1
execute as @p[team=yellow,tag=!ws_eliminated] run scoreboard players add teams ws_swap_main 1
execute as @p[team=orange,tag=!ws_eliminated] run scoreboard players add teams ws_swap_main 1
execute as @p[team=purple,tag=!ws_eliminated] run scoreboard players add teams ws_swap_main 1
execute as @p[team=pink,tag=!ws_eliminated] run scoreboard players add teams ws_swap_main 1
execute as @p[team=cyan,tag=!ws_eliminated] run scoreboard players add teams ws_swap_main 1

## Half team count, rounded up
scoreboard players operation teams_half ws_swap_main = teams ws_swap_main
scoreboard players operation teams_half% ws_swap_main = teams ws_swap_main

scoreboard players operation teams_half ws_swap_main /= 2 math
scoreboard players operation teams_half% ws_swap_main %= 2 math

scoreboard players operation teams_half ws_swap_main += teams_half% ws_swap_main

# RNG
execute if entity @a[team=red,tag=!ws_eliminated] run summon marker ~ ~ ~ {Tags:["red","swap_rand"]}
execute if entity @a[team=blue,tag=!ws_eliminated] run summon marker ~ ~ ~ {Tags:["blue","swap_rand"]}
execute if entity @a[team=green,tag=!ws_eliminated] run summon marker ~ ~ ~ {Tags:["green","swap_rand"]}
execute if entity @a[team=yellow,tag=!ws_eliminated] run summon marker ~ ~ ~ {Tags:["yellow","swap_rand"]}
execute if entity @a[team=cyan,tag=!ws_eliminated] run summon marker ~ ~ ~ {Tags:["cyan","swap_rand"]}
execute if entity @a[team=pink,tag=!ws_eliminated] run summon marker ~ ~ ~ {Tags:["pink","swap_rand"]}
execute if entity @a[team=orange,tag=!ws_eliminated] run summon marker ~ ~ ~ {Tags:["orange","swap_rand"]}
execute if entity @a[team=purple,tag=!ws_eliminated] run summon marker ~ ~ ~ {Tags:["purple","swap_rand"]}

## Tags half team to give the weapon.
scoreboard players operation teams_to_select ws_swap_main = teams_half ws_swap_main

scoreboard players remove teams_to_select ws_swap_main 1
execute if score teams_to_select ws_swap_main matches 0.. run function weaponswap:swap_logic/random_team_marker
scoreboard players remove teams_to_select ws_swap_main 1
execute if score teams_to_select ws_swap_main matches 0.. run function weaponswap:swap_logic/random_team_marker
scoreboard players remove teams_to_select ws_swap_main 1
execute if score teams_to_select ws_swap_main matches 0.. run function weaponswap:swap_logic/random_team_marker
scoreboard players remove teams_to_select ws_swap_main 1
execute if score teams_to_select ws_swap_main matches 0.. run function weaponswap:swap_logic/random_team_marker

execute as @e[type=marker,tag=red,tag=swap_rand,tag=swap_selected] run function weaponswap:swap_logic/team/red
execute as @e[type=marker,tag=blue,tag=swap_rand,tag=swap_selected] run function weaponswap:swap_logic/team/blue
execute as @e[type=marker,tag=green,tag=swap_rand,tag=swap_selected] run function weaponswap:swap_logic/team/green
execute as @e[type=marker,tag=yellow,tag=swap_rand,tag=swap_selected] run function weaponswap:swap_logic/team/yellow
execute as @e[type=marker,tag=cyan,tag=swap_rand,tag=swap_selected] run function weaponswap:swap_logic/team/cyan
execute as @e[type=marker,tag=pink,tag=swap_rand,tag=swap_selected] run function weaponswap:swap_logic/team/pink
execute as @e[type=marker,tag=orange,tag=swap_rand,tag=swap_selected] run function weaponswap:swap_logic/team/orange
execute as @e[type=marker,tag=purple,tag=swap_rand,tag=swap_selected] run function weaponswap:swap_logic/team/purple



# Weapon given and taken
function weaponswap:swap_logic/weapon_given_taken

# Generate cd
function weaponswap:swap_logic/get_cd

# Reset
kill @e[type=marker,tag=swap_rand]

