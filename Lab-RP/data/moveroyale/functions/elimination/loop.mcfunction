
# Only eliminate one player with the lowest score this step
scoreboard players set $elimScore moveroyale_game 2147483647
execute as @a[tag=temp_mr_pre_elim] run scoreboard players operation $elimScore moveroyale_game < @s moveroyale_indv
execute as @a[tag=temp_mr_pre_elim] if score @s moveroyale_indv = $elimScore moveroyale_game run tag @s add temp_mr_elim_this_step

execute as @r[tag=temp_mr_elim_this_step] at @s run function moveroyale:elimination/self
tag @a remove temp_mr_elim_this_step

# Calculates players left. Only continues to eliminate players if there are at least 2 Players for the final round.
scoreboard players set remaining moveroyale_game 0
execute as @a[team=!spec,tag=!moveroyale_eliminated] run scoreboard players add remaining moveroyale_game 1

execute if entity @a[tag=temp_mr_pre_elim] if score remaining moveroyale_game matches 3.. run schedule function moveroyale:elimination/loop 8t
