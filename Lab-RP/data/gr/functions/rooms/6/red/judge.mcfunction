 
# 
function gr:rooms/6/red/time
# RED
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~14 103 ~8 stone_pressure_plate[powered=false] run fill ~13 103 ~14 ~13 101 ~16 red_concrete
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~14 103 ~8 stone_pressure_plate[powered=false] run fill ~23 103 ~11 ~21 101 ~11 red_concrete
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~14 103 ~8 stone_pressure_plate[powered=false] run fill ~5 103 ~22 ~3 101 ~22 red_concrete

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~14 103 ~8 stone_pressure_plate[powered=false] run fill ~11 100 ~5 ~9 100 ~7 red_terracotta
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~14 103 ~8 stone_pressure_plate[powered=false] run fill ~23 100 ~24 ~21 100 ~26 red_terracotta

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~14 103 ~8 stone_pressure_plate[powered=true] run fill ~13 103 ~14 ~13 101 ~16 air
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~14 103 ~8 stone_pressure_plate[powered=true] run fill ~23 103 ~11 ~21 101 ~11 air
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~14 103 ~8 stone_pressure_plate[powered=true] run fill ~5 103 ~22 ~3 101 ~22 air

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~14 103 ~8 stone_pressure_plate[powered=true] run fill ~11 100 ~5 ~9 100 ~7 air
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~14 103 ~8 stone_pressure_plate[powered=true] run fill ~23 100 ~24 ~21 100 ~26 air


# YELLOW
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~27 103 ~25 stone_pressure_plate[powered=false] run fill ~15 101 ~18 ~17 103 ~18 yellow_concrete
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~27 103 ~25 stone_pressure_plate[powered=false] run fill ~3 101 ~23 ~5 103 ~23 yellow_concrete

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~27 103 ~25 stone_pressure_plate[powered=false] run fill ~19 100 ~5 ~17 100 ~3 yellow_terracotta

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~27 103 ~25 stone_pressure_plate[powered=true] run fill ~15 101 ~18 ~17 103 ~18 air
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~27 103 ~25 stone_pressure_plate[powered=true] run fill ~3 101 ~23 ~5 103 ~23 air

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~27 103 ~25 stone_pressure_plate[powered=true] run fill ~19 100 ~5 ~17 100 ~3 air

# GREEN
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~11 103 ~20 stone_pressure_plate[powered=false] run fill ~13 101 ~ ~13 103 ~2 green_concrete
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~11 103 ~20 stone_pressure_plate[powered=false] run fill ~10 101 ~27 ~10 103 ~29 green_concrete

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~11 103 ~20 stone_pressure_plate[powered=false] run fill ~5 100 ~20 ~3 100 ~18 green_terracotta
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~11 103 ~20 stone_pressure_plate[powered=false] run fill ~14 100 ~29 ~16 100 ~27 green_terracotta

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~11 103 ~20 stone_pressure_plate[powered=true] run fill ~13 101 ~ ~13 103 ~2 air
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~11 103 ~20 stone_pressure_plate[powered=true] run fill ~10 101 ~27 ~10 103 ~29 air

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~11 103 ~20 stone_pressure_plate[powered=true] run fill ~5 100 ~20 ~3 100 ~18 air
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~11 103 ~20 stone_pressure_plate[powered=true] run fill ~14 100 ~29 ~16 100 ~27 air

# CHECKPOINT AND CREEPER REFRESH
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~27 101 ~16 oak_button[powered=true] run kill @e[type=creeper,tag=gr_room,tag=red]
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~27 101 ~16 oak_button[powered=true] run summon creeper ~27 102 ~18 {Tags:["gr_room","red"]}
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~27 101 ~16 oak_button[powered=true] run setblock ~27 101 ~16 oak_button[face=wall,facing=north]

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s positioned ~18 101 ~19 if entity @e[type=creeper,tag=gr_room,tag=red,dx=2,dy=2,dz=2] unless block ~1 101 ~ oak_button run setblock ~1 101 ~ oak_button[face=wall,facing=south]

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~19 101 ~19 oak_button[powered=true] run kill @e[type=creeper,tag=gr_room,tag=red]
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~19 101 ~19 oak_button[powered=true] run summon creeper ~19 102 ~17 {Tags:["gr_room","red"]}
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~19 101 ~19 oak_button[powered=true] run setblock ~19 101 ~19 oak_button[face=wall,facing=south]

scoreboard objectives add gr_redobj dummy

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s positioned ~2 101 ~14 if entity @e[type=creeper,tag=gr_room,tag=red,dx=3,dy=2,dz=2] run scoreboard players add 1 gr_redobj 1

execute if score 1 gr_redobj matches 1 run function gr:rooms/6/red/complete
scoreboard objectives remove gr_redobj