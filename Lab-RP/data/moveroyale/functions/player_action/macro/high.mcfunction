
$scoreboard players operation @s moveroyale_indv += $(high) moveroyale_score_high
$tellraw @s ["","[§6+",{"score":{"name": "$(high)","objective": "moveroyale_score_high"},"color": "gold"},"§6分§r] ","§a[§r彀§a] ","§a你第",{"score":{"name": "completions_high","objective": "moveroyale_game"},"color": "#E3E3E3"},"§a个完成了本回合！"]
