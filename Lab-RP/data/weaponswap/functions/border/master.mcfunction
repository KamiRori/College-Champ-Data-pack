
# THIS IS A WORK EXAMPLE
# Generate the center
# execute unless entity @e[type=area_effect_cloud,tag=bordercenter] run summon area_effect_cloud 12000 0 12000 {Duration:999999,Tags:[weaponswap,bordercenter]}

# 收缩
execute if score widthactive ws_game matches 1 run scoreboard players add shrinkwidth ws_game 1
execute if score heightactive ws_game matches 1 run scoreboard players add shrinkheight ws_game 1

execute if score shrinkwidth ws_game >= widththreshold ws_game if score width ws_game > minimumwidth ws_game run scoreboard players remove width ws_game 1
execute if score shrinkwidth ws_game >= widththreshold ws_game if score width ws_game > minimumwidth ws_game if score width ws_game matches 10 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=11..]
execute if score shrinkwidth ws_game >= widththreshold ws_game if score width ws_game > minimumwidth ws_game if score width ws_game matches 20 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=21..]
execute if score shrinkwidth ws_game >= widththreshold ws_game if score width ws_game > minimumwidth ws_game if score width ws_game matches 30 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=31..]
execute if score shrinkwidth ws_game >= widththreshold ws_game if score width ws_game > minimumwidth ws_game if score width ws_game matches 40 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=41..]
execute if score shrinkwidth ws_game >= widththreshold ws_game if score width ws_game > minimumwidth ws_game if score width ws_game matches 50 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=51..]
execute if score shrinkwidth ws_game >= widththreshold ws_game if score width ws_game > minimumwidth ws_game if score width ws_game matches 60 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=61..]

execute if score shrinkwidth ws_game >= widththreshold ws_game if score width ws_game > minimumwidth ws_game run execute as @e[type=area_effect_cloud,tag=borderwidth] at @s run tp @s ^ ^ ^-1

execute if score width ws_game matches 20 run kill @e[type=area_effect_cloud,tag=borderwidth,tag=!force]
execute if score width ws_game matches 0 run kill @e[type=area_effect_cloud,tag=borderwidth]

execute if score shrinkwidth ws_game >= widththreshold ws_game run scoreboard players set widthcd ws_game 3
execute if score shrinkwidth ws_game >= widththreshold ws_game run scoreboard players set shrinkwidth ws_game 0

# execute if score shrinkheight ws_game >= heightthreshold ws_game if score height ws_game > minimumheight ws_game run scoreboard players remove height ws_game 1
# execute if score shrinkheight ws_game >= heightthreshold ws_game if score height ws_game > minimumheight ws_game run execute as @e[type=area_effect_cloud,tag=heightborder] at @s run tp @s ~ ~-1 ~
# execute if score shrinkheight ws_game >= heightthreshold ws_game if score height ws_game > minimumheight ws_game run execute as @e[type=area_effect_cloud,tag=borderwidth] at @s run tp @s ~ ~-1 ~
# execute if score shrinkheight ws_game >= heightthreshold ws_game run scoreboard players set heightcd ws_game 3
# execute if score shrinkheight ws_game >= heightthreshold ws_game run scoreboard players set shrinkheight ws_game 0

# 宽度: 递归生成最终区域
scoreboard players add widthcd ws_game 1
scoreboard players add heightcd ws_game 1

execute if score widthcd ws_game matches 4.. run function weaponswap:border/widthplay

# # 高度: 生成中心

# execute if score heightcd ws_game matches 4.. run function weaponswap:border/heightplay

# 造成出圈警告和伤害
# 这部分被整合到了weaponswap:gt和weaponswap:border/damageinit里来保证时序正确


# 循环
execute if score gameflag ws_game matches 1 run schedule function weaponswap:border/master 10t
