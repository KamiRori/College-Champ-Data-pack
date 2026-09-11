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
xp set @a 0 levels

team add spec "Spectators"

effect clear @a
clear @a
gamerule fallDamage false
gamerule naturalRegeneration true
gamerule doTileDrops false
gamerule doImmediateRespawn false
gamerule mobGriefing false
difficulty peaceful
function master:clear_enderchest
gamerule keepInventory true
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 0
execute as @a run attribute @s generic.movement_speed base set 0.1
execute as @a run attribute @s minecraft:generic.armor base set 0
time set day

function tagrush:initiategame

team modify placeholder_6 suffix " "

team modify red deathMessageVisibility never
team modify green deathMessageVisibility never
team modify blue deathMessageVisibility never
team modify yellow deathMessageVisibility never
team modify cyan deathMessageVisibility never
team modify orange deathMessageVisibility never
team modify purple deathMessageVisibility never
team modify pink deathMessageVisibility never

team modify blue collisionRule never
team modify green collisionRule never
team modify red collisionRule never
team modify yellow collisionRule never
team modify cyan collisionRule never
team modify orange collisionRule never
team modify purple collisionRule never
team modify pink collisionRule never

team modify blue friendlyFire true
team modify green friendlyFire true
team modify red friendlyFire true
team modify yellow friendlyFire true
team modify cyan friendlyFire true
team modify orange friendlyFire true
team modify purple friendlyFire true
team modify pink friendlyFire true

function master:latejoinspec

scoreboard players set @a mvprank 0

scoreboard players set 19 dd_games 1
scoreboard players set ActiveGame tourney_stats 19
scoreboard players set lobby tourney_stats 0
schedule clear master:timer/decisiondome/sec
schedule clear decisiondome:player

schedule clear master:timer/fatesplate/sec
schedule clear fatesplate:player

tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7GAME_SELECTED§f -> PREGAME"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
# Team Glowing Function
scoreboard objectives remove glowing_to_team
scoreboard objectives add TPM dummy
scoreboard players set CancelSelfInvis TPM 1
scoreboard players set Glow TPM 1

# warning threshold
scoreboard players set warn master.timer 15
scoreboard players set highwarn master.timer 10
scoreboard players set friendly_fire_mod tourney_stats 0
# UI Clicking allow?
scoreboard players set disallow_ui tourney_stats 0

# Overtime
scoreboard players set OvertimeActive OvertimeMusic 0