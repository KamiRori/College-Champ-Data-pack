
scoreboard players set RoundActive tourney_stats 0

# Game Flag
schedule clear master:timer/timeleft/sec
scoreboard players set gameflag ws_game 0
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
# Team Placement
execute if entity @p[team=red,tag=!ws_eliminated] run scoreboard players set red ws_team_placement 1
execute if entity @p[team=blue,tag=!ws_eliminated] run scoreboard players set blue ws_team_placement 1
execute if entity @p[team=green,tag=!ws_eliminated] run scoreboard players set green ws_team_placement 1
execute if entity @p[team=yellow,tag=!ws_eliminated] run scoreboard players set yellow ws_team_placement 1
execute if entity @p[team=cyan,tag=!ws_eliminated] run scoreboard players set cyan ws_team_placement 1
execute if entity @p[team=pink,tag=!ws_eliminated] run scoreboard players set pink ws_team_placement 1
execute if entity @p[team=orange,tag=!ws_eliminated] run scoreboard players set orange ws_team_placement 1
execute if entity @p[team=purple,tag=!ws_eliminated] run scoreboard players set purple ws_team_placement 1

# Team Survival Placement Bonus
function weaponswap:team_placement_score

# Win Announce & Win PT
execute if score teams ws_game matches 1.. run tellraw @a ["","§b[§r尢§b] ",{"selector":"@a[tag=!ws_eliminated,team=!spec]"},"§b是最后存活的玩家！"]
execute if score teams ws_game matches 0 run tellraw @a ["","§b[§r尢§b] ","§b本局无人生还！"]
tellraw @a[tag=!ws_eliminated,team=!spec] ["","[§6+",{"score":{"name": "win","objective": "ws_stats"},"color": "gold"},{"text": "分","color": "gold"},"] §a[§r彀§a] ","§a§l你是最后存活的玩家！"]
execute as @a[tag=!ws_eliminated,team=!spec] at @s run playsound minecraft:majoracquire record @s ~ ~ ~ 1

execute as @a[tag=!ws_eliminated,team=!spec] run scoreboard players set @s ws_recap_r3 1


scoreboard players operation @a[tag=!ws_eliminated,team=!spec] ws_indvscore += win ws_stats
scoreboard players operation @a[tag=!ws_eliminated,team=!spec] ws_roundscore += win ws_stats
# Final Recap
function weaponswap:player_action/final_recap

# Personal Scorings
execute as @a[team=!spec] run tellraw @s ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局淘汰了"},{"score":{"name": "@s","objective": "ws_roundkills"},"color":"aqua"},{"text": "名对手。"}]
execute as @a[team=!spec] run tellraw @s ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局获得了"},{"score":{"name": "@s","objective": "ws_roundscore"},"color":"gold"},{"text": "分。"}]

# Back to hub in 45s if it's tournament mode
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : ws_sb

execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/45s

# debug

gamerule reducedDebugInfo false
# Remove center
kill @e[type=area_effect_cloud,tag=bordercenter]

# Tag
team modify red nametagVisibility always
team modify blue nametagVisibility always
team modify green nametagVisibility always
team modify yellow nametagVisibility always
team modify cyan nametagVisibility always
team modify pink nametagVisibility always
team modify orange nametagVisibility always
team modify purple nametagVisibility always
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

execute if score modifier_teamfight ws_game matches 1 run function weaponswap:modifiers/teamfight_over

# Negative Multi Init
execute if score multiplier1 tourney_stats matches ..-1 run data modify storage master:negative_multi namespace set value "ws_teamscore"
execute if score multiplier1 tourney_stats matches ..-1 run function master:negative_multi/init with storage master:negative_multi


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

execute as @a[team=!spec] run scoreboard players operation @s tourney_indv += @s ws_indvscore
function utils:personal/update

execute as @a[team=!spec] run scoreboard players operation @s SortTarget = @s ws_indvscore
function utils:rankstart

schedule function weaponswap:teampos/text1 2s
schedule function weaponswap:teampos/text2 4s
schedule function utils:text/gamescore 10s
schedule function utils:text/mvp 16s
schedule function weaponswap:mvp 18s
schedule function utils:text/eventstandings 22s