# Anchor 14886 91 14968
# 
function gr:rooms/7/yellow/time
#

scoreboard objectives add gr_yellowobj dummy


execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~10 100 ~15 air run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~10 100 ~15 air run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~11 101 ~15 air run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~11 101 ~15 air run scoreboard players add 1 gr_yellowobj 1

execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~16 98 ~15 air run scoreboard players add 1 gr_yellowobj 1

execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~7 97 ~15 air run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~8 97 ~15 air run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~21 95 ~15 air run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~22 95 ~15 air run scoreboard players add 1 gr_yellowobj 1

execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~20 93 ~15 air run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~13 95 ~15 air run scoreboard players add 1 gr_yellowobj 1


execute if score 1 gr_yellowobj matches 11 run function gr:rooms/7/yellow/complete
scoreboard objectives remove gr_yellowobj