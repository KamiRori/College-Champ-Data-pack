

# Pre Round sendback
tag @a[tag=moveroyale_bracket_high] add moveroyale_tocheck
tag @a[tag=moveroyale_bracket_low] add moveroyale_tocheck

scoreboard objectives add moveroyale_this_z dummy
scoreboard objectives add moveroyale_this_y dummy

# Height sendback.
execute as @a[tag=moveroyale_tocheck] run execute store result score @s moveroyale_this_y run data get entity @s Pos[1] 10
execute as @a[tag=moveroyale_tocheck] run execute store result score @s moveroyale_this_z run data get entity @s Pos[2] 10

execute as @a[tag=moveroyale_tocheck] if score @s moveroyale_this_y >= parkour_height_limit moveroyale_cptable run function moveroyale:challenge_set/parkour/sendback
execute as @a[tag=moveroyale_tocheck] if score @s moveroyale_this_y <= parkour_low_limit moveroyale_cptable run function moveroyale:challenge_set/parkour/sendback
execute as @a[tag=moveroyale_tocheck] if score @s moveroyale_this_z >= parkour_s0_z moveroyale_cptable run function moveroyale:challenge_set/parkour/sendback

tag @a remove moveroyale_tocheck

execute if score gameflag moveroyale_game matches 0 run schedule function moveroyale:challenge_set/parkour/preround_detect 1t

