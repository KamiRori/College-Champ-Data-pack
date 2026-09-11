scoreboard players add heightwidth2 ws_game 5
execute as @e[type=area_effect_cloud,tag=heightwidthanchor] at @s run tp @s ^ ^ ^5
execute as @e[type=area_effect_cloud,tag=heightwidthanchor] at @s run summon area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:[weaponswap,heightborder],Rotation:[270f,0f]}


execute if score heightwidth2 ws_game <= width ws_game run function weaponswap:border/height