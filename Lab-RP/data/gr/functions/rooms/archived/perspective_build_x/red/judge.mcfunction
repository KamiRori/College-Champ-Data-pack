
# 
function gr:rooms/6/red/time
#
## Removes blocks that are outside the build area
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s run fill ~24 ~10 ~23 ~24 ~16 ~30 air
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s run fill ~24 ~10 ~30 ~30 ~16 ~30 air
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s run fill ~30 ~10 ~30 ~30 ~16 ~23 air
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s run fill ~30 ~10 ~23 ~24 ~16 ~23 air
## Adds can place on tag to items on the ground
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s run execute as @e[type=item,dx=31,dy=20,dz=31] run data merge entity @s {Item:{tag:{CanPlaceOn:[black_terracotta,lapis_block,raw_gold_block,emerald_block,redstone_block]}}}

#
scoreboard objectives add gr_redobj dummy

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if blocks ~24 ~9 ~24 ~29 ~13 ~29 ~10 ~9 ~29 all run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if blocks ~24 ~9 ~34 ~29 ~13 ~39 ~10 ~9 ~29 all run scoreboard players add 1 gr_redobj 1

execute if score 1 gr_redobj matches 2 run function gr:rooms/6/red/complete
scoreboard objectives remove gr_redobj