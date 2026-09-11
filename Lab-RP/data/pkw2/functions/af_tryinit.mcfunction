
execute if score counting_score pkw2_game matches 1 run tellraw @s "§c正在结算分数，别急！"
execute if score counting_score pkw2_game matches 1 run return 0

execute if score gameflag pkw2_game matches 1 run tellraw @s "§c游戏正在进行，别急！"
execute if score gameflag pkw2_game matches 1 run return 0

execute if score intro_phase pkw2_game matches 1 run tellraw @s "§c游戏马上开始了，别急！"
execute if score intro_phase pkw2_game matches 1 run return 0

team join red @a[tag=!admin]
function master:pkw2