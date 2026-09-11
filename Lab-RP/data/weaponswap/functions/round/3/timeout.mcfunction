scoreboard players set RoundActive tourney_stats 0
# Game Flag
schedule clear master:timer/timeleft/sec
scoreboard players set gameflag ws_game 0
execute as @a run scoreboard players operation @s ws_gamekills += @s ws_roundkills
schedule clear master:latejoinspec
gamerule naturalRegeneration true

# SFX and Title
stopsound @a voice minecraft:music.weaponswap
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s
execute as @a at @s run playsound music.gameendmusic record @s

title @a times 0 60 20
title @a title "§c§l游戏结束！"
title @a actionbar ""

effect give @a resistance 15 5 true
effect give @a fire_resistance 15 5 true

# Win Announce & Win PT
execute if score teams ws_game matches 1.. run tellraw @a[gamemode=!survival] ["","§b[§r尢§b]",{"text": "§b时间到！"},{"selector":"@a[gamemode=survival]"},{"text": "§b是最后存活的玩家！"}]
execute if score teams ws_game matches 0 run tellraw @a[gamemode=!survival] ["","§b[§r尢§b]","§b 时间到！本局无人生还！"]

tellraw @a[gamemode=survival] ["","[§6+",{"score":{"name": "win","objective": "ws_stats"},"color": "gold"},{"text": "分","color": "gold"},"] §a[§r彀§a]",{"text": "时间到！你是最后存活的玩家之一！"}]
execute as @a[gamemode=survival] run playsound minecraft:majoracquire record @s ~ ~ ~ 1

scoreboard players operation @a[gamemode=survival] ws_indvscore += win ws_stats
scoreboard players operation @a[gamemode=survival] ws_roundscore += win ws_stats

execute as @a[gamemode=survival] run scoreboard players set @s ws_recap_r3 1

# Personal Scorings
execute as @a[team=!spec] run tellraw @s ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局淘汰了"},{"score":{"name": "@s","objective": "ws_roundkills"},"color":"aqua"},{"text": "名对手。"}]
execute as @a[team=!spec] run tellraw @s ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局获得了"},{"score":{"name": "@s","objective": "ws_roundscore"},"color":"gold"},{"text": "分。"}]

# Final Recap
function weaponswap:player_action/final_recap

# Back to hub in 30s if it's tournament mode
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : ws_sb
execute if score eventmode tourney_stats matches 0 run scoreboard players set §4 ws_sb 13
execute if score eventmode tourney_stats matches 0 run team modify placeholder_4 suffix ""
execute if score eventmode tourney_stats matches 0 run team modify placeholder_4 prefix ["",{"text": "游戏结束","color":"red","bold":true}]
execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/30s

# Regenerate arena in 30s
execute if score map ws_game matches 1 run schedule function weaponswap:structure/zone3/classic/place 35s
execute if score map ws_game matches 2 run schedule function weaponswap:structure/zone3/sandcastle/place 35s
execute if score map ws_game matches 3 run schedule function weaponswap:structure/zone3/wasteland/place 35s
execute if score map ws_game matches 4 run schedule function weaponswap:structure/zone3/cakesland/place 35s

# Remove center
kill @e[type=area_effect_cloud,tag=bordercenter]
# Reward Summary
scoreboard players set red ws_teamscore 0
scoreboard players set blue ws_teamscore 0
scoreboard players set green ws_teamscore 0
scoreboard players set yellow ws_teamscore 0
scoreboard players set cyan ws_teamscore 0
scoreboard players set orange ws_teamscore 0
scoreboard players set purple ws_teamscore 0
scoreboard players set pink ws_teamscore 0

execute as @a[team=red] run scoreboard players operation red ws_teamscore += @s ws_indvscore
execute as @a[team=blue] run scoreboard players operation blue ws_teamscore += @s ws_indvscore
execute as @a[team=green] run scoreboard players operation green ws_teamscore += @s ws_indvscore
execute as @a[team=yellow] run scoreboard players operation yellow ws_teamscore += @s ws_indvscore
execute as @a[team=cyan] run scoreboard players operation cyan ws_teamscore += @s ws_indvscore
execute as @a[team=orange] run scoreboard players operation orange ws_teamscore += @s ws_indvscore
execute as @a[team=purple] run scoreboard players operation purple ws_teamscore += @s ws_indvscore
execute as @a[team=pink] run scoreboard players operation pink ws_teamscore += @s ws_indvscore

scoreboard players operation red ws_teamscore *= multiplier1 tourney_stats
scoreboard players operation red ws_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue ws_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue ws_teamscore /= multiplier2 tourney_stats

scoreboard players operation green ws_teamscore *= multiplier1 tourney_stats
scoreboard players operation green ws_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow ws_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow ws_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan ws_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan ws_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange ws_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange ws_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple ws_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple ws_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink ws_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink ws_teamscore /= multiplier2 tourney_stats

scoreboard players operation 红队 overallscore += red ws_teamscore
scoreboard players operation 蓝队 overallscore += blue ws_teamscore
scoreboard players operation 绿队 overallscore += green ws_teamscore
scoreboard players operation 黄队 overallscore += yellow ws_teamscore
scoreboard players operation 青队 overallscore += cyan ws_teamscore
scoreboard players operation 橙队 overallscore += orange ws_teamscore
scoreboard players operation 紫队 overallscore += purple ws_teamscore
scoreboard players operation 粉队 overallscore += pink ws_teamscore

scoreboard players operation red GameRankTarget = red ws_teamscore
scoreboard players operation blue GameRankTarget = blue ws_teamscore
scoreboard players operation green GameRankTarget = green ws_teamscore
scoreboard players operation yellow GameRankTarget = yellow ws_teamscore
scoreboard players operation cyan GameRankTarget = cyan ws_teamscore
scoreboard players operation orange GameRankTarget = orange ws_teamscore
scoreboard players operation purple GameRankTarget = purple ws_teamscore
scoreboard players operation pink GameRankTarget = pink ws_teamscore

execute as @a[team=!spec] run scoreboard players operation @s SortTarget = @s ws_indvscore
function utils:rankstart

schedule function utils:text/gamescore 2s
schedule function utils:text/mvp 10s
schedule function weaponswap:mvp 12s
schedule function utils:text/eventstandings 20s