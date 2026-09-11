
xp set @a 0 levels

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.yellow
scoreboard objectives setdisplay sidebar.team.dark_aqua
scoreboard objectives setdisplay sidebar.team.gold
scoreboard objectives setdisplay sidebar.team.dark_purple
scoreboard objectives setdisplay sidebar.team.light_purple

team add spec "Spectators"

execute as @a[team=!spec] run attribute @s minecraft:generic.attack_damage base set -100

effect clear @a
clear @a
gamerule fallDamage false
gamerule naturalRegeneration true
gamerule doTileDrops false
gamerule doImmediateRespawn true
difficulty peaceful
gamerule keepInventory true
gamerule mobGriefing false
time set day
function master:clear_enderchest
execute as @a run attribute @s minecraft:generic.armor base set 0
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 0
execute as @a run attribute @s generic.movement_speed base set 0.1


function moveroyale:init

scoreboard players reset §6 ar_sb

team modify blue collisionRule never
team modify green collisionRule never
team modify red collisionRule never
team modify yellow collisionRule never
team modify cyan collisionRule never
team modify orange collisionRule never
team modify purple collisionRule never
team modify pink collisionRule never

team modify blue friendlyFire false
team modify green friendlyFire false
team modify red friendlyFire false
team modify yellow friendlyFire false
team modify cyan friendlyFire false
team modify orange friendlyFire false
team modify purple friendlyFire false
team modify pink friendlyFire false

team modify red deathMessageVisibility always
team modify green deathMessageVisibility always
team modify blue deathMessageVisibility always
team modify yellow deathMessageVisibility always
team modify cyan deathMessageVisibility always
team modify orange deathMessageVisibility always
team modify purple deathMessageVisibility always
team modify pink deathMessageVisibility always

function master:latejoinspec

scoreboard players set @a mvprank 0

scoreboard players set 18 dd_games 1
scoreboard players set ActiveGame tourney_stats 18
scoreboard players set lobby tourney_stats 0
schedule clear master:timer/decisiondome/sec
schedule clear decisiondome:player

schedule clear master:timer/fatesplate/sec
schedule clear fatesplate:player

tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7GAME_SELECTED§f -> PREGAME"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

# Team Glowing Function
scoreboard objectives add glowing_to_team dummy
scoreboard objectives add TPM dummy
scoreboard players set CancelSelfInvis TPM 1
scoreboard players set Glow TPM 1
scoreboard players set plugin_glow_control tourney_stats 1
scoreboard players set team_glow tourney_stats 1
# warning threshold
scoreboard players set warn master.timer 20
scoreboard players set highwarn master.timer 10
# Friendlyfire Mechanic
scoreboard players set friendly_fire_mod tourney_stats 1
# UI Clicking allow?
scoreboard players set disallow_ui tourney_stats 1

# Overtime
scoreboard players set OvertimeActive OvertimeMusic 0