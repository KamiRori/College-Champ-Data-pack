

scoreboard players set arena moveroyale_game 1
scoreboard players set trident_1 moveroyale_arena_used 1
tellraw @a[tag=admin] ["[§6Dev§f] Running §btrident §fin arena §e1"]

team modify placeholder_8 suffix ["HoveringVya"]

# COPIES CHECKPOINT 1 DATA
execute as @a[tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_x run scoreboard players get trident_1_e_1_x moveroyale_cptable
execute as @a[tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_y run scoreboard players get trident_1_e_1_y moveroyale_cptable
execute as @a[tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_z run scoreboard players get trident_1_e_1_z moveroyale_cptable
execute as @a[tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_angle1 run scoreboard players get trident_1_e_1_angle1 moveroyale_cptable
execute as @a[tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_angle2 run scoreboard players get trident_1_e_1_angle2 moveroyale_cptable

execute as @a[tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_x run scoreboard players get trident_1_h_1_x moveroyale_cptable
execute as @a[tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_y run scoreboard players get trident_1_h_1_y moveroyale_cptable
execute as @a[tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_z run scoreboard players get trident_1_h_1_z moveroyale_cptable
execute as @a[tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_angle1 run scoreboard players get trident_1_h_1_angle1 moveroyale_cptable
execute as @a[tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_angle2 run scoreboard players get trident_1_h_1_angle2 moveroyale_cptable

# Teleport
execute as @a[tag=moveroyale_bracket_low] run function moveroyale:player_action/return_checkpoint_silent
execute as @a[tag=moveroyale_bracket_high] run function moveroyale:player_action/return_checkpoint_silent
execute as @a[scores={moveroyale_playing_copy=-1}] run tp @r[scores={moveroyale_playing_copy=1}]
