scoreboard objectives remove temp_mr_elim_req
scoreboard objectives add temp_mr_elim_req dummy

scoreboard objectives remove temp_mr_elim_pos
scoreboard objectives add temp_mr_elim_pos dummy
scoreboard players set @a[tag=!moveroyale_eliminated] temp_mr_elim_pos -1
# SET BORDER
execute if score round moveroyale_game matches 4 run scoreboard players operation $req temp_mr_elim_req = 4 moveroyale_score_border
execute if score round moveroyale_game matches 5 run scoreboard players operation $req temp_mr_elim_req = 5 moveroyale_score_border
execute if score round moveroyale_game matches 6 run scoreboard players operation $req temp_mr_elim_req = 6 moveroyale_score_border
execute if score round moveroyale_game matches 7 run scoreboard players operation $req temp_mr_elim_req = 7 moveroyale_score_border
execute if score round moveroyale_game matches 8 run scoreboard players operation $req temp_mr_elim_req = 8 moveroyale_score_border

execute as @a[team=!spec,tag=!moveroyale_eliminated] run scoreboard players operation @s temp_mr_elim_req = $req temp_mr_elim_req
execute as @a[team=!spec,tag=!moveroyale_eliminated] run scoreboard players operation @s temp_mr_elim_req -= @s moveroyale_indv

execute as @a[team=!spec,tag=!moveroyale_eliminated,tag=moveroyale_bracket_high] run execute store result score @s temp_mr_elim_pos run function moveroyale:round_notif/elim_get_high
execute as @a[team=!spec,tag=!moveroyale_eliminated,tag=moveroyale_bracket_low] run execute store result score @s temp_mr_elim_pos run function moveroyale:round_notif/elim_get_low

title @a times 0 40 10
title @a title ["§b回合",{"score":{"name": "round","objective": "moveroyale_game"},"color": "#E3E3E3"}]
execute if score round moveroyale_game matches 9.. run title @a subtitle "§b最终回合: §f完成越快成绩越高"
execute if score round moveroyale_game matches 9.. run return 0

execute as @a[tag=moveroyale_eliminated] run title @s subtitle ["","§e本回合淘汰线为: ",{"score":{"name": "$req","objective": "temp_mr_elim_req"}},"pts"]
execute as @a[team=spec] run title @s subtitle ["","§e本回合淘汰线为: ",{"score":{"name": "$req","objective": "temp_mr_elim_req"}},"pts"]

execute as @a[tag=!moveroyale_eliminated,team=!spec,scores={temp_mr_elim_pos=-2}] run title @s subtitle ["","§c争取更高的分数吧！"]
execute as @a[tag=!moveroyale_eliminated,team=!spec,scores={temp_mr_elim_pos=-1}] run title @s subtitle ["","§a你本回合安全！争取更高的分数吧！"]
execute as @a[tag=!moveroyale_eliminated,team=!spec,scores={temp_mr_elim_pos=0}] run title @s subtitle ["","§6完成本轮比赛即可存活！"]
execute as @a[tag=!moveroyale_eliminated,team=!spec,scores={temp_mr_elim_pos=1..7}] run title @s subtitle ["","§e至少取得第",{"score":{"name": "@s","objective": "temp_mr_elim_pos"},"color": "red"},"§e以继续游戏！"]
execute as @a[tag=!moveroyale_eliminated,team=!spec,scores={temp_mr_elim_pos=8..}] run title @s subtitle ["","§e至少取得第",{"score":{"name": "@s","objective": "temp_mr_elim_pos"},"color": "gold"},"§e以继续游戏！"]
