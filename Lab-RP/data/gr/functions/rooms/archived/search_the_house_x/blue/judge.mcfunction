
# 
function gr:rooms/2/blue/time
#

scoreboard objectives add gr_blueobj dummy


execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~14 ~10 ~17 hopper{Items:[{id:"minecraft:smoker"}]} run setblock ~14 ~11 ~18 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~15 ~10 ~17 hopper{Items:[{id:"minecraft:bell"}]} run setblock ~15 ~11 ~18 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~16 ~10 ~17 hopper{Items:[{id:"minecraft:green_bed"}]} run setblock ~16 ~11 ~18 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~17 ~10 ~17 hopper{Items:[{id:"minecraft:slime_block"}]} run setblock ~17 ~11 ~18 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~18 ~10 ~17 hopper{Items:[{id:"minecraft:furnace"}]} run setblock ~18 ~11 ~18 lime_concrete

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~14 ~11 ~18 lime_concrete run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~15 ~11 ~18 lime_concrete run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~16 ~11 ~18 lime_concrete run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~17 ~11 ~18 lime_concrete run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~18 ~11 ~18 lime_concrete run scoreboard players add 1 gr_blueobj 1

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~14 ~11 ~-21 lime_concrete run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~15 ~11 ~-21 lime_concrete run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~16 ~11 ~-21 lime_concrete run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~17 ~11 ~-21 lime_concrete run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~18 ~11 ~-21 lime_concrete run scoreboard players add 1 gr_blueobj 1


execute if score 1 gr_blueobj matches 10 run function gr:rooms/2/blue/complete
scoreboard objectives remove gr_blueobj