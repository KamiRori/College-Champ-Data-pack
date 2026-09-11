



# Remove Barrier
execute if score arena moveroyale_game matches 1 run fill 207987 109 206977 207987 100 207022 air replace red_stained_glass
execute if score arena moveroyale_game matches 1 run fill 206987 109 206977 206987 100 207022 air replace red_stained_glass

execute if score arena moveroyale_game matches 2 run fill 207998 109 207991 207998 98 208009 air replace red_stained_glass
execute if score arena moveroyale_game matches 2 run fill 208998 109 207991 208998 98 208009 air replace red_stained_glass

execute if score arena moveroyale_game matches 3 run fill 208997 107 209011 208997 100 208989 air replace red_stained_glass
execute if score arena moveroyale_game matches 3 run fill 209997 107 209011 209997 100 208989 air replace red_stained_glass

execute if score arena moveroyale_game matches 4 run fill 209994 109 210011 209994 100 209989 air replace red_stained_glass
execute if score arena moveroyale_game matches 4 run fill 210994 109 210011 210994 100 209989 air replace red_stained_glass
# Player Tag
tag @a[tag=moveroyale_bracket_high] add moveroyale_inround
tag @a[tag=moveroyale_bracket_low] add moveroyale_inround
# Config (Interacts with plugin)
scoreboard players set canPlace moveroyale_behavior_config 0
scoreboard players set hideNearby moveroyale_behavior_config 1
scoreboard players set clientSideBlocks moveroyale_behavior_config 0
# Begin detection
function moveroyale:challenge_set/trident/detect