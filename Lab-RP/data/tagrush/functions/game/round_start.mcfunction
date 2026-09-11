
scoreboard players set RoundActive tourney_stats 1

scoreboard players set gameflag tagrush_game 1
scoreboard players set completed tagrush_game 0
execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 2 2
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1

# Clear tags
tag @a remove tagrush_status_drained
tag @a remove tagrush_status_tagged

# Starts Split 1
function tagrush:game/split/start_1

# Timer
function master:timer/timeleft/1min10

# Starts Necessary Detections

function tagrush:game/round_detection
function tagrush:ranking

#  
title @a title " "
title @a subtitle " "

tellraw @a ["§b[§r鄵§b] 回合",{"score":{"name": "round","objective": "tagrush_game"},"color": "#E3E3E3"},"§b开始！"]


# Alive Tag, update scoreboard
function tagrush:bossbar/inround_init

# Glowing
#effect give @a[team=!spec] glowing infinite 0 true

# Attributes
execute as @a[team=!spec] run attribute @s generic.attack_damage base set 0.1
execute as @a[team=!spec] run attribute @s generic.movement_speed base set 0.1

# Team No
function tagrush:team_no

#
function tagrush:scoreboard/refresh
# Combat Tag
function utils:combattag/init
scoreboard players set tagtime tourney_stats 100