
scoreboard players set RoundActive tourney_stats 0

tellraw @a ["§b[§r鄵§b] 回合结束！"]

schedule clear master:timer/timeleft/sec
schedule function tagrush:game/winanno 2s
scoreboard players set gameflag tagrush_game 0
tellraw @a ["",{"text": "以下是本轮对战情况: ","bold": true}]

stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2

title @a times 0 60 10
title @a title ["",{"text": "回合结束！","color": "red","bold": true}]

# Survived Players
execute as @a[team=!spec,tag=!tagrush_status_drained] run scoreboard players operation @s tagrush_indvscore += survived tagrush_stats
execute as @a[team=!spec,tag=!tagrush_status_drained] run tellraw @s ["[§6+",{"score":{"name": "survived","objective": "tagrush_stats"},"color": "gold"},"§6分§f] ","§a回合结束时未陷入红温。"]

# Remove timer bossbar
bossbar remove tagrush_timer

# Reset attributes
clear @a
execute as @a run attribute @s generic.attack_damage base set -100
execute as @a run attribute @s generic.movement_speed base set 0.1


execute if score round tagrush_game < matches tagrush_game run function master:timer/nextround/10s
execute if score round tagrush_game < matches tagrush_game run function tagrush:nextround_listener
# Delay Game End by 1t to properly save last round's score
execute if score round tagrush_game = matches tagrush_game run schedule function tagrush:game/game_end 1t

