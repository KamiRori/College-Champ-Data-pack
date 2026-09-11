

# Checkpointing
scoreboard objectives add moveroyale_this_x dummy
scoreboard objectives add moveroyale_this_y dummy

execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=2},tag=moveroyale_bracket_low] at @s if block ~ -64 ~ coal_block run function moveroyale:challenge_set/iceboat/checkpoint_low
execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=1},tag=moveroyale_bracket_low] at @s if block ~ -64 ~ diamond_block run function moveroyale:challenge_set/iceboat/checkpoint_low
execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=0},tag=moveroyale_bracket_low] at @s if block ~ -64 ~ gold_block run function moveroyale:challenge_set/iceboat/checkpoint_low

execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=2},tag=moveroyale_bracket_high] at @s if block ~ -64 ~ coal_block run function moveroyale:challenge_set/iceboat/checkpoint_high
execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=1},tag=moveroyale_bracket_high] at @s if block ~ -64 ~ diamond_block run function moveroyale:challenge_set/iceboat/checkpoint_high
execute as @a[tag=moveroyale_inround,scores={moveroyale_cleared_cps=0},tag=moveroyale_bracket_high] at @s if block ~ -64 ~ gold_block run function moveroyale:challenge_set/iceboat/checkpoint_high


# Height sendback.
execute as @a[tag=moveroyale_inround] run execute store result score @s moveroyale_this_y run data get entity @s Pos[1] 10

execute as @a[tag=moveroyale_inround] if score @s moveroyale_this_y <= iceboat_low_limit moveroyale_cptable run function moveroyale:challenge_set/iceboat/sendback

execute if score gameflag moveroyale_game matches 1 run schedule function moveroyale:challenge_set/iceboat/detect 1t

