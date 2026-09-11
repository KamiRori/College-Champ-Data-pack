

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}

# Playsound
execute as @a[team=orange] at @s run playsound gr.roomcomplete record @s

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_orangeany] gr_room8time = orange gr_currenttime
# Open Zone Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run fill ~8 86 ~5 ~28 86 ~23 air replace iron_bars
execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run fill ~7 86 ~17 ~7 89 ~13 air destroy


# Calculate Position, and update scoreboard
scoreboard players add orange gr_completeroom 1
scoreboard players add 8 gr_indvroom 1
function gr:scoreboard/moveup/orange
scoreboard players operation orange gr_currentpos = 8 gr_indvroom
function gr:scoreboard/calc

# Announce position
tellraw @a[team=!orange] ["",{"translate":"team.orange"},"§7第",{"score":{"name": "8","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§3Quartered Layers","§e]"]
tellraw @a[team=orange] ["","§7你","§7第",{"score":{"name": "8","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§3Quartered Layers","§e]"]
# Initiate next room
scoreboard players add orange gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run tp @s ~-60 ~ ~
function gr:rooms/9/orange/divider
function gr:rooms/9/orange/master