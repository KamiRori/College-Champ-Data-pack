
scoreboard objectives add temp_mr_rf_score dummy
scoreboard objectives add temp_mr_rf_dif dummy
# Completion grants at least 100 credits.
execute as @a[tag=moveroyale_finalist] run scoreboard players set @s temp_mr_rf_score 0
execute as @a[tag=moveroyale_finalist,scores={moveroyale_finale_roundtime=1..}] run scoreboard players set @s temp_mr_rf_score 100
# Get the highest complete time
scoreboard players set $maxClearTime temp_mr_rf_dif -1
execute as @a[tag=moveroyale_finalist] run scoreboard players operation $maxClearTime temp_mr_rf_dif > @s moveroyale_finale_roundtime
# Get the difference between player's time and max clear time, for each percent faster, 1 credit is granted. (MaxTime - PersonalTime)
execute as @a[tag=moveroyale_finalist,scores={moveroyale_finale_roundtime=1..}] run scoreboard players operation @s temp_mr_rf_dif = $maxClearTime temp_mr_rf_dif
execute as @a[tag=moveroyale_finalist,scores={moveroyale_finale_roundtime=1..}] run scoreboard players operation @s temp_mr_rf_dif -= @s moveroyale_finale_roundtime
execute as @a[tag=moveroyale_finalist,scores={moveroyale_finale_roundtime=1..}] run scoreboard players operation @s temp_mr_rf_dif *= 100 math
execute as @a[tag=moveroyale_finalist,scores={moveroyale_finale_roundtime=1..}] run scoreboard players operation @s temp_mr_rf_dif /= $maxClearTime temp_mr_rf_dif
#
execute as @a[tag=moveroyale_finalist,scores={moveroyale_finale_roundtime=1..}] run scoreboard players operation @s temp_mr_rf_score += @s temp_mr_rf_dif
# for players that DNF, 1 checkpoint grants 30 credits, 2 checkpoints grants 60 credits, 3+ grants 80.
execute as @a[tag=moveroyale_finalist,scores={moveroyale_finale_roundtime=..-1}] if score @s moveroyale_cleared_cps matches 1 run scoreboard players set @s temp_mr_rf_score 30
execute as @a[tag=moveroyale_finalist,scores={moveroyale_finale_roundtime=..-1}] if score @s moveroyale_cleared_cps matches 2 run scoreboard players set @s temp_mr_rf_score 65
execute as @a[tag=moveroyale_finalist,scores={moveroyale_finale_roundtime=..-1}] if score @s moveroyale_cleared_cps matches 3.. run scoreboard players set @s temp_mr_rf_score 80
# Announce scores
execute as @a[tag=moveroyale_finalist] run tellraw @s ["§b[§r峟§b] 本回合获取决胜积分: ",{"score":{"name": "@s","objective": "temp_mr_rf_score"}}]
execute as @a[tag=moveroyale_finalist] run scoreboard players operation @s moveroyale_finale_credits += @s temp_mr_rf_score

# Cleanup
scoreboard objectives remove temp_mr_rf_score
scoreboard objectives remove temp_mr_rf_dif