

scoreboard players set arena moveroyale_game 3
scoreboard players set iceboat_3 moveroyale_arena_used 1
tellraw @a[tag=admin] ["[§6Dev§f] Running §biceboat §fin arena §e3"]

team modify placeholder_8 suffix ["XiFengawa_"]
# COPIES CHECKPOINT 1 DATA
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_x run scoreboard players get iceboat_3_e_1_1_x moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_y run scoreboard players get iceboat_3_e_1_1_y moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_z run scoreboard players get iceboat_3_e_1_1_z moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_angle1 run scoreboard players get iceboat_3_e_1_1_angle1 moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_angle2 run scoreboard players get iceboat_3_e_1_1_angle2 moveroyale_cptable

execute as @a[scores={moveroyale_playing_copy=2},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_x run scoreboard players get iceboat_3_e_2_1_x moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=2},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_y run scoreboard players get iceboat_3_e_2_1_y moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=2},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_z run scoreboard players get iceboat_3_e_2_1_z moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=2},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_angle1 run scoreboard players get iceboat_3_e_2_1_angle1 moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=2},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_angle2 run scoreboard players get iceboat_3_e_2_1_angle2 moveroyale_cptable

execute as @a[scores={moveroyale_playing_copy=3},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_x run scoreboard players get iceboat_3_e_3_1_x moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=3},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_y run scoreboard players get iceboat_3_e_3_1_y moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=3},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_z run scoreboard players get iceboat_3_e_3_1_z moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=3},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_angle1 run scoreboard players get iceboat_3_e_3_1_angle1 moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=3},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_angle2 run scoreboard players get iceboat_3_e_3_1_angle2 moveroyale_cptable

execute as @a[scores={moveroyale_playing_copy=4},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_x run scoreboard players get iceboat_3_e_4_1_x moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=4},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_y run scoreboard players get iceboat_3_e_4_1_y moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=4},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_z run scoreboard players get iceboat_3_e_4_1_z moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=4},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_angle1 run scoreboard players get iceboat_3_e_4_1_angle1 moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=4},tag=moveroyale_bracket_low] run execute store result score @s moveroyale_cp_coords_angle2 run scoreboard players get iceboat_3_e_4_1_angle2 moveroyale_cptable


execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_x run scoreboard players get iceboat_3_h_1_1_x moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_y run scoreboard players get iceboat_3_h_1_1_y moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_z run scoreboard players get iceboat_3_h_1_1_z moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_angle1 run scoreboard players get iceboat_3_h_1_1_angle1 moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=1},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_angle2 run scoreboard players get iceboat_3_h_1_1_angle2 moveroyale_cptable

execute as @a[scores={moveroyale_playing_copy=2},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_x run scoreboard players get iceboat_3_h_2_1_x moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=2},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_y run scoreboard players get iceboat_3_h_2_1_y moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=2},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_z run scoreboard players get iceboat_3_h_2_1_z moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=2},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_angle1 run scoreboard players get iceboat_3_h_2_1_angle1 moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=2},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_angle2 run scoreboard players get iceboat_3_h_2_1_angle2 moveroyale_cptable

execute as @a[scores={moveroyale_playing_copy=3},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_x run scoreboard players get iceboat_3_h_3_1_x moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=3},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_y run scoreboard players get iceboat_3_h_3_1_y moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=3},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_z run scoreboard players get iceboat_3_h_3_1_z moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=3},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_angle1 run scoreboard players get iceboat_3_h_3_1_angle1 moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=3},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_angle2 run scoreboard players get iceboat_3_h_3_1_angle2 moveroyale_cptable

execute as @a[scores={moveroyale_playing_copy=4},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_x run scoreboard players get iceboat_3_h_4_1_x moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=4},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_y run scoreboard players get iceboat_3_h_4_1_y moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=4},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_z run scoreboard players get iceboat_3_h_4_1_z moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=4},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_angle1 run scoreboard players get iceboat_3_h_4_1_angle1 moveroyale_cptable
execute as @a[scores={moveroyale_playing_copy=4},tag=moveroyale_bracket_high] run execute store result score @s moveroyale_cp_coords_angle2 run scoreboard players get iceboat_3_h_4_1_angle2 moveroyale_cptable

# Teleport
execute as @a[scores={moveroyale_playing_copy=1..}] run function moveroyale:player_action/return_checkpoint_silent
execute as @a[scores={moveroyale_playing_copy=-1}] run tp @r[scores={moveroyale_playing_copy=1}]
