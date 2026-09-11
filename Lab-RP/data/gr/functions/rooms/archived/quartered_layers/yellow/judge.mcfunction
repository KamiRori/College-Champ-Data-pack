
# 
function gr:rooms/8/yellow/time
#
# drop in
scoreboard objectives add gr_yellowobj_sub dummy

execute as @a[team=yellow] at @s if block ~ ~-1 ~ tinted_glass run scoreboard players add 1 gr_yellowobj_sub 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~9 100 ~8 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj_sub 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~9 100 ~22 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj_sub 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~23 100 ~22 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj_sub 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~23 100 ~8 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj_sub 1

execute if score 1 gr_yellowobj_sub matches 8 run execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~26 99 ~7 ~10 99 ~23 air replace tinted_glass

scoreboard objectives remove gr_yellowobj_sub

# Judge
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~20 87 ~5 oak_button[powered=true] if score yellow gr_globalcd matches ..0 run execute positioned ~23 80 ~6 run function gr:checks/quartered_layers
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~20 87 ~5 oak_button[powered=true] if score yellow gr_globalcd matches ..0 run execute positioned ~23 80 ~20 run function gr:checks/quartered_layers
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~20 87 ~5 oak_button[powered=true] if score yellow gr_globalcd matches ..0 run execute positioned ~9 80 ~6 run function gr:checks/quartered_layers
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~20 87 ~5 oak_button[powered=true] if score yellow gr_globalcd matches ..0 run execute positioned ~9 80 ~20 run function gr:checks/quartered_layers
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~20 87 ~5 oak_button[powered=true] if score yellow gr_globalcd matches ..0 run scoreboard players set yellow gr_globalcd 200
# Main Objective
scoreboard objectives add gr_yellowobj dummy

execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if blocks ~27 85 ~6 ~23 85 ~10 ~23 80 ~6 all run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if blocks ~9 85 ~6 ~13 85 ~10 ~9 80 ~6 all run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if blocks ~9 85 ~20 ~13 85 ~24 ~9 80 ~20 all run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if blocks ~27 85 ~20 ~23 85 ~24 ~23 80 ~20 all run scoreboard players add 1 gr_yellowobj 1
# Destroy blocks above place limit
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~27 86 ~6 ~23 86 ~10 air destroy
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~9 86 ~6 ~13 86 ~10 air destroy
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~9 86 ~20 ~13 86 ~24 air destroy
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~27 86 ~20 ~23 86 ~24 air destroy
# Item Tagging
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s positioned ~ ~-10 ~ run execute as @e[type=item,dx=32,dy=32,dz=32] run data merge entity @s {Item:{tag:{CanPlaceOn:[diamond_block,lapis_block,gold_block,emerald_block,redstone_block,white_concrete,white_concrete_powder]}}}

execute if score 1 gr_yellowobj matches 4 run function gr:rooms/8/yellow/complete
scoreboard objectives remove gr_yellowobj