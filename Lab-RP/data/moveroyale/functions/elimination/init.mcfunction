
tellraw @a ["§c[§r鼱§c] 即将开始淘汰玩家。本轮分数线: ",{"score":{"name": "elimination_score","objective": "moveroyale_game"},"color": "#E3E3E3"}]
execute as @a[team=!spec,tag=!moveroyale_eliminated] if score @s moveroyale_indv < elimination_score moveroyale_game run tag @s add temp_mr_pre_elim

schedule function moveroyale:elimination/loop 4s