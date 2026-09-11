
# Gameflag
scoreboard players set gameflag moveroyale_game 0
scoreboard players set RoundActive tourney_stats 0

# Config
scoreboard players set canPlace moveroyale_behavior_config 0
scoreboard players set hideNearby moveroyale_behavior_config 0
scoreboard players set clientSideBlocks moveroyale_behavior_config 0

# FX
stopsound @a voice
execute as @a at @s run playsound sound.end record @s

title @a times 0 40 20
title @a title "§c§l回合结束！"

tellraw @a ["§b[§r峟§b] 回合结束！"]
# Black Screened teleport
execute if score round moveroyale_game matches 1..8 run schedule function utils:blackscreen/5_10_5 20t
execute if score round moveroyale_game matches 1..8 run schedule function moveroyale:transfer/round_end_normal 25t
execute if score round moveroyale_game matches 9..10 run schedule function moveroyale:transfer/round_end_finale 25t

# TAG CLEARUP
tag @a remove moveroyale_inround
tag @a remove moveroyale_obstacles_ceiling_warn
## NORMAL ROUNDS
# Completion Rate Based Scoring
execute if score round moveroyale_game matches 1..8 if score round_type moveroyale_game matches 1..5 run function moveroyale:rate_based_rank/checkpoint
execute if score round moveroyale_game matches 9..10 run function moveroyale:finale/round_score/get

# Elimination Process for Rounds 4-8
execute if score round moveroyale_game matches 4 run scoreboard players operation elimination_score moveroyale_game = 4 moveroyale_score_border
execute if score round moveroyale_game matches 5 run scoreboard players operation elimination_score moveroyale_game = 5 moveroyale_score_border
execute if score round moveroyale_game matches 6 run scoreboard players operation elimination_score moveroyale_game = 6 moveroyale_score_border
execute if score round moveroyale_game matches 7 run scoreboard players operation elimination_score moveroyale_game = 7 moveroyale_score_border
execute if score round moveroyale_game matches 8 run scoreboard players operation elimination_score moveroyale_game = 8 moveroyale_score_border

execute if score round moveroyale_game matches 4..8 run function moveroyale:elimination/init

## FINALE ROUNDS

execute if score round moveroyale_game matches 10 run function moveroyale:end

execute if score round moveroyale_game matches 10 run return 0
# Start Next Round in 15s
team modify placeholder_3 prefix ["§c下一回合: "]
function master:timer/nextround/15s
function moveroyale:beginlistener/loop_nextround
# Abar

