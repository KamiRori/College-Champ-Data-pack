
execute as @a[tag=tagrush_status_tagged] at @s run function tagrush:player_action/drain_self
# Calculates players
scoreboard players set a1_team1 tagrush_matchinfo 0
scoreboard players set a1_team2 tagrush_matchinfo 0
scoreboard players set a2_team1 tagrush_matchinfo 0
scoreboard players set a2_team2 tagrush_matchinfo 0
scoreboard players set a3_team1 tagrush_matchinfo 0
scoreboard players set a3_team2 tagrush_matchinfo 0
scoreboard players set a4_team1 tagrush_matchinfo 0
scoreboard players set a4_team2 tagrush_matchinfo 0

execute as @a[tag=tagrush_arena_1,tag=!tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a1_team1 tagrush_matchinfo 1
execute as @a[tag=tagrush_arena_1,tag=tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a1_team2 tagrush_matchinfo 1
execute as @a[tag=tagrush_arena_2,tag=!tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a2_team1 tagrush_matchinfo 1
execute as @a[tag=tagrush_arena_2,tag=tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a2_team2 tagrush_matchinfo 1
execute as @a[tag=tagrush_arena_3,tag=!tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a3_team1 tagrush_matchinfo 1
execute as @a[tag=tagrush_arena_3,tag=tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a3_team2 tagrush_matchinfo 1
execute as @a[tag=tagrush_arena_4,tag=!tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a4_team1 tagrush_matchinfo 1
execute as @a[tag=tagrush_arena_4,tag=tagrush_arena_secondary,tag=!tagrush_status_drained] run scoreboard players add a4_team2 tagrush_matchinfo 1

function tagrush:game/split/start_2