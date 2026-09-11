

execute store result storage moveroyale:temp/cpp x float 0.1 run scoreboard players get @s moveroyale_cp_coords_x
execute store result storage moveroyale:temp/cpp y float 0.1 run scoreboard players get @s moveroyale_cp_coords_y
execute store result storage moveroyale:temp/cpp z float 0.1 run scoreboard players get @s moveroyale_cp_coords_z
execute store result storage moveroyale:temp/cpp angle1 float 0.1 run scoreboard players get @s moveroyale_cp_coords_angle1
execute store result storage moveroyale:temp/cpp angle2 float 0.1 run scoreboard players get @s moveroyale_cp_coords_angle2

function moveroyale:player_action/macro/checkpoint_tp with storage moveroyale:temp/cpp
