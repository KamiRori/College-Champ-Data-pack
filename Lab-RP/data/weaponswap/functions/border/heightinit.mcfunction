
execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run summon area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:[weaponswap,heightanchor,borderheight,heightborder],Rotation:[0f,0f]}
execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run summon area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:[weaponswap,heightanchor,borderheight,heightborder],Rotation:[180f,0f]}
execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run summon area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:[weaponswap,heightwidthanchor,heightborder],Rotation:[90f,0f]}
execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run summon area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:[weaponswap,heightwidthanchor,heightborder],Rotation:[270f,0f]}


scoreboard players set heightwidth1 ws_game 0
function weaponswap:border/heightinit2