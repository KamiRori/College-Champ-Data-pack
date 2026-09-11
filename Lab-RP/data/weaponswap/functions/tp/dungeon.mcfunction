
# Teleport Players
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~70 110 ~ {Duration:999999,Tags:["weaponswap","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-70 110 ~ {Duration:999999,Tags:["weaponswap","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~ 110 ~-70 {Duration:999999,Tags:["weaponswap","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~ 110 ~70 {Duration:999999,Tags:["weaponswap","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-46 110 ~-46 {Duration:999999,Tags:["weaponswap","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~46 110 ~46 {Duration:999999,Tags:["weaponswap","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-46 110 ~46 {Duration:999999,Tags:["weaponswap","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~46 110 ~-46 {Duration:999999,Tags:["weaponswap","spawn"]}

scoreboard objectives add ws_temp1 dummy

scoreboard players set @e[type=area_effect_cloud,tag=spawn] ws_temp1 0
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=0},limit=1,sort=random] ws_temp1 1
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=0},limit=1,sort=random] ws_temp1 2
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=0},limit=1,sort=random] ws_temp1 3
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=0},limit=1,sort=random] ws_temp1 4
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=0},limit=1,sort=random] ws_temp1 5
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=0},limit=1,sort=random] ws_temp1 6
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=0},limit=1,sort=random] ws_temp1 7
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=0},limit=1,sort=random] ws_temp1 8

execute as @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=1}] run tp @a[team=red] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=2}] run tp @a[team=blue] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=3}] run tp @a[team=green] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=4}] run tp @a[team=yellow] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=5}] run tp @a[team=cyan] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=6}] run tp @a[team=orange] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=7}] run tp @a[team=pink] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={ws_temp1=8}] run tp @a[team=purple] @s

# Clear out used entities
kill @e[type=item]
kill @e[type=area_effect_cloud,tag=spawn]
scoreboard objectives remove ws_temp1

# Generate Cage
execute as @a[team=red] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 red_stained_glass
execute as @a[team=red] at @s run fill ~2 ~-1 ~2 ~-2 ~3 ~-2 red_stained_glass replace #glass

execute as @a[team=blue] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 blue_stained_glass
execute as @a[team=blue] at @s run fill ~2 ~-1 ~2 ~-2 ~3 ~-2 blue_stained_glass replace #glass

execute as @a[team=green] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 green_stained_glass
execute as @a[team=green] at @s run fill ~2 ~-1 ~2 ~-2 ~3 ~-2 green_stained_glass replace #glass

execute as @a[team=yellow] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 yellow_stained_glass
execute as @a[team=yellow] at @s run fill ~2 ~-1 ~2 ~-2 ~3 ~-2 yellow_stained_glass replace #glass

execute as @a[team=cyan] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 cyan_stained_glass
execute as @a[team=cyan] at @s run fill ~2 ~-1 ~2 ~-2 ~3 ~-2 cyan_stained_glass replace #glass

execute as @a[team=pink] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 pink_stained_glass
execute as @a[team=pink] at @s run fill ~2 ~-1 ~2 ~-2 ~3 ~-2 pink_stained_glass replace #glass

execute as @a[team=orange] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 orange_stained_glass
execute as @a[team=orange] at @s run fill ~2 ~-1 ~2 ~-2 ~3 ~-2 orange_stained_glass replace #glass

execute as @a[team=purple] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 purple_stained_glass
execute as @a[team=purple] at @s run fill ~2 ~-1 ~2 ~-2 ~3 ~-2 purple_stained_glass replace #glass


# Change Gamemode
gamemode adventure @a[team=!spec]
execute as @a[team=!spec] at @s run spawnpoint