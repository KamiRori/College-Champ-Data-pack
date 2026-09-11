
scoreboard players set split tagrush_game 2

scoreboard players operation timeleft_t tagrush_game = time_split02 tagrush_game
execute store result bossbar tagrush_timer value run scoreboard players get time_split02 tagrush_game

title @a[tag=!tagrush_status_drained] times 2 16 2
title @a[tag=!tagrush_status_drained] title ""
title @a[tag=!tagrush_status_drained] subtitle "§b切分§f2§b开始！"

# Tags Players.
execute unless score a1_team1 tagrush_matchinfo = a1_team2 tagrush_matchinfo run function tagrush:game/arena/1/tag_leading
execute if score a1_team1 tagrush_matchinfo = a1_team2 tagrush_matchinfo run function tagrush:game/arena/1/tag_both

execute unless score a2_team1 tagrush_matchinfo = a2_team2 tagrush_matchinfo run function tagrush:game/arena/2/tag_leading
execute if score a2_team1 tagrush_matchinfo = a2_team2 tagrush_matchinfo run function tagrush:game/arena/2/tag_both

execute unless score a3_team1 tagrush_matchinfo = a3_team2 tagrush_matchinfo run function tagrush:game/arena/3/tag_leading
execute if score a3_team1 tagrush_matchinfo = a3_team2 tagrush_matchinfo run function tagrush:game/arena/3/tag_both

execute unless score a4_team1 tagrush_matchinfo = a4_team2 tagrush_matchinfo run function tagrush:game/arena/4/tag_leading
execute if score a4_team1 tagrush_matchinfo = a4_team2 tagrush_matchinfo run function tagrush:game/arena/4/tag_both

# fx
tellraw @a ["§b[§r鄵§b] 切分",{"score":{"name": "split","objective": "tagrush_game"},"color": "#E3E3E3"},"§b开始！"]
execute as @a at @s run playsound sound.hitwspeedincrease record @s