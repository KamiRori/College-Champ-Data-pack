# 主语是tag=borderdmg的玩家.

#title @s actionbar ["",{"text": "\ue010","font":"font:font","color":"white"}]

# 获取最大生命值和生命值，求差再加1，求得应损失生命值
execute as @a store result score @s ws_health run data get entity @s Health 10
execute if entity @s[tag=borderdmg] if score @s ws_health matches ..10 run tag @s add suffocation
execute if entity @s[tag=borderextradmg] if score @s ws_health matches ..20 run tag @s add suffocation
tag @s add took_border_damage
 execute if score second master.timer matches 0..7 if score minute master.timer matches 0 run damage @s[tag=borderdmg] 3 in_wall
execute if score second master.timer matches 8..15 if score minute master.timer matches 0 run damage @s[tag=borderdmg] 2.25 in_wall
execute if score second master.timer matches 16..22 if score minute master.timer matches 0 run damage @s[tag=borderdmg] 1.5 in_wall
execute if score second master.timer matches 23..30 if score minute master.timer matches 0 run damage @s[tag=borderdmg] 0.75 in_wall


damage @s[tag=borderdmg,tag=borderextradmg] 1 in_wall
damage @s[tag=borderdmg] 0.5 in_wall

title @s title ""
title @s subtitle "§c鼱 你正在边界外！ §c鼱"
title @s times 0 10 5