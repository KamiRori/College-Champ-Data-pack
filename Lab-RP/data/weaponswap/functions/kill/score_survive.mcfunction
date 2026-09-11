
scoreboard players set $temp_score ws_game 0
scoreboard players set $temp_score2 ws_game 0
# Calculate kill score
scoreboard players operation $temp_score ws_game = survival ws_stats

scoreboard players operation $temp_score2 ws_game = survival_with_team ws_stats
scoreboard players operation $temp_score2 ws_game *= @s ws_teammates_near
scoreboard players operation $temp_score2 ws_game -= survival_with_team ws_stats
scoreboard players operation $temp_score ws_game += $temp_score_2 ws_game

# score and announce
scoreboard players operation @s ws_indvscore += $temp_score ws_game
scoreboard players operation @s ws_roundscore += $temp_score ws_game

playsound minecraft:sound.coinsminor record @s ~ ~ ~
tellraw @s ["",{"text": "[§6+"},{"score":{"name": "$temp_score","objective": "ws_game"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@a[tag=step_kill_judge]"},{"text": "被"},{"selector":"@a[tag=step_killer]"},{"text": "击杀"}]