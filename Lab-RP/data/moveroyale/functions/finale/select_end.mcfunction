# Flag
scoreboard players set phase_finale_prelude moveroyale_game 3
scoreboard players set canPlace moveroyale_behavior_config 0
schedule clear moveroyale:finale/detect
schedule clear moveroyale:timer/finale_select

# Finds if there are rounds that aren't selected
clear @a
execute unless score 9 moveroyale_roundtype matches 1..10 run function moveroyale:finale/random_mode/9
execute unless score 10 moveroyale_roundtype matches 1..10 run function moveroyale:finale/random_mode/10

# bossbar
function moveroyale:bossbar/round_type_finale

# Round init timer
team modify placeholder_3 prefix ["§c下一回合: "]
tellraw @a ["§6[§r峟§6] 最终回合选定结束，回合即将开始。"]
function master:timer/nextround/5s
function moveroyale:beginlistener/loop_challenge_setup
