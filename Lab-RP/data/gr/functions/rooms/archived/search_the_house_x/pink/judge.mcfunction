
# 
function gr:rooms/2/pink/time
#

scoreboard objectives add gr_pinkobj dummy


execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~14 ~10 ~17 hopper{Items:[{id:"minecraft:smoker"}]} run setblock ~14 ~11 ~18 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~15 ~10 ~17 hopper{Items:[{id:"minecraft:bell"}]} run setblock ~15 ~11 ~18 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~16 ~10 ~17 hopper{Items:[{id:"minecraft:green_bed"}]} run setblock ~16 ~11 ~18 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~17 ~10 ~17 hopper{Items:[{id:"minecraft:slime_block"}]} run setblock ~17 ~11 ~18 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~18 ~10 ~17 hopper{Items:[{id:"minecraft:furnace"}]} run setblock ~18 ~11 ~18 lime_concrete

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~14 ~11 ~18 lime_concrete run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~15 ~11 ~18 lime_concrete run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~16 ~11 ~18 lime_concrete run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~17 ~11 ~18 lime_concrete run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~18 ~11 ~18 lime_concrete run scoreboard players add 1 gr_pinkobj 1

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~14 ~11 ~-21 lime_concrete run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~15 ~11 ~-21 lime_concrete run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~16 ~11 ~-21 lime_concrete run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~17 ~11 ~-21 lime_concrete run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~18 ~11 ~-21 lime_concrete run scoreboard players add 1 gr_pinkobj 1


execute if score 1 gr_pinkobj matches 10 run function gr:rooms/2/pink/complete
scoreboard objectives remove gr_pinkobj