



# Remove Barrier
execute if score arena moveroyale_game matches 1 run fill 204000 66 203610 204000 51 203759 air replace barrier
execute if score arena moveroyale_game matches 2 run fill 204000 66 203763 204000 51 203912 air replace barrier
execute if score arena moveroyale_game matches 3 run fill 204000 66 204065 204000 51 203916 air replace barrier
# Player Tag
tag @a[tag=moveroyale_bracket_high] add moveroyale_inround
tag @a[tag=moveroyale_bracket_low] add moveroyale_inround
# Config (Interacts with plugin)
scoreboard players set canPlace moveroyale_behavior_config 1
scoreboard players set hideNearby moveroyale_behavior_config 1
scoreboard players set clientSideBlocks moveroyale_behavior_config 1
# Begin detection
function moveroyale:challenge_set/obstacles/detect