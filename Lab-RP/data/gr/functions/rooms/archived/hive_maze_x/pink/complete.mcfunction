

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}

# Playsound
execute as @a[team=pink] at @s run playsound gr.roomcomplete record @s

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_pinkany] gr_room8time = pink gr_currenttime
# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 pink_terracotta replace smooth_quartz
# Calculate Position, and update scoreboard
scoreboard players add pink gr_completeroom 1
scoreboard players add 8 gr_indvroom 1
function gr:scoreboard/moveup/pink
scoreboard players operation pink gr_currentpos = 8 gr_indvroom
function gr:scoreboard/calc

# UNLOCK GATES
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~12 98 ~7 ~13 98 ~8 air
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~20 98 ~7 ~21 98 ~8 air
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~12 98 ~12 ~13 98 ~13 air
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~20 98 ~12 ~21 98 ~13 air
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~12 98 ~2 ~13 98 ~3 air
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~20 98 ~2 ~21 98 ~3 air
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~12 98 ~17 ~13 98 ~18 air
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~20 98 ~17 ~21 98 ~18 air
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~2 101 ~14 ~3 103 ~16 air destroy

# Announce position
tellraw @a[team=!pink] ["",{"translate":"team.pink"},"§7第",{"score":{"name": "8","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§cX-§eHive Maze","§e]"]
tellraw @a[team=pink] ["","§7你","§7第",{"score":{"name": "8","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§cX-§6Hive Maze","§e]"]
# Initiate next room
scoreboard players add pink gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run tp @s ~-60 ~ ~
function gr:rooms/9/pink/divider
function gr:rooms/9/pink/master