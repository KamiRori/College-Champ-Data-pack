

execute store result storage moveroyale:round_comp finale int 1 run scoreboard players add completions_finale moveroyale_game 1

scoreboard players operation @s moveroyale_finale_roundtime = time_elapsed_tick moveroyale_game

tellraw @s ["","§a[§r彀§a] ","§a你第",{"score":{"name": "completions_finale","objective": "moveroyale_game"},"color": "#E3E3E3"},"§a个完成了本回合！"]
tellraw @s ["  §7↪ ","§7完成用时",{"storage":"moveroyale:timer","nbt":"uniform","color": "white"},"§fs§7."]

execute if score completions_finale moveroyale_game matches 1 run tellraw @a ["§b[§r彀§b] ",{"selector":"@s"},"§b为本回合§4决胜组§b的§6冠军§b。 ","§6(",{"storage":"moveroyale:timer","nbt":"uniform","color": "gold"},"§6s)"]
execute if score completions_finale moveroyale_game matches 2.. run tellraw @a ["§a[§r彀§a] ",{"selector":"@s"},"§7第",{"score":{"name": "completions_finale","objective": "moveroyale_game"},"color": "gold"},"§7个完成了本回合§4决胜组§7的挑战。 "]

execute at @s run playsound sound.acquire record @s ~ ~ ~

scoreboard players operation @s moveroyale_roundrank = completions_finale moveroyale_game
# removes from round
tag @s remove moveroyale_inround
gamemode spectator @s


# Enemy fx

execute as @a[tag=moveroyale_inround,tag=moveroyale_bracket_finale] at @s run playsound sound.enemy_completed record @s ~ ~ ~