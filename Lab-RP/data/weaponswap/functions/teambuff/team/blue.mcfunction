
scoreboard players set $temp ws_teammates_near 0
execute as @a[team=blue,distance=0..12] run scoreboard players add $temp ws_teammates_near 1
scoreboard players operation @s ws_teammates_near = $temp ws_teammates_near

execute if score @s ws_teammates_near_last = @s ws_teammates_near run return 0
execute if score @s ws_teammates_near matches 4 run function weaponswap:teambuff/update_buff/4
execute if score @s ws_teammates_near matches 3 run function weaponswap:teambuff/update_buff/3
execute if score @s ws_teammates_near matches 2 run function weaponswap:teambuff/update_buff/2
execute if score @s ws_teammates_near matches 1 run function weaponswap:teambuff/update_buff/1


# Update
scoreboard players operation @s ws_teammates_near_last = @s ws_teammates_near