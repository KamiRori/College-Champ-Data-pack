
# Y Coordinate
execute store result score @s fatesplate_this_y run data get entity @s Pos[1] 10

# Fell?
execute if score @s fatesplate_this_y matches ..1000 run return 0


# 玩家所在位置得分倍率
scoreboard players set @s fatesplate_multi_type 0
## Ring: (0.0x, 1.0x, 1.2, 1.5x, 2.0x)
execute if block ~ 77 ~ light_blue_glazed_terracotta[facing=east] run scoreboard players set @s fatesplate_multi_type 1
execute if block ~ 77 ~ light_blue_glazed_terracotta[facing=south] run scoreboard players set @s fatesplate_multi_type 2
execute if block ~ 77 ~ light_blue_glazed_terracotta[facing=west] run scoreboard players set @s fatesplate_multi_type 3
execute if block ~ 77 ~ light_blue_glazed_terracotta[facing=north] run scoreboard players set @s fatesplate_multi_type 4

# 所拥有票数
scoreboard players operation @s fatesplate_final_votecount = @s fatesplate_playervotes
execute if score @s fatesplate_multi_type matches 0 run scoreboard players set @s fatesplate_final_votecount 0
execute if score @s fatesplate_multi_type matches 2 run scoreboard players operation @s fatesplate_final_votecount *= 6 math
execute if score @s fatesplate_multi_type matches 2 run scoreboard players operation @s fatesplate_final_votecount /= 5 math

execute if score @s fatesplate_multi_type matches 3 run scoreboard players operation @s fatesplate_final_votecount *= 3 math
execute if score @s fatesplate_multi_type matches 3 run scoreboard players operation @s fatesplate_final_votecount /= 2 math

execute if score @s fatesplate_multi_type matches 4 run scoreboard players operation @s fatesplate_final_votecount *= 2 math

# 投给的游戏
execute if block ~ 75 ~ red_concrete run scoreboard players operation @e[type=area_effect_cloud,tag=1] dd_vote += @s fatesplate_final_votecount
execute if block ~ 75 ~ blue_concrete run scoreboard players operation @e[type=area_effect_cloud,tag=2] dd_vote += @s fatesplate_final_votecount
execute if block ~ 75 ~ purple_concrete run scoreboard players operation @e[type=area_effect_cloud,tag=3] dd_vote += @s fatesplate_final_votecount
execute if block ~ 75 ~ orange_concrete run scoreboard players operation @e[type=area_effect_cloud,tag=4] dd_vote += @s fatesplate_final_votecount
execute if block ~ 75 ~ yellow_concrete run scoreboard players operation @e[type=area_effect_cloud,tag=5] dd_vote += @s fatesplate_final_votecount
execute if block ~ 75 ~ green_concrete run scoreboard players operation @e[type=area_effect_cloud,tag=6] dd_vote += @s fatesplate_final_votecount
execute if block ~ 75 ~ cyan_concrete run scoreboard players operation @e[type=area_effect_cloud,tag=7] dd_vote += @s fatesplate_final_votecount
execute if block ~ 75 ~ pink_concrete run scoreboard players operation @e[type=area_effect_cloud,tag=8] dd_vote += @s fatesplate_final_votecount
