
scoreboard objectives add moveroyale_finale_pos dummy
scoreboard objectives add moveroyale_finale_earn dummy

scoreboard players reset @a moveroyale_finale_pos
scoreboard players set $step moveroyale_finale_pos 1

scoreboard players set @a[tag=moveroyale_finalist] moveroyale_finale_pos -1
function moveroyale:finale/loop_end_credit_rank

scoreboard players set @a moveroyale_finale_score 0
scoreboard players operation @a[scores={moveroyale_finale_pos=1}] moveroyale_finale_earn = 1 moveroyale_score_finale
scoreboard players operation @a[scores={moveroyale_finale_pos=2}] moveroyale_finale_earn = 2 moveroyale_score_finale
scoreboard players operation @a[scores={moveroyale_finale_pos=3}] moveroyale_finale_earn = 3 moveroyale_score_finale
scoreboard players operation @a[scores={moveroyale_finale_pos=4}] moveroyale_finale_earn = 4 moveroyale_score_finale
scoreboard players operation @a[scores={moveroyale_finale_pos=5..}] moveroyale_finale_earn = 5.. moveroyale_score_finale

execute as @a run scoreboard players operation @s moveroyale_indv += @s moveroyale_finale_earn
