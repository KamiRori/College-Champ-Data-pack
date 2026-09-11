
# 
function gr:rooms/2/cyan/time
#

scoreboard objectives add gr_cyanobj dummy


execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~14 ~10 ~13 hopper{Items:[{id:"minecraft:dried_kelp_block"}]} run setblock ~14 ~11 ~12 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~15 ~10 ~13 hopper{Items:[{id:"minecraft:bell"}]} run setblock ~15 ~11 ~12 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~16 ~10 ~13 hopper{Items:[{id:"minecraft:cyan_bed"}]} run setblock ~16 ~11 ~12 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~17 ~10 ~13 hopper{Items:[{id:"minecraft:smoker"}]} run setblock ~17 ~11 ~12 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~18 ~10 ~13 hopper{Items:[{id:"minecraft:composter"}]} run setblock ~18 ~11 ~12 lime_concrete

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~14 ~11 ~12 lime_concrete run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~15 ~11 ~12 lime_concrete run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~16 ~11 ~12 lime_concrete run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~17 ~11 ~12 lime_concrete run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~18 ~11 ~12 lime_concrete run scoreboard players add 1 gr_cyanobj 1

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~14 ~11 ~51 lime_concrete run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~15 ~11 ~51 lime_concrete run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~16 ~11 ~51 lime_concrete run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~17 ~11 ~51 lime_concrete run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~18 ~11 ~51 lime_concrete run scoreboard players add 1 gr_cyanobj 1

execute if score 1 gr_cyanobj matches 10 run function gr:rooms/2/cyan/complete
scoreboard objectives remove gr_cyanobj