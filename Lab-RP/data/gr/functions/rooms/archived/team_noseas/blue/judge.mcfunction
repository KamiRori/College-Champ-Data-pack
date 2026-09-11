
# 
function gr:rooms/5/blue/time
#

scoreboard objectives add gr_blueobj dummy

# Only run a judge when button is pressed
scoreboard players set 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~28 102 ~15 stone_button[powered=true] run execute store result score 1 gr_blueobj run fill ~2 92 ~2 ~29 100 ~29 water replace water[level=15]

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s run setblock ~28 102 ~15 stone_button[powered=false,face=wall,facing=east]

execute if score 1 gr_blueobj matches 0 run function gr:rooms/5/blue/complete
scoreboard objectives remove gr_blueobj