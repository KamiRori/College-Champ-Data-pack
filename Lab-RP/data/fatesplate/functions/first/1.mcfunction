
function fatesplate:tp
execute as @a at @s run playsound minecraft:music.fatesplate voice @s ~ ~ ~ 1

# Reset the Dome
kill @e[type=armor_stand,tag=lobbyvote]
kill @e[type=area_effect_cloud,tag=lobbyvote]

function fatesplate:structure/plate/allblack

# Intro
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  ",{"text": "欢迎来到 Fate's Plate!","bold": true,"color":"yellow"}]
tellraw @a " "
tellraw @a ""
tellraw @a ["  ",{"text": "比赛的全部游戏都将在这里选取。"}]
tellraw @a ["  ",{"text": "通过站在游戏对应的区域内来为其投票！"}]
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

# Others

scoreboard players set phase tourney_stats 2
function master:timer/fatesplate/58s

team modify placeholder_5 suffix ""
team modify placeholder_5 prefix ["",{"text": "投票开始: ","bold": true,"color":"red"}]

# Clear out individual scores
scoreboard players set @a tourney_indv 0