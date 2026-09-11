
# 
function gr:rooms/5/red/time
#

scoreboard objectives add gr_redobj dummy

# Only run a judge when button is pressed
scoreboard players set 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~28 102 ~15 stone_button[powered=true] run execute store result score 1 gr_redobj run fill ~2 92 ~2 ~29 100 ~29 water[level=0] replace water[level=0]

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s run setblock ~28 102 ~15 stone_button[powered=false,face=wall,facing=east]

execute if score 1 gr_redobj matches 0 run function gr:rooms/5/red/complete
scoreboard objectives remove gr_redobj