


scoreboard objectives add moveroyale_this_y dummy
# Only for height sendback.
execute as @a[gamemode=!spectator] run execute store result score @s moveroyale_this_y run data get entity @s Pos[1] 10

# Personal Low Bound
execute as @a[gamemode=!spectator] run scoreboard players operation @s moveroyale_personal_low_bound = @s moveroyale_cp_coords_y
execute as @a[gamemode=!spectator] run scoreboard players remove @s moveroyale_personal_low_bound 400
execute as @a[gamemode=!spectator] run scoreboard players operation @s moveroyale_personal_low_bound > trident_low_limit moveroyale_cptable


execute as @a[gamemode=!spectator] if score @s moveroyale_this_y <= @s moveroyale_personal_low_bound run function moveroyale:challenge_set/trident/sendback

execute if score gameflag moveroyale_game matches 0 run schedule function moveroyale:challenge_set/trident/pre_round_detect 1t

