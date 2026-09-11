

scoreboard players set cyan ws_swap_round 1

scoreboard players set $minCD ws_swap_playercd 10000
scoreboard players operation $minCD ws_swap_playercd < @a[team=cyan,tag=!ws_eliminated] ws_swap_playercd
execute as @a[team=cyan,tag=!ws_eliminated] if score @s ws_swap_playercd = $minCD ws_swap_playercd run tag @s add swap_preSelect

# A random player receives the weapon
tag @a[sort=random,limit=1,team=cyan,tag=swap_preSelect] add ws_weapon
scoreboard players add @a[team=cyan,tag=ws_weapon] ws_swap_playercd 1

# Reset
tag @a remove swap_preSelect