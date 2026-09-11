
scoreboard players set $target moveroyale_finale_pos -1
execute as @a[tag=moveroyale_finalist,scores={moveroyale_finale_pos=-1}] run scoreboard players operation $target moveroyale_finale_pos > @s moveroyale_finale_credits
execute as @a[tag=moveroyale_finalist,scores={moveroyale_finale_pos=-1}] if score @s moveroyale_finale_credits = $target moveroyale_finale_pos run scoreboard players operation @s moveroyale_finale_pos = $step moveroyale_finale_pos

execute as @a[tag=moveroyale_finalist] if score @s moveroyale_finale_credits = $target moveroyale_finale_pos run scoreboard players add $step moveroyale_finale_pos 1

execute if entity @a[tag=moveroyale_finalist,scores={moveroyale_finale_pos=-1}] run function moveroyale:finale/loop_end_credit_rank