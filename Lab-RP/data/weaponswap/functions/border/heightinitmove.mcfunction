
scoreboard players add heightmove ws_game 1
execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run tp @s ~ ~1 ~

execute if score heightmove ws_game = height ws_game run function weaponswap:border/heightinit
execute if score heightmove ws_game < height ws_game run function weaponswap:border/heightinitmove