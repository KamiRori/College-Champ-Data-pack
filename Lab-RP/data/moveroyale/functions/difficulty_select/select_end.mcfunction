
schedule clear moveroyale:difficulty_select/detection

# Force selection if they haven't yet
execute as @a[team=!spec,tag=!moveroyale_selected] run function moveroyale:difficulty_select/select_high

# Next Round
tellraw @a ["§6[§r峟§6] 组别选择阶段结束，回合即将开始。"]
function master:timer/nextround/5s
function moveroyale:beginlistener/loop_challenge_setup
