
# 如果是最终回合，转到finale complete
execute if entity @s[tag=moveroyale_finalist] run function moveroyale:player_action/round_complete_finale
execute if entity @s[tag=moveroyale_finalist] run return 0

execute store result storage moveroyale:round_comp high int 1 run scoreboard players add completions_high moveroyale_game 1

execute if score completions_high moveroyale_game <= max moveroyale_score_high run function moveroyale:player_action/macro/high with storage moveroyale:round_comp
execute if score completions_high moveroyale_game > max moveroyale_score_high run scoreboard players operation @s moveroyale_indv += comp_score moveroyale_score_high

execute if score completions_high moveroyale_game > max moveroyale_score_high run tellraw @s ["","[§6+",{"score":{"name": "comp_score","objective": "moveroyale_score_high"},"color": "gold"},"§6分§r] ","§a[§r彀§a] ","§a你第",{"score":{"name": "completions_high","objective": "moveroyale_game"},"color": "#E3E3E3"},"§a个完成了本回合！"]
tellraw @s ["  §7↪ ","§7完成用时",{"storage":"moveroyale:timer","nbt":"uniform","color": "white"},"§fs§7."]

execute if score completions_high moveroyale_game matches 1 run tellraw @a ["§b[§r彀§b] ",{"selector":"@s"},"§b为本回合§c高级组§b的§6冠军§b。 ","§6(",{"storage":"moveroyale:timer","nbt":"uniform","color": "gold"},"§6s)"]
execute if score completions_high moveroyale_game matches 2.. run tellraw @a[tag=!moveroyale_bracket_low] ["§a[§r彀§a] ",{"selector":"@s"},"§7第",{"score":{"name": "completions_high","objective": "moveroyale_game"},"color": "gold"},"§7个完成了本回合§c高级组§7的挑战。 "]

execute at @s run playsound sound.acquire record @s ~ ~ ~

scoreboard players operation @s moveroyale_roundrank = completions_high moveroyale_game
# removes from round
tag @s remove moveroyale_inround
gamemode spectator @s

# Enemy fx

execute as @a[tag=moveroyale_inround,tag=moveroyale_bracket_high] at @s run playsound sound.enemy_completed record @s ~ ~ ~