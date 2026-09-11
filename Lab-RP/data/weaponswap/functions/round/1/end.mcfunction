
scoreboard players set RoundActive tourney_stats 0

# Game Flag
scoreboard players set gameflag ws_game 0
gamerule naturalRegeneration true

# Clear center
kill @e[type=area_effect_cloud,tag=bordercenter]
kill @e[type=item]
# SFX and Title
stopsound @a voice minecraft:music.weaponswap
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s
title @a times 0 60 20
title @a title "§c§l回合结束！"
title @a actionbar ""

effect give @a resistance 15 5 true
effect give @a fire_resistance 15 5 true

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

execute as @a[tag=!ws_eliminated,team=!spec] run scoreboard players set @s ws_recap_r1 1


scoreboard players operation @a[tag=!ws_eliminated,team=!spec] ws_indvscore += win ws_stats
scoreboard players operation @a[tag=!ws_eliminated,team=!spec] ws_roundscore += win ws_stats

# Personal Scorings
execute as @a[team=!spec] run tellraw @s ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局淘汰了"},{"score":{"name": "@s","objective": "ws_roundkills"},"color":"aqua"},{"text": "名对手。"}]
execute as @a[team=!spec] run tellraw @s ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局获得了"},{"score":{"name": "@s","objective": "ws_roundscore"},"color":"gold"},{"text": "分。"}]

# Next Round in 15s
schedule function weaponswap:teampos/text1 2s
schedule function weaponswap:teampos/text2 4s
function master:timer/nextround/15s
schedule function weaponswap:round/2/init 15s
schedule function utils:blackscreen/5_20_5 295t
# no more fireworks
schedule clear utils:firework_death

# FF Modifier
execute if score modifiers_friendlyfire ws_game matches 1 run scoreboard players set friendly_fire_mod tourney_stats 1

# Tag
team modify red nametagVisibility always
team modify blue nametagVisibility always
team modify green nametagVisibility always
team modify yellow nametagVisibility always
team modify cyan nametagVisibility always
team modify pink nametagVisibility always
team modify orange nametagVisibility always
team modify purple nametagVisibility always