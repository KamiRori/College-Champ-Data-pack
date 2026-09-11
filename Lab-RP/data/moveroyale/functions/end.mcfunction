
# Back To Hub
scoreboard players set gameflag moveroyale_game 0

# End Score
function moveroyale:finale/end_score

#END FX
title @a times 0 40 20
title @a title "§c§l游戏结束！"
execute as @a at @s run playsound minecraft:music.gameendmusic voice @s
# End clean up
bossbar remove moveroyale_round_types
schedule clear moveroyale:actionbar/loop

# Args
scoreboard players set canPlace moveroyale_behavior_config 0
scoreboard players set hideNearby moveroyale_behavior_config 0
scoreboard players set clientSideBlocks moveroyale_behavior_config 0
scoreboard players set noPassengerIceBoat moveroyale_behavior_config 0

# Score
scoreboard players set red moveroyale_teamscore 0
scoreboard players set blue moveroyale_teamscore 0
scoreboard players set green moveroyale_teamscore 0
scoreboard players set yellow moveroyale_teamscore 0
scoreboard players set cyan moveroyale_teamscore 0
scoreboard players set orange moveroyale_teamscore 0
scoreboard players set purple moveroyale_teamscore 0
scoreboard players set pink moveroyale_teamscore 0

execute as @a[team=red] run scoreboard players operation red moveroyale_teamscore += @s moveroyale_indv
execute as @a[team=blue] run scoreboard players operation blue moveroyale_teamscore += @s moveroyale_indv
execute as @a[team=green] run scoreboard players operation green moveroyale_teamscore += @s moveroyale_indv
execute as @a[team=yellow] run scoreboard players operation yellow moveroyale_teamscore += @s moveroyale_indv
execute as @a[team=cyan] run scoreboard players operation cyan moveroyale_teamscore += @s moveroyale_indv
execute as @a[team=orange] run scoreboard players operation orange moveroyale_teamscore += @s moveroyale_indv
execute as @a[team=purple] run scoreboard players operation purple moveroyale_teamscore += @s moveroyale_indv
execute as @a[team=pink] run scoreboard players operation pink moveroyale_teamscore += @s moveroyale_indv

scoreboard players operation red moveroyale_teamscore *= multiplier1 tourney_stats
scoreboard players operation red moveroyale_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue moveroyale_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue moveroyale_teamscore /= multiplier2 tourney_stats

scoreboard players operation green moveroyale_teamscore *= multiplier1 tourney_stats
scoreboard players operation green moveroyale_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow moveroyale_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow moveroyale_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan moveroyale_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan moveroyale_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange moveroyale_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange moveroyale_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple moveroyale_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple moveroyale_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink moveroyale_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink moveroyale_teamscore /= multiplier2 tourney_stats

scoreboard players operation 红队 overallscore += red moveroyale_teamscore
scoreboard players operation 蓝队 overallscore += blue moveroyale_teamscore
scoreboard players operation 绿队 overallscore += green moveroyale_teamscore
scoreboard players operation 黄队 overallscore += yellow moveroyale_teamscore
scoreboard players operation 青队 overallscore += cyan moveroyale_teamscore
scoreboard players operation 橙队 overallscore += orange moveroyale_teamscore
scoreboard players operation 紫队 overallscore += purple moveroyale_teamscore
scoreboard players operation 粉队 overallscore += pink moveroyale_teamscore

scoreboard players operation red GameRankTarget = red moveroyale_teamscore
scoreboard players operation blue GameRankTarget = blue moveroyale_teamscore
scoreboard players operation green GameRankTarget = green moveroyale_teamscore
scoreboard players operation yellow GameRankTarget = yellow moveroyale_teamscore
scoreboard players operation cyan GameRankTarget = cyan moveroyale_teamscore
scoreboard players operation orange GameRankTarget = orange moveroyale_teamscore
scoreboard players operation purple GameRankTarget = purple moveroyale_teamscore
scoreboard players operation pink GameRankTarget = pink moveroyale_teamscore

function utils:personal/update

execute as @a[team=!spec] run scoreboard players operation @s tourney_indv += @s moveroyale_indv
execute as @a[team=!spec] run scoreboard players operation @s SortTarget = @s moveroyale_indv
function utils:rankstart

# Scores
schedule function moveroyale:finale/text_end_score 2s
schedule function moveroyale:finale/end_score_announce 4s
schedule function utils:text/gamescore 10s
schedule function utils:text/mvp 18s
schedule function moveroyale:finalscore/mvp 20s
schedule function utils:text/eventstandings 28s

# back to hub
execute if score eventmode tourney_stats matches 0 run team modify placeholder_3 suffix ""
execute if score eventmode tourney_stats matches 0 run team modify placeholder_3 prefix ["",{"text": "游戏结束","color":"red","bold":true}]
execute if score eventmode tourney_stats matches 0 run schedule clear moveroyale:timer/refresh_sb
execute if score eventmode tourney_stats matches 1 run team modify placeholder_3 prefix ["",{"text": "返回大厅: ","color":"red"}]
execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/45s
execute if score eventmode tourney_stats matches 1 run function moveroyale:timer/backtohub_timer