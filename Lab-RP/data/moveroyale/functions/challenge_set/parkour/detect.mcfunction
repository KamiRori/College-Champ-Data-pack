

# Checkpointing
scoreboard objectives add moveroyale_this_z dummy
scoreboard objectives add moveroyale_this_y dummy
execute as @a[tag=moveroyale_inround] run execute store result score @s moveroyale_this_z run data get entity @s Pos[2] 10
execute as @a[tag=moveroyale_inround] if entity @s[nbt={OnGround:0b}] run scoreboard players set @s moveroyale_this_z -1

execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=2},tag=moveroyale_bracket_low] if score @s moveroyale_this_z >= parkour_s3_z moveroyale_cptable run function moveroyale:challenge_set/parkour/checkpoint_low
execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=1},tag=moveroyale_bracket_low] if score @s moveroyale_this_z >= parkour_s2_z moveroyale_cptable run function moveroyale:challenge_set/parkour/checkpoint_low
execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=0},tag=moveroyale_bracket_low] if score @s moveroyale_this_z >= parkour_s1_z moveroyale_cptable run function moveroyale:challenge_set/parkour/checkpoint_low

execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=2},tag=moveroyale_bracket_high] if score @s moveroyale_this_z >= parkour_s3_z moveroyale_cptable run function moveroyale:challenge_set/parkour/checkpoint_high
execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=1},tag=moveroyale_bracket_high] if score @s moveroyale_this_z >= parkour_s2_z moveroyale_cptable run function moveroyale:challenge_set/parkour/checkpoint_high
execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=0},tag=moveroyale_bracket_high] if score @s moveroyale_this_z >= parkour_s1_z moveroyale_cptable run function moveroyale:challenge_set/parkour/checkpoint_high

# Height sendback.
execute as @a[tag=moveroyale_inround] run execute store result score @s moveroyale_this_y run data get entity @s Pos[1] 10

execute as @a[tag=moveroyale_inround] if score @s moveroyale_this_y >= parkour_height_limit moveroyale_cptable run function moveroyale:challenge_set/parkour/sendback
execute as @a[tag=moveroyale_inround] if score @s moveroyale_this_y <= parkour_low_limit moveroyale_cptable run function moveroyale:challenge_set/parkour/sendback

execute if score gameflag moveroyale_game matches 1 run schedule function moveroyale:challenge_set/parkour/detect 1t

