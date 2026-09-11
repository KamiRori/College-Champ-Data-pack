# Clears Split to avoid double ending
scoreboard players set split tagrush_game 4



# Drain players.
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

execute unless score a1_settled tagrush_matchinfo matches 1 run function tagrush:game/match_result/get_match_result/a1
execute unless score a2_settled tagrush_matchinfo matches 1 run function tagrush:game/match_result/get_match_result/a2
execute unless score a3_settled tagrush_matchinfo matches 1 run function tagrush:game/match_result/get_match_result/a3
execute unless score a4_settled tagrush_matchinfo matches 1 run function tagrush:game/match_result/get_match_result/a4

# Ends Round first to avoid title override
function tagrush:game/round_end


