
# Teleport Players
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~50 23 ~82 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~82 23 ~50 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~82 23 ~-50 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~50 23 ~-82 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-50 23 ~-82 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-82 23 ~-50 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-82 23 ~50 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-50 23 ~82 {Duration:999999,Tags:["skybattle","spawn"]}

scoreboard objectives add sba_temp1 dummy

scoreboard players set @e[type=area_effect_cloud,tag=spawn] sba_temp1 0
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 1
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 2
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 3
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 4
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 5
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 6
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 7
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 8

execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=1}] run tp @a[team=red] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=2}] run tp @a[team=blue] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=3}] run tp @a[team=green] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=4}] run tp @a[team=yellow] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=5}] run tp @a[team=cyan] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=6}] run tp @a[team=orange] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=7}] run tp @a[team=pink] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=8}] run tp @a[team=purple] @s

# Clear out used entities
kill @e[type=item]
kill @e[type=area_effect_cloud,tag=spawn]
scoreboard objectives remove sba_temp1

# Change Gamemode
gamemode adventure @a[team=!spec]
execute as @a[team=!spec] at @s run spawnpoint