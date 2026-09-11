## 存储中心坐标和玩家坐标
execute as @a[team=!spec,tag=!ws_eliminated] store result score @s ws_borderx run data get entity @s Pos[0] 100
execute as @a[team=!spec,tag=!ws_eliminated] store result score @s ws_bordery run data get entity @s Pos[1] 100
execute as @a[team=!spec,tag=!ws_eliminated] store result score @s ws_borderz run data get entity @s Pos[2] 100

execute as @e[type=area_effect_cloud,tag=bordercenter] store result score @s ws_borderx run data get entity @s Pos[0] 100
execute as @e[type=area_effect_cloud,tag=bordercenter] store result score @s ws_borderz run data get entity @s Pos[2] 100

## 计算距离的平方的10,000倍，并存储在ws_borderdist中，与边界范围比较
execute as @a[team=!spec,tag=!ws_eliminated] run scoreboard players operation @s ws_borderx -= @e[type=area_effect_cloud,tag=bordercenter] ws_borderx
execute as @a[team=!spec,tag=!ws_eliminated] run scoreboard players operation @s ws_borderz -= @e[type=area_effect_cloud,tag=bordercenter] ws_borderz

execute as @a[team=!spec,tag=!ws_eliminated] run scoreboard players operation @s ws_borderx *= @s ws_borderx
execute as @a[team=!spec,tag=!ws_eliminated] run scoreboard players operation @s ws_borderz *= @s ws_borderz

scoreboard players set @a ws_borderdist 0
scoreboard players set 10k ws_borderdist 10000
scoreboard players set 100 ws_borderdist 100
scoreboard players operation maxdist ws_borderdist = width ws_game
scoreboard players operation maxdist ws_borderdist *= maxdist ws_borderdist
scoreboard players operation maxdist ws_borderdist *= 10k ws_borderdist

execute as @a[team=!spec,tag=!ws_eliminated] run scoreboard players operation @s ws_borderdist += @s ws_borderx
execute as @a[team=!spec,tag=!ws_eliminated] run scoreboard players operation @s ws_borderdist += @s ws_borderz

## 对玩家的Y值增加1.8格，视为头顶
scoreboard players add @a[team=!spec,tag=!ws_eliminated] ws_bordery 180

## 对距离超过maxdist的或者高度超过height的，附加tag
scoreboard players operation maxheight ws_borderdist = height ws_game
scoreboard players operation maxheight ws_borderdist *= 100 ws_borderdist

execute as @a[team=!spec,tag=!ws_eliminated] if score @s ws_borderdist > maxdist ws_borderdist run tag @s add borderdmg
execute as @a[team=!spec,tag=!ws_eliminated] if score @s ws_bordery > maxheight ws_borderdist run tag @s add borderdmg

## 对于连续受到超过4次边界伤害的玩家，追加一次伤害
scoreboard players set @a[tag=!borderdmg] ws_consecdmg 0
scoreboard players add @a[tag=borderdmg] ws_consecdmg 1
tag @a[tag=borderdmg,scores={ws_consecdmg=5..}] add borderextradmg

## Apply damage and warning
title @a actionbar ""
execute if score gameflag ws_game matches 1 as @a[tag=borderdmg] run function weaponswap:border/damage
# execute if score gameflag ws_game matches 1 as @a[tag=borderextradmg] run function weaponswap:border/damage
schedule function weaponswap:border/damage_reset 1t
## Cleanup
tag @a remove borderdmg
tag @a remove borderextradmg