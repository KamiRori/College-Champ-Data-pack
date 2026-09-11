
$scoreboard players operation @s moveroyale_indv += $(low) moveroyale_score_low
$tellraw @s ["","[§6+",{"score":{"name": "$(low)","objective": "moveroyale_score_low"},"color": "gold"},"§6分§r] ","§a[§r彀§a] ","§a你第",{"score":{"name": "completions_low","objective": "moveroyale_game"},"color": "#E3E3E3"},"§a个完成了本回合！"]
