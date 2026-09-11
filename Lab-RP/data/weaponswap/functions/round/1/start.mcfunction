
scoreboard players set RoundActive tourney_stats 1

# Round Flag
scoreboard players set pregame ws_game 0
scoreboard players set bellbonus ws_game 0
scoreboard players set @a ws_logout 0
scoreboard players set endtime ws_game 0
scoreboard players set overtime_notice_played ws_game 0
difficulty easy
gamerule naturalRegeneration false
gamerule keepInventory true
# Title
title @a title ""
title @a subtitle ""
# Removes barrier
execute if score map ws_game matches 1 run function weaponswap:removebarrier/dungeon


# Player Status
tag @a remove ws_eliminated
tag @a remove ws_weapon
# Initiates swap
function weaponswap:swap_logic/init

# SFX
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~
execute as @a at @s run playsound minecraft:music.weaponswap voice @s ~ ~ ~
# Time
execute if score map ws_game matches 1 run function master:timer/timeleft/6min

# Enables core check
#function weaponswap:bellprotect
function weaponswap:gt
function weaponswap:teamglint

function weaponswap:round/roundtime
# Combat Tag
scoreboard players set tagtime tourney_stats 200
function utils:combattag/init
# Scoreboard
function weaponswap:scoreboard/start

# Glowing
#effect give @a[team=!spec] glowing infinite 0 true

# Firework effects
function utils:firework_death_init


# Tag
team modify red nametagVisibility hideForOtherTeams
team modify blue nametagVisibility hideForOtherTeams
team modify green nametagVisibility hideForOtherTeams
team modify yellow nametagVisibility hideForOtherTeams
team modify cyan nametagVisibility hideForOtherTeams
team modify pink nametagVisibility hideForOtherTeams
team modify orange nametagVisibility hideForOtherTeams
team modify purple nametagVisibility hideForOtherTeams