
scoreboard players add widthmove ws_game 1
execute as @e[type=area_effect_cloud,tag=borderwidth] at @s run tp @s ^ ^ ^1

execute if score widthmove ws_game = width ws_game run function weaponswap:border/widthplay
execute if score widthmove ws_game = width ws_game run kill @e[type=area_effect_cloud,tag=borderwidth]

execute if score widthmove ws_game < width ws_game run function weaponswap:border/width