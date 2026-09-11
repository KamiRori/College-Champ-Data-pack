
# 
function gr:rooms/6/yellow/time
#
## Removes blocks that are outside the build area
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~23 ~10 ~19 ~23 ~16 ~7 air
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~23 ~10 ~7 ~30 ~16 ~7 air
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~30 ~10 ~7 ~30 ~16 ~ air
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~30 ~10 ~ ~23 ~16 ~ air
## Adds can place on tag to items on the ground
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s run execute as @e[type=item,dx=31,dy=20,dz=31] run data merge entity @s {Item:{tag:{CanPlaceOn:[black_terracotta,lapis_block,raw_gold_block,emerald_block,redstone_block]}}}

#
scoreboard objectives add gr_yellowobj dummy

execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if blocks ~24 ~9 ~6 ~29 ~13 ~1 ~10 ~9 ~-4 all run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if blocks ~24 ~9 ~-4 ~29 ~13 ~-9 ~10 ~9 ~-4 all run scoreboard players add 1 gr_yellowobj 1

execute if score 1 gr_yellowobj matches 2 run function gr:rooms/6/yellow/complete
scoreboard objectives remove gr_yellowobj