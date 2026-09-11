
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run fill ~38 ~10 ~14 ~38 ~14 ~16 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run summon area_effect_cloud ~38 ~14 ~15 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run summon area_effect_cloud ~32 ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_orange,tag=divider]
execute as @a[team=orange] at @s run spawnpoint
execute as @a[team=orange] at @s run kill @e[type=item,distance=0..3]
# Add a team phase
scoreboard players add orange gr_teamphase 1

# Modify scoreboard
scoreboard players display name var_room_name gr_orangesb "§a§l当前房间: §cX-§rIce and Fire"
# Play sound and title
execute as @a[team=orange] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=orange] times 20 40 20
title @a[team=orange] subtitle ""
title @a[team=orange] title "§e点亮末地传送门！"
# Give items
clear @a[team=orange]
give @a[team=orange] diamond_shovel{Unbreakable:1b,CanDestroy:[snow_block,snow]}


execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run execute as @e[type=blaze,tag=!grroom] run data modify entity @s Health set value 10f
execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run tag @e[type=blaze,tag=!grroom] add orange
execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run tag @e[type=blaze,tag=!grroom] add grroom

# Recipe
scoreboard objectives add gr_xroom_use_epearl used:ender_pearl
scoreboard objectives add gr_xroom_craft_eeye crafted:ender_eye
scoreboard objectives add gr_xroom_kill_blaze killed:blaze
scoreboard players set @a[team=orange] gr_xroom_craft_eeye 0
scoreboard players set @a[team=orange] gr_xroom_use_epearl 0
scoreboard players set @a[team=orange] gr_xroom_kill_blaze 0

# 开始计时
scoreboard players set orange gr_currenttime 0
function gr:rooms/4/orange/time