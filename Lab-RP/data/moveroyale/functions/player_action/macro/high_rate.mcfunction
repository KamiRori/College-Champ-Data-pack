
$scoreboard players operation @s moveroyale_indv += $(high_rate) moveroyale_score_high
$tellraw @s ["","[§6+",{"score":{"name": "$(high_rate)","objective": "moveroyale_score_high"},"color": "gold"},"§6分§r] ","§a[§r峟§a] ","§a你的完成度排名为第",{"score":{"name": "@s","objective": "moveroyale_progress_rank"},"color": "#E3E3E3"},"§a名"]
