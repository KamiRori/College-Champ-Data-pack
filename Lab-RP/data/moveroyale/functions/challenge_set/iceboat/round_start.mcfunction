



# Remove Barrier
execute if score arena moveroyale_game matches 1 run execute positioned 219983 100 220010 run function moveroyale:challenge_set/iceboat/ib_remove_barrier
execute if score arena moveroyale_game matches 2 run execute positioned 229984 100 220000 run function moveroyale:challenge_set/iceboat/ib_remove_barrier
execute if score arena moveroyale_game matches 3 run execute positioned 239990 100 220001 run function moveroyale:challenge_set/iceboat/ib_remove_barrier

# Player Tag
tag @a[tag=moveroyale_bracket_high] add moveroyale_inround
tag @a[tag=moveroyale_bracket_low] add moveroyale_inround
# Config (Interacts with plugin)
scoreboard players set canPlace moveroyale_behavior_config 0
scoreboard players set hideNearby moveroyale_behavior_config 0
scoreboard players set clientSideBlocks moveroyale_behavior_config 0
# Begin detection
function moveroyale:challenge_set/iceboat/detect

give @a[team=!spec] oak_boat