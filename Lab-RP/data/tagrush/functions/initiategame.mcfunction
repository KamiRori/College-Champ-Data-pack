
schedule clear master:timer/nextround/sec

# Clears Previous Scoreboard
scoreboard objectives add tagrush_game dummy

scoreboard objectives remove tagrush_teamscore
scoreboard objectives remove tagrush_wins
scoreboard objectives remove tagrush_indvscore

scoreboard objectives add tagrush_cache dummy

scoreboard objectives add tagrush_wins dummy
scoreboard objectives add tagrush_indvscore dummy
scoreboard objectives add tagrush_teamscore dummy
scoreboard objectives add tagrush_stats dummy "Tag Rush Scorings"

scoreboard objectives remove tagrush_matchinfo
scoreboard objectives add tagrush_matchinfo dummy ""
# Score
function tagrush:value_table/pt

# Split Time
scoreboard players set time_split01 tagrush_game 500
scoreboard players set time_split02 tagrush_game 500
scoreboard players set time_split03 tagrush_game 400

# Roundflag
scoreboard players set round tagrush_game 0
scoreboard players set gameflag tagrush_game 0

# Reset Kills
scoreboard players set @a tagrush_roundkills 0
scoreboard players set @a tagrush_gamekills 0
# teleports to pregame

clear @a
gamemode adventure @a
### LOCATION
# Intro TP
execute if score map tagrush_game matches 0 run function tagrush:intro_tp/map0
execute if score map tagrush_game matches 1 run function tagrush:intro_tp/map1

# Setup the intended map

function tagrush:scoreboard/pregame
function utils:nodropping




# Plays Intro

schedule function tagrush:intro/1 1s
schedule function tagrush:intro/2 3s
schedule function tagrush:intro/3 6s
schedule function tagrush:intro/4 14s
schedule function tagrush:intro/5 22s
schedule function tagrush:intro/6 30s
schedule function tagrush:intro/7 38s

# Begin Listener
function tagrush:beginlistener

# Prevents attacks
execute as @a run attribute @s generic.attack_damage base set -100.0

function tagrush:statusbar/init

tellraw @a[tag=_transcript] ["  §bTranscript >> §f§6Event State: §7GAME_SELECTED§f -> TAG_RUSH_PREGAME"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

#function utils:combattag/init
scoreboard players set tagtime tourney_stats 200


# Match Preinit
function tagrush:matchmaking/init

# debug
gamerule reducedDebugInfo true

# Team Colors
data modify storage tagrush:team_color red set value "red"
data modify storage tagrush:team_color blue set value "blue"
data modify storage tagrush:team_color green set value "green"
data modify storage tagrush:team_color yellow set value "yellow"
data modify storage tagrush:team_color cyan set value "dark_aqua"
data modify storage tagrush:team_color pink set value "light_purple"
data modify storage tagrush:team_color orange set value "gold"
data modify storage tagrush:team_color purple set value "dark_purple"

