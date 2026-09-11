

# Checkpointing
scoreboard objectives add moveroyale_this_x dummy
scoreboard objectives add moveroyale_this_y dummy
execute as @a[tag=moveroyale_inround] run execute store result score @s moveroyale_this_x run data get entity @s Pos[0] 10
execute as @a[tag=moveroyale_inround] if entity @s[nbt={OnGround:0b}] run scoreboard players set @s moveroyale_this_x -1

execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=2},tag=moveroyale_bracket_low] if score @s moveroyale_this_x >= obstacles_s3_x moveroyale_cptable run function moveroyale:challenge_set/obstacles/checkpoint_low
execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=1},tag=moveroyale_bracket_low] if score @s moveroyale_this_x >= obstacles_s2_x moveroyale_cptable run function moveroyale:challenge_set/obstacles/checkpoint_low
execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=0},tag=moveroyale_bracket_low] if score @s moveroyale_this_x >= obstacles_s1_x moveroyale_cptable run function moveroyale:challenge_set/obstacles/checkpoint_low

execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=2},tag=moveroyale_bracket_high] if score @s moveroyale_this_x >= obstacles_s3_x moveroyale_cptable run function moveroyale:challenge_set/obstacles/checkpoint_high
execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=1},tag=moveroyale_bracket_high] if score @s moveroyale_this_x >= obstacles_s2_x moveroyale_cptable run function moveroyale:challenge_set/obstacles/checkpoint_high
execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=0},tag=moveroyale_bracket_high] if score @s moveroyale_this_x >= obstacles_s1_x moveroyale_cptable run function moveroyale:challenge_set/obstacles/checkpoint_high

# Height Warning.
execute as @a[tag=moveroyale_inround,tag=!moveroyale_obstacles_ceiling_warn] run execute store result score @s moveroyale_this_y run data get entity @s Pos[1] 10
execute as @a[tag=moveroyale_inround,tag=!moveroyale_obstacles_ceiling_warn] run scoreboard players add @s moveroyale_this_y 10
execute as @a[tag=moveroyale_inround,tag=!moveroyale_obstacles_ceiling_warn] if score @s moveroyale_this_y >= obstacles_height_limit moveroyale_cptable run function moveroyale:challenge_set/obstacles/ceiling_warn

# Height sendback.
execute as @a[tag=moveroyale_inround] run execute store result score @s moveroyale_this_y run data get entity @s Pos[1] 10

execute as @a[tag=moveroyale_inround] if score @s moveroyale_this_y >= obstacles_height_limit moveroyale_cptable run function moveroyale:challenge_set/obstacles/sendback
execute as @a[tag=moveroyale_inround] if score @s moveroyale_this_y <= obstacles_low_limit moveroyale_cptable run function moveroyale:challenge_set/obstacles/sendback

execute if score gameflag moveroyale_game matches 1 run schedule function moveroyale:challenge_set/obstacles/detect 1t

