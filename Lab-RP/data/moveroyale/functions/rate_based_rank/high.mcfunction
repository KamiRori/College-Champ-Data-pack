
tag @s remove mr_rank_target
execute if score @s moveroyale_temp_rate_rank >= max moveroyale_score_high run tellraw @s ["§c[§r峟§c] ","§c你的进度排名为",{"score":{"name": "@s","objective": "moveroyale_progress_rank"}},"§c，本回合无法获得积分。"]
execute if score @s moveroyale_temp_rate_rank >= max moveroyale_score_high run playsound sound.team_eliminated record @s
execute if score @s moveroyale_temp_rate_rank >= max moveroyale_score_high run return 0

execute store result storage moveroyale:round_comp high_rate int 1 run scoreboard players get @s moveroyale_temp_rate_rank
function moveroyale:player_action/macro/high_rate with storage moveroyale:round_comp