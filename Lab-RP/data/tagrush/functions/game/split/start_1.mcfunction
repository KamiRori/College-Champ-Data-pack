
scoreboard players set split tagrush_game 1

scoreboard players operation timeleft_t tagrush_game = time_split01 tagrush_game

# Calculates players
scoreboard objectives remove tagrush_matchinfo
scoreboard objectives add tagrush_matchinfo dummy ""
execute as @a[tag=tagrush_arena_1,tag=!tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a1_team1 tagrush_matchinfo 1
execute as @a[tag=tagrush_arena_1,tag=tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a1_team2 tagrush_matchinfo 1
execute as @a[tag=tagrush_arena_2,tag=!tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a2_team1 tagrush_matchinfo 1
execute as @a[tag=tagrush_arena_2,tag=tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a2_team2 tagrush_matchinfo 1
execute as @a[tag=tagrush_arena_3,tag=!tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a3_team1 tagrush_matchinfo 1
execute as @a[tag=tagrush_arena_3,tag=tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a3_team2 tagrush_matchinfo 1
execute as @a[tag=tagrush_arena_4,tag=!tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a4_team1 tagrush_matchinfo 1
execute as @a[tag=tagrush_arena_4,tag=tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a4_team2 tagrush_matchinfo 1

# Tags Players.
function tagrush:game/arena/1/tag_both
function tagrush:game/arena/2/tag_both
function tagrush:game/arena/3/tag_both
function tagrush:game/arena/4/tag_both

# fx
tellraw @a ["§b[§r鄵§b] 切分",{"score":{"name": "split","objective": "tagrush_game"},"color": "#E3E3E3"},"§b开始！"]