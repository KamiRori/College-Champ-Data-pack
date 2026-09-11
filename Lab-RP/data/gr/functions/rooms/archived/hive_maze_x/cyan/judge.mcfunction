
# 
function gr:rooms/8/cyan/time
# Block St
scoreboard objectives add gr_room_x_hm dummy
scoreboard players set gold gr_room_x_hm 0
scoreboard players set lapis gr_room_x_hm 0
scoreboard players set diamond gr_room_x_hm 0
scoreboard players set emerald gr_room_x_hm 0
scoreboard players set darkpris gr_room_x_hm 0
scoreboard players set pris gr_room_x_hm 0
scoreboard players set redss gr_room_x_hm 0
scoreboard players set ss gr_room_x_hm 0

# Gold
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~25 100 ~12 stone_pressure_plate[powered=true] run scoreboard players set gold gr_room_x_hm 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~18 100 ~28 stone_pressure_plate[powered=true] run scoreboard players set gold gr_room_x_hm 1

# Lapis
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~9 100 ~25 stone_pressure_plate[powered=true] run scoreboard players set lapis gr_room_x_hm 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~25 100 ~18 stone_pressure_plate[powered=true] run scoreboard players set lapis gr_room_x_hm 1

# Diamond
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~16 100 ~10 stone_pressure_plate[powered=true] run scoreboard players set diamond gr_room_x_hm 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~16 100 ~20 stone_pressure_plate[powered=true] run scoreboard players set diamond gr_room_x_hm 1

# Emerald
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~9 100 ~15 stone_pressure_plate[powered=true] run scoreboard players set emerald gr_room_x_hm 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~15 100 ~28 stone_pressure_plate[powered=true] run scoreboard players set emerald gr_room_x_hm 1

# Dark Pris
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~9 100 ~38 stone_pressure_plate[powered=true] run scoreboard players set darkpris gr_room_x_hm 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~9 100 ~48 stone_pressure_plate[powered=true] run scoreboard players set darkpris gr_room_x_hm 1

# Pris
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~15 100 ~35 stone_pressure_plate[powered=true] run scoreboard players set pris gr_room_x_hm 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~16 100 ~53 stone_pressure_plate[powered=true] run scoreboard players set pris gr_room_x_hm 1

# Red SS
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~18 100 ~35 stone_pressure_plate[powered=true] run scoreboard players set redss gr_room_x_hm 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~25 100 ~51 stone_pressure_plate[powered=true] run scoreboard players set redss gr_room_x_hm 1


# SS
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~25 100 ~45 stone_pressure_plate[powered=true] run scoreboard players set ss gr_room_x_hm 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~25 100 ~38 stone_pressure_plate[powered=true] run scoreboard players set ss gr_room_x_hm 1

# BLOCK
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~12 98 ~12 ~13 98 ~13 redstone_block
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if score gold gr_room_x_hm matches 1 if score diamond gr_room_x_hm matches 1 run fill ~12 98 ~12 ~13 98 ~13 air

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~20 98 ~12 ~21 98 ~13 redstone_block
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if score gold gr_room_x_hm matches 1 if score lapis gr_room_x_hm matches 1 run fill ~20 98 ~12 ~21 98 ~13 air

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~20 98 ~17 ~21 98 ~18 redstone_block
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if score gold gr_room_x_hm matches 1 if score diamond gr_room_x_hm matches 1 run fill ~20 98 ~17 ~21 98 ~18 air

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~12 98 ~17 ~13 98 ~18 redstone_block
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if score diamond gr_room_x_hm matches 1 if score lapis gr_room_x_hm matches 1 run fill ~12 98 ~17 ~13 98 ~18 air

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~12 98 ~22 ~13 98 ~23 redstone_block
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if score darkpris gr_room_x_hm matches 1 if score emerald gr_room_x_hm matches 1 run fill ~12 98 ~22 ~13 98 ~23 air

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~20 98 ~22 ~21 98 ~23 redstone_block
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if score pris gr_room_x_hm matches 1 if score lapis gr_room_x_hm matches 1 run fill ~20 98 ~22 ~21 98 ~23 air

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~12 98 ~27 ~13 98 ~28 redstone_block
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if score pris gr_room_x_hm matches 1 if score redss gr_room_x_hm matches 1 run fill ~12 98 ~27 ~13 98 ~28 air

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s run fill ~20 98 ~27 ~21 98 ~28 redstone_block
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if score diamond gr_room_x_hm matches 1 if score emerald gr_room_x_hm matches 1 run fill ~20 98 ~27 ~21 98 ~28 air
# Slow
execute as @a[team=cyan] at @s if block ~ ~ ~ stone_pressure_plate[powered=true] run effect give @s slowness 2 4 true

# Calc End
scoreboard objectives remove gr_room_x_hm

#
scoreboard objectives add gr_cyanobj dummy

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~15 100 ~28 stone_pressure_plate[powered=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~18 100 ~28 stone_pressure_plate[powered=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~12 102 ~30 stone_pressure_plate[powered=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~21 102 ~30 stone_pressure_plate[powered=true] run scoreboard players add 1 gr_cyanobj 1

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~15 100 ~35 stone_pressure_plate[powered=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~18 100 ~35 stone_pressure_plate[powered=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~12 102 ~33 stone_pressure_plate[powered=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~21 102 ~33 stone_pressure_plate[powered=true] run scoreboard players add 1 gr_cyanobj 1

execute if score 1 gr_cyanobj matches 8 run function gr:rooms/8/cyan/complete
scoreboard objectives remove gr_cyanobj