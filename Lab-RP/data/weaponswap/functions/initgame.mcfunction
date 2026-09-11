
# Objective setup
scoreboard objectives remove ws_kills
scoreboard objectives remove ws_death
#scoreboard objectives remove ws_game
scoreboard objectives remove ws_stats
scoreboard objectives remove ws_roundkills
scoreboard objectives remove ws_gamekills
scoreboard objectives remove ws_indvscore
scoreboard objectives remove ws_roundscore
scoreboard objectives remove ws_teamscore
scoreboard objectives remove ws_logout
scoreboard objectives remove ws_tntplace
scoreboard objectives remove ws_consecdmg

scoreboard objectives add ws_kills playerKillCount
scoreboard objectives add ws_death deathCount
scoreboard objectives add ws_game dummy
scoreboard objectives add ws_stats dummy
scoreboard objectives add ws_roundkills dummy
scoreboard objectives add ws_gamekills dummy
scoreboard objectives add ws_indvscore dummy
scoreboard objectives add ws_roundscore dummy
scoreboard objectives add ws_teamscore dummy
scoreboard objectives add ws_logout minecraft.custom:leave_game
scoreboard objectives add ws_tntplace minecraft.used:minecraft.tnt
scoreboard objectives add ws_consecdmg dummy
scoreboard objectives add ws_team_placement dummy

scoreboard players set @a ws_gamekills 0
worldborder set 10000000
## Special item
scoreboard objectives remove ws_bellring
scoreboard objectives add ws_bellring minecraft.custom:bell_ring

# Recap
scoreboard objectives add ws_recap_r1 dummy
scoreboard objectives add ws_recap_r2 dummy
scoreboard objectives add ws_recap_r3 dummy

scoreboard players set @a ws_recap_r1 0
scoreboard players set @a ws_recap_r2 0
scoreboard players set @a ws_recap_r3 0

scoreboard objectives add ws_recap_played dummy
scoreboard players set @a ws_recap_played 0

# Failproof
execute unless score map ws_game matches -2147483648..2147483647 run scoreboard players set map ws_game 1
# Setup
## Scorings
scoreboard players set survival ws_stats 2
scoreboard players set survival_with_team ws_stats 1
scoreboard players set kill ws_stats 10
scoreboard players set kill_with_team ws_stats 4
scoreboard players set win ws_stats 20
scoreboard players set ringbell ws_stats 0

# Border Damage Inc Threshold
scoreboard players set border_inc_begin ws_game 30
scoreboard players set border_dmg_max ws_game 5

## Game Core
scoreboard players set gameflag ws_stats 0
## Other
scoreboard players set @a ws_indvscore 0
scoreboard players set @a ws_roundscore 0
scoreboard players set @a ws_roundkills 0

## Team buff
scoreboard objectives add ws_team_alive dummy
scoreboard objectives add ws_teammates_near dummy
scoreboard objectives add ws_teammates_near_last dummy

# Scoreboard
function weaponswap:scoreboard/pregame
scoreboard objectives setdisplay below_name health
# Play Intro
schedule function weaponswap:intro/1 5t
schedule function weaponswap:intro/holdinit 6t
schedule function weaponswap:intro/2 2s
schedule function weaponswap:intro/3 4s
schedule function weaponswap:intro/4 12s
schedule function weaponswap:intro/5 20s
schedule function weaponswap:intro/6 28s
schedule function weaponswap:intro/7 36s
schedule function weaponswap:intro/8 44s
schedule function weaponswap:round/1/init 44s

# Forceload
forceload add 35000 35000

execute if score map ws_game matches 1 run forceload add 35000 35000

# Config
function utils:nodropping

time set day

# Attributes
execute as @a run attribute @s generic.attack_damage base set 0
execute as @a run attribute @s generic.movement_speed base set 0.1

# debug
gamerule reducedDebugInfo true