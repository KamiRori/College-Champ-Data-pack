

title @a times 0 60 10
title @a title ["",{"text": "游戏结束！","color": "red","bold": true}]

execute as @a at @s run playsound music.gameendmusic record @s

# GAME END
execute as @a[team=!spec] run scoreboard players operation @s SortTarget = @s tagrush_indvscore
function utils:rankstart

gamemode spectator @a
difficulty peaceful
schedule clear utils:survivalregen
schedule clear master:latejoinspec
function utils:no_drop_stop

execute if score eventmode tourney_stats matches 0 run scoreboard players reset :
execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/45s

schedule clear tagrush:ranking

gamerule reducedDebugInfo false

# Game Scoring Calculate
scoreboard players set red tagrush_teamscore 0
scoreboard players set blue tagrush_teamscore 0
scoreboard players set green tagrush_teamscore 0
scoreboard players set yellow tagrush_teamscore 0
scoreboard players set cyan tagrush_teamscore 0
scoreboard players set orange tagrush_teamscore 0
scoreboard players set purple tagrush_teamscore 0
scoreboard players set pink tagrush_teamscore 0

execute as @a run scoreboard players operation @s tourney_indv += @s tagrush_indvscore

execute as @a[team=red] run scoreboard players operation red tagrush_teamscore += @s tagrush_indvscore
execute as @a[team=blue] run scoreboard players operation blue tagrush_teamscore += @s tagrush_indvscore
execute as @a[team=green] run scoreboard players operation green tagrush_teamscore += @s tagrush_indvscore
execute as @a[team=yellow] run scoreboard players operation yellow tagrush_teamscore += @s tagrush_indvscore
execute as @a[team=cyan] run scoreboard players operation cyan tagrush_teamscore += @s tagrush_indvscore
execute as @a[team=orange] run scoreboard players operation orange tagrush_teamscore += @s tagrush_indvscore
execute as @a[team=purple] run scoreboard players operation purple tagrush_teamscore += @s tagrush_indvscore
execute as @a[team=pink] run scoreboard players operation pink tagrush_teamscore += @s tagrush_indvscore

scoreboard players operation red tagrush_teamscore *= multiplier1 tourney_stats
scoreboard players operation red tagrush_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue tagrush_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue tagrush_teamscore /= multiplier2 tourney_stats

scoreboard players operation green tagrush_teamscore *= multiplier1 tourney_stats
scoreboard players operation green tagrush_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow tagrush_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow tagrush_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan tagrush_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan tagrush_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange tagrush_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange tagrush_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple tagrush_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple tagrush_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink tagrush_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink tagrush_teamscore /= multiplier2 tourney_stats

scoreboard players operation 红队 overallscore += red tagrush_teamscore
scoreboard players operation 蓝队 overallscore += blue tagrush_teamscore
scoreboard players operation 绿队 overallscore += green tagrush_teamscore
scoreboard players operation 黄队 overallscore += yellow tagrush_teamscore
scoreboard players operation 青队 overallscore += cyan tagrush_teamscore
scoreboard players operation 橙队 overallscore += orange tagrush_teamscore
scoreboard players operation 紫队 overallscore += purple tagrush_teamscore
scoreboard players operation 粉队 overallscore += pink tagrush_teamscore

scoreboard players operation red GameRankTarget = red tagrush_teamscore
scoreboard players operation blue GameRankTarget = blue tagrush_teamscore
scoreboard players operation green GameRankTarget = green tagrush_teamscore
scoreboard players operation yellow GameRankTarget = yellow tagrush_teamscore
scoreboard players operation cyan GameRankTarget = cyan tagrush_teamscore
scoreboard players operation orange GameRankTarget = orange tagrush_teamscore
scoreboard players operation purple GameRankTarget = purple tagrush_teamscore
scoreboard players operation pink GameRankTarget = pink tagrush_teamscore

function utils:personal/update
schedule function utils:text/gamescore 6s
schedule function utils:text/mvp 14s
schedule function tagrush:mvpannouncement 16s
schedule function utils:text/eventstandings 24s

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §f§6Event State: §7TAG_RUSH_INGAME§f -> GAME_ENDS"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
