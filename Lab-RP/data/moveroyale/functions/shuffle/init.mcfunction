
schedule clear master:timer/starting/sec

data remove storage moveroyale:core type_name
data modify storage moveroyale:core type_name append value "N/A"
data modify storage moveroyale:core type_name append value "Parkour"
data modify storage moveroyale:core type_name append value "Ice Boat"
data modify storage moveroyale:core type_name append value "Trident"
data modify storage moveroyale:core type_name append value "Obstacles"
data modify storage moveroyale:core type_name append value "Sprint"



scoreboard players set step moveroyale_shuffle 1

scoreboard players set parkour moveroyale_shuffle 0
scoreboard players set iceboat moveroyale_shuffle 0
scoreboard players set trident moveroyale_shuffle 0
scoreboard players set obstacles moveroyale_shuffle 0
scoreboard players set sprint moveroyale_shuffle 0

# Begin randomly select the round types
function moveroyale:shuffle/step

# Setup base bossbar
bossbar add moveroyale_round_type ""
bossbar set moveroyale_round_type players @a
bossbar set moveroyale_round_type color pink

# FX
title @a times 5 40 10
title @a title ""
title @a subtitle "§b正在乱序游戏模式……"

# Also inits scoreboard and time refreshing
function moveroyale:scoreboard/ingame
# Announce the result in 4s.
schedule function moveroyale:shuffle/announce 4s
