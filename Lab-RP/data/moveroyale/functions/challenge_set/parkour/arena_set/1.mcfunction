

scoreboard players set arena moveroyale_game 1
scoreboard players set parkour_1 moveroyale_arena_used 1
tellraw @a[tag=admin] ["[§6Dev§f] Running §bparkour §fin arena §e1"]

# COPIES CHECKPOINT 1 DATA
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_low] run scoreboard players operation @s moveroyale_cp_coords_x = parkour_1_e_1_x moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_low] run scoreboard players operation @s moveroyale_cp_coords_y = parkour_1_e_1_y moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_low] run scoreboard players operation @s moveroyale_cp_coords_z = parkour_1_e_1_z moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_low] run scoreboard players operation @s moveroyale_cp_coords_angle1 = parkour_1_e_1_angle1 moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_low] run scoreboard players operation @s moveroyale_cp_coords_angle2 = parkour_1_e_1_angle2 moveroyale_cptable


execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_high] run scoreboard players operation @s moveroyale_cp_coords_x = parkour_1_h_1_x moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_high] run scoreboard players operation @s moveroyale_cp_coords_y = parkour_1_h_1_y moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_high] run scoreboard players operation @s moveroyale_cp_coords_z = parkour_1_h_1_z moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_high] run scoreboard players operation @s moveroyale_cp_coords_angle1 = parkour_1_h_1_angle1 moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_high] run scoreboard players operation @s moveroyale_cp_coords_angle2 = parkour_1_h_1_angle2 moveroyale_cptable

# Teleport
execute as @a[scores={moveroyale_playing_copy=1..}] run function moveroyale:player_action/return_checkpoint_silent
execute as @a[scores={moveroyale_playing_copy=-1}] run tp @r[scores={moveroyale_playing_copy=1}]