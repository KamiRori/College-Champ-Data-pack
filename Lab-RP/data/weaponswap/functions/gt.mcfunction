
# This function runs every ingame gametick to keep the game running

# Weapon swap main
scoreboard players remove swap_cd ws_swap_main 1
execute if score swap_cd ws_swap_main matches 120 run function weaponswap:swap_logic/swap_title/6
execute if score swap_cd ws_swap_main matches 100 run function weaponswap:swap_logic/swap_title/5
execute if score swap_cd ws_swap_main matches 80 run function weaponswap:swap_logic/swap_title/4
execute if score swap_cd ws_swap_main matches 60 run function weaponswap:swap_logic/swap_title/3
execute if score swap_cd ws_swap_main matches 40 run function weaponswap:swap_logic/swap_title/2
execute if score swap_cd ws_swap_main matches 20 run function weaponswap:swap_logic/swap_title/1
execute if score swap_cd ws_swap_main matches 0 run function weaponswap:swap_logic/swap_type_select

# Team buff
function weaponswap:teambuff/main

# Void Function
## Kill whoever is in the void
scoreboard objectives add ws_ytemp dummy
scoreboard players set @a ws_ytemp 2147483647
execute as @a[team=!spec,gamemode=survival] store result score @s ws_ytemp run data get entity @s Pos[1] 10
tag @a[team=!spec,scores={ws_ytemp=..0},gamemode=survival] add void
kill @a[team=!spec,scores={ws_ytemp=..0},gamemode=survival]

## Prevent spectators from voiding themself for fun
execute as @a[gamemode=spectator,scores={health=1..}] store result score @s ws_ytemp run data get entity @s Pos[1] 10
execute as @e[type=area_effect_cloud,tag=bordercenter,limit=1] at @s run tp @a[gamemode=spectator,scores={ws_ytemp=..0,health=1..}] @s
execute as @a[gamemode=spectator,scores={ws_ytemp=..0,health=1..}] at @s run tp @s ~ 35 ~
## Cleanup
scoreboard objectives remove ws_ytemp

# Tag alive players who logged out, marked as death.
tag @a[team=!spec,gamemode=!spectator,scores={ws_logout=1..}] add logout
kill @a[tag=logout]

# Kill all players who are outside of the game by too far.
execute as @e[type=area_effect_cloud,tag=bordercenter,limit=1] at @s run tp @a[team=] @s
execute as @e[type=area_effect_cloud,tag=bordercenter,limit=1] at @s run tag @a[team=!spec,gamemode=!spectator,distance=0..300] add inarena
tellraw @a[gamemode=!spectator,team=!spec,tag=!inarena,team=!] ["",{"text": "You are outside of the arena by too far! weird!","color": "red"}]
kill @a[gamemode=!spectator,team=!spec,tag=!inarena,team=!]
tag @a remove inarena

# Border Damage Related
scoreboard players add bordertick ws_game 1
execute if score bordertick ws_game matches 20.. run function weaponswap:border/damageinit
execute if score bordertick ws_game matches 20.. run scoreboard players set bordertick ws_game 0

# Overtime Notif 
execute if score overtime_notif_1 ws_game matches 0 if score minute master.timer matches 0 if score second master.timer <= border_inc_begin ws_game run function weaponswap:overtime/notif_1

# Recap
execute as @r[scores={ws_recap_r3=1..,ws_recap_played=0},team=!spec] run function weaponswap:player_action/play_recap


# Kill and Death item
function weaponswap:kill/1

# Update scoreboard, also fetch the player count & team count
function weaponswap:scoreboard/update
# Game End decide
execute if score minute master.timer matches 0 if score second master.timer matches 0 if score overtime_notice_played ws_game matches 0 run tellraw @a ["§c[§r鼱§c] ","§c游戏在仅剩最后","§f1","§c个队伍时才会结束！"]
execute if score minute master.timer matches 0 if score second master.timer matches 0 if score overtime_notice_played ws_game matches 0 run scoreboard players set overtime_notice_played ws_game 1
# execute if score minute master.timer matches 0 if score second master.timer matches 0 if score round ws_game matches 1 run function weaponswap:round/1/timeout
# execute if score minute master.timer matches 0 if score second master.timer matches 0 if score round ws_game matches 2 run function weaponswap:round/2/timeout
# execute if score minute master.timer matches 0 if score second master.timer matches 0 if score round ws_game matches 3 run function weaponswap:round/3/timeout

execute if score teams ws_game matches 1 if score round ws_game matches 1 unless score devMode ws_game matches 1 run function weaponswap:round/1/end
execute if score teams ws_game matches 1 if score round ws_game matches 2 unless score devMode ws_game matches 1 run function weaponswap:round/2/end
execute if score teams ws_game matches 1 if score round ws_game matches 3 unless score devMode ws_game matches 1 run function weaponswap:round/3/end
# Loop
execute if score gameflag ws_game matches 1 run schedule function weaponswap:gt 1t