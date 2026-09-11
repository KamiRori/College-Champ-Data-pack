
title @a times 10 40 20
title @a title ["",{"text": "Battleswap Maze","color":"yellow"}]

execute if score map ws_game matches 1 run tp @a 34965 120 34965

gamemode spectator @a
kill @e[type=armor_stand,tag=Intro]
forceload add 34935 34935
execute if score map ws_game matches 1 run summon minecraft:armor_stand 34965 120 34965 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,Tags:["Intro"],Rotation:[315f,20f]}

scoreboard players set intro_active tourney_stats 1

team modify placeholder_6 prefix ["",{"text": "地图: ","color": "aqua"}]
execute if score map ws_game matches 1 run team modify placeholder_6 suffix ["",{"text": "Dungeon"}]