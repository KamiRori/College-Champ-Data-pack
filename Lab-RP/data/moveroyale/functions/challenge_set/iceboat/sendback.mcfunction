
# Voided if player is in spec mode or eliminated
execute if entity @s[gamemode=spectator] run return 0
execute if entity @s[tag=moveroyale_eliminated] run return 0


tag @s remove moveroyale_iceboat_ceiling_warn
execute store result storage moveroyale:temp/cpcoords x float 0.1 run scoreboard players get @s moveroyale_cp_coords_x
execute store result storage moveroyale:temp/cpcoords y float 0.1 run scoreboard players get @s moveroyale_cp_coords_y
execute store result storage moveroyale:temp/cpcoords z float 0.1 run scoreboard players get @s moveroyale_cp_coords_z
execute store result storage moveroyale:temp/cpcoords angle1 float 0.1 run scoreboard players get @s moveroyale_cp_coords_angle1
execute store result storage moveroyale:temp/cpcoords angle2 float 0.1 run scoreboard players get @s moveroyale_cp_coords_angle2

execute at @s run particle minecraft:white_smoke ~ ~ ~ 0 0 0 0.1 10 normal @a

tellraw @s ["§c[§r峟§c] 传送至上一个存档点……"]
function moveroyale:challenge_set/iceboat/macro_sendback with storage moveroyale:temp/cpcoords
