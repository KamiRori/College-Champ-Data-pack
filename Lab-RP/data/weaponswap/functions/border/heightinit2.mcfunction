
scoreboard players add heightwidth1 ws_game 7
execute as @e[type=area_effect_cloud,tag=heightanchor] at @s run tp @s ^ ^ ^7
execute as @e[type=area_effect_cloud,tag=heightanchor] at @s run summon area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:[weaponswap,heightborder],Rotation:[270f,0f]}

execute as @e[type=area_effect_cloud,tag=heightanchor] at @s run summon area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:[weaponswap,heightwidthanchor,heightborder],Rotation:[90f,0f]}
execute as @e[type=area_effect_cloud,tag=heightanchor] at @s run summon area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:[weaponswap,heightwidthanchor,heightborder],Rotation:[270f,0f]}

execute if score heightwidth1 ws_game > width ws_game run scoreboard players set heightwidth2 ws_game 0
execute if score heightwidth1 ws_game > width ws_game run function weaponswap:border/height

execute if score heightwidth1 ws_game <= width ws_game run function weaponswap:border/heightinit2