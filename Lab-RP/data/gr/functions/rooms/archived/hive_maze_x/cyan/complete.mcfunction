

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}

# Playsound
execute as @a[team=cyan] at @s run playsound gr.roomcomplete record @s

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_cyanany] gr_room8time = cyan gr_currenttime
# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 cyan_terracotta replace smooth_quartz

# Unlock all gates
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~12 98 ~12 ~13 98 ~13 air
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~20 98 ~22 ~21 98 ~23 air
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~20 98 ~17 ~21 98 ~18 air
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~12 98 ~17 ~13 98 ~18 air
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~12 98 ~22 ~13 98 ~23 air
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~20 98 ~22 ~21 98 ~23 air
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~12 98 ~27 ~13 98 ~28 air
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~20 98 ~27 ~21 98 ~28 air

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~2 101 ~14 ~3 103 ~16 air destroy
# Calculate Position, and update scoreboard
scoreboard players add cyan gr_completeroom 1
scoreboard players add 8 gr_indvroom 1
function gr:scoreboard/moveup/cyan
scoreboard players operation cyan gr_currentpos = 8 gr_indvroom
function gr:scoreboard/calc

# Announce position
tellraw @a[team=!cyan] ["",{"translate":"team.cyan"},"§7第",{"score":{"name": "8","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§cX-§eHive Maze","§e]"]
tellraw @a[team=cyan] ["","§7你","§7第",{"score":{"name": "8","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§cX-§6Hive Maze","§e]"]
# Initiate next room
scoreboard players add cyan gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run tp @s ~-60 ~ ~
function gr:rooms/9/cyan/divider
function gr:rooms/9/cyan/master