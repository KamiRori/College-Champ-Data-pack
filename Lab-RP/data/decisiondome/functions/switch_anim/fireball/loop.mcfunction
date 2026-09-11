

scoreboard players add anim_time anim_1 1

execute as @e[type=marker,tag=anim_1] at @s run tp @s ~-0.08 ~-0.32 ~0.08
execute as @e[type=marker,tag=anim_1] at @s run tp @e[type=block_display,tag=anim_1] @s
execute as @e[type=marker,tag=anim_1] at @s run particle flame ~ ~ ~ 1 1 1 0.5 20 force @a
execute as @e[type=marker,tag=anim_1] at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace light_gray_stained_glass

execute store result storage animations:1 rand1 float 0.0005 run random value -600..600
execute store result storage animations:1 rand2 float 0.0005 run random value -600..600
execute store result storage animations:1 rand3 float 0.0005 run random value -600..600
execute store result storage animations:1 rand4 float 0.0005 run random value -600..600
execute store result storage animations:1 rand5 float 0.0005 run random value -600..600
execute store result storage animations:1 rand6 float 0.0005 run random value -600..600

execute as @e[type=block_display,tag=anim_1] run data modify entity @s transformation.right_rotation[0] set from storage animations:1 rand1
execute as @e[type=block_display,tag=anim_1] run data modify entity @s transformation.right_rotation[1] set from storage animations:1 rand2
execute as @e[type=block_display,tag=anim_1] run data modify entity @s transformation.right_rotation[2] set from storage animations:1 rand3

execute as @e[type=block_display,tag=anim_1] run data modify entity @s transformation.left_rotation[0] set from storage animations:1 rand4
execute as @e[type=block_display,tag=anim_1] run data modify entity @s transformation.left_rotation[1] set from storage animations:1 rand5
execute as @e[type=block_display,tag=anim_1] run data modify entity @s transformation.left_rotation[2] set from storage animations:1 rand6

execute if score anim_time anim_1 < max_anim_time anim_1 run schedule function decisiondome:switch_anim/fireball/loop 1t