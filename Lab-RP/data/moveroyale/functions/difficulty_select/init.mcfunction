
schedule clear master:timer/nextround/sec
scoreboard players set pause master.timer 0

tag @a remove moveroyale_bracket_high
tag @a remove moveroyale_bracket_low
tag @a remove moveroyale_selected

execute if score round moveroyale_game matches 1 run fill 199992 3 199992 200008 10 200008 air replace tinted_glass
execute if score round moveroyale_game matches 2 run tp @a[team=!spec] 200000 5 200000
execute if score round moveroyale_game matches 2 run tp @a[team=spec] 200000 5 199975 0 15

title @a times 5 10 5
title @a title "§e选择组别吧！"
title @a subtitle ""

tellraw @a ["§e[§r峟§e] 进入对应难度的传送门以选定组别。若计时结束前未选择组别则默认选择§c高级§e组。"]

team modify placeholder_3 prefix ["§c选择组别: "]
scoreboard players set timeleft_t moveroyale_game 400
function moveroyale:timer/selection_timer
function moveroyale:difficulty_select/detection
