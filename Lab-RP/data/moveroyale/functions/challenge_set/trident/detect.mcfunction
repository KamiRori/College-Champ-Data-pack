

# Checkpointing, for the finish checkpoint, hitting the ground is necessary.
scoreboard objectives add moveroyale_shouldCheck dummy
scoreboard objectives add moveroyale_this_y dummy
scoreboard players set @a[tag=moveroyale_inround] moveroyale_shouldCheck 1
execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=2}] if entity @s[nbt={OnGround:0b}] run scoreboard players set @s moveroyale_shouldCheck 0


execute if score arena moveroyale_game matches 1 run execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=0..2,moveroyale_shouldCheck=1}] at @s run function moveroyale:challenge_set/trident/cpcheck/1
execute if score arena moveroyale_game matches 2 run execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=0..2,moveroyale_shouldCheck=1}] at @s run function moveroyale:challenge_set/trident/cpcheck/2
execute if score arena moveroyale_game matches 3 run execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=0..2,moveroyale_shouldCheck=1}] at @s run function moveroyale:challenge_set/trident/cpcheck/3
execute if score arena moveroyale_game matches 4 run execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=0..2,moveroyale_shouldCheck=1}] at @s run function moveroyale:challenge_set/trident/cpcheck/4
execute if score arena moveroyale_game matches 5 run execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=0..2,moveroyale_shouldCheck=1}] at @s run function moveroyale:challenge_set/trident/cpcheck/5



# Height sendback.
execute as @a[tag=moveroyale_inround] run execute store result score @s moveroyale_this_y run data get entity @s Pos[1] 10
# Personal Low Bound
execute as @a[tag=moveroyale_inround] run scoreboard players operation @s moveroyale_personal_low_bound = @s moveroyale_cp_coords_y
execute as @a[tag=moveroyale_inround] run scoreboard players remove @s moveroyale_personal_low_bound 400
execute as @a[tag=moveroyale_inround] run scoreboard players operation @s moveroyale_personal_low_bound > trident_low_limit moveroyale_cptable


execute as @a[tag=moveroyale_inround] if score @s moveroyale_this_y <= @s moveroyale_personal_low_bound run function moveroyale:challenge_set/trident/sendback
execute as @a[tag=moveroyale_inround] at @s if block ~ ~ ~ lava run function moveroyale:challenge_set/trident/sendback

execute if score gameflag moveroyale_game matches 1 run schedule function moveroyale:challenge_set/trident/detect 1t

