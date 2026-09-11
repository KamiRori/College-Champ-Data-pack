



# Player Tag
tag @a[tag=moveroyale_bracket_high] add moveroyale_inround
tag @a[tag=moveroyale_bracket_low] add moveroyale_inround
# Config (Interacts with plugin)
scoreboard players set canPlace moveroyale_behavior_config 0
scoreboard players set hideNearby moveroyale_behavior_config 1
scoreboard players set clientSideBlocks moveroyale_behavior_config 0
# Begin detection
function moveroyale:challenge_set/parkour/detect