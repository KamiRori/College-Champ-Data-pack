
scoreboard players set RoundActive tourney_stats 0
scoreboard players set ActiveGame tourney_stats 18
schedule clear moveroyale:timer/backtohub_timer
# GAME CORE
scoreboard objectives add moveroyale_game dummy

scoreboard players set gameflag moveroyale_game 0
scoreboard players set round moveroyale_game 0
scoreboard players set round_type moveroyale_game 0
# SCORE TABLE
function moveroyale:score_table/set

# PLAYER SCORE
scoreboard objectives remove moveroyale_indv
scoreboard objectives remove moveroyale_teamscore
scoreboard objectives add moveroyale_indv dummy "Individual Game Score"
scoreboard objectives add moveroyale_teamscore dummy "Team Score"
scoreboard players set @a moveroyale_indv 0

# PERSONAL LOW BOUND
scoreboard objectives add moveroyale_personal_low_bound dummy
scoreboard players set @a moveroyale_personal_low_bound -99999

# TAG REMOVAL
tag @a remove moveroyale_eliminated

# ROUND RANK
scoreboard objectives add moveroyale_roundrank dummy

# PROGRESS RANK, ASSISTS RATE BASED SCORING
scoreboard objectives add moveroyale_progress_rank dummy

# CLEAR PREVIOUS GAME ROUND TYPES
scoreboard objectives remove moveroyale_shuffle
scoreboard objectives add moveroyale_shuffle dummy
scoreboard objectives remove moveroyale_roundtype
scoreboard objectives add moveroyale_roundtype dummy

# CHECKPOINTING
scoreboard objectives add moveroyale_cp_high dummy
scoreboard objectives add moveroyale_cp_low dummy
scoreboard objectives add moveroyale_cleared_cps dummy

# CHECKPOINT HANDLING
scoreboard objectives add moveroyale_cp_coords_x dummy
scoreboard objectives add moveroyale_cp_coords_y dummy
scoreboard objectives add moveroyale_cp_coords_z dummy
scoreboard objectives add moveroyale_cp_coords_angle1 dummy
scoreboard objectives add moveroyale_cp_coords_angle2 dummy

# Finale Round TIme
scoreboard objectives add moveroyale_finale_roundtime dummy

# Finale Round Credits
scoreboard objectives add moveroyale_finale_credits dummy
scoreboard players set @a moveroyale_finale_credits -1

# ARENA USED
scoreboard objectives remove moveroyale_arena_used
scoreboard objectives add moveroyale_arena_used dummy

# PLAYER PARTICIPATE COPY
scoreboard objectives add moveroyale_playing_copy dummy

# GAME CONFIGURATION, INTERACTS WITH PLUGIN.
scoreboard objectives add moveroyale_behavior_config dummy
scoreboard players set canPlace moveroyale_behavior_config 0
scoreboard players set hideNearby moveroyale_behavior_config 0
scoreboard players set clientSideBlocks moveroyale_behavior_config 0
scoreboard players set noPassengerIceBoat moveroyale_behavior_config 1
# TIME FX
time set 12500

# TELEPORT AND CLEAR
clear @a
gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]
effect clear @a

tp @a[team=!spec] 200000 5 200000
tp @a[team=spec] 200000 5 199975 0 15

tag @a remove moveroyale_bracket_low
tag @a remove moveroyale_bracket_high
tag @a remove moveroyale_selected
tag @a remove moveroyale_finalist
# Timer
function moveroyale:scoreboard/pregame
function master:timer/starting/moveroyale
function moveroyale:beginlistener/loop_shuffle
function moveroyale:timer/refresh_sb

# Intro
schedule function moveroyale:intro/0 2s
schedule function moveroyale:intro/1 4s
schedule function moveroyale:intro/2 6s
schedule function moveroyale:intro/3 16s
schedule function moveroyale:intro/4 26s
schedule function moveroyale:intro/5 36s
schedule function moveroyale:intro/6 46s
schedule function moveroyale:intro/7 56s


# value table refresh
function moveroyale:value_table/cp