
$scoreboard players operation @s moveroyale_indv += $(low_rate) moveroyale_score_low
$tellraw @s ["","[§6+",{"score":{"name": "$(low_rate)","objective": "moveroyale_score_low"},"color": "gold"},"§6分§r] ","§a[§r峟§a] ","§a你的完成度排名为第",{"score":{"name": "@s","objective": "moveroyale_progress_rank"},"color": "#E3E3E3"},"§a名"]
