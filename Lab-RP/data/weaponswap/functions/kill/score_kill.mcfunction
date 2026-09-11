
# Tag is cleared when kill message is done judging
tag @s add step_killer


scoreboard players set $temp_score ws_game 0
scoreboard players set $temp_score2 ws_game 0
# Calculate kill score
scoreboard players operation $temp_score ws_game = kill ws_stats

scoreboard players operation $temp_score2 ws_game = kill_with_team ws_stats
scoreboard players operation $temp_score2 ws_game *= @s ws_teammates_near
scoreboard players operation $temp_score2 ws_game -= kill_with_team ws_stats
scoreboard players operation $temp_score ws_game += $temp_score_2 ws_game

# score and announce
scoreboard players operation @s ws_indvscore += $temp_score ws_game
scoreboard players operation @s ws_roundscore += $temp_score ws_game
scoreboard players add @s ws_roundkills 1
scoreboard players add @s ws_gamekills 1

tellraw @s ["",{"text": "[§6+"},{"score":{"name": "$temp_score","objective": "ws_game"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@a[tag=step_kill_judge]"},"!"]
title @s times 0 60 10
title @s title ""
title @s subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[tag=step_kill_judge]"}]
playsound minecraft:sound.acquire record @s ~ ~ ~