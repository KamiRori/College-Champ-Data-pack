
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

# Checks early victory
execute if score a1_team1 tagrush_matchinfo matches 0 if score a1_team2 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/win with storage tagrush:arena/1/team_2
execute if score a1_team1 tagrush_matchinfo matches 0 if score a1_team2 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/lose with storage tagrush:arena/1/team_1

execute if score a1_team2 tagrush_matchinfo matches 0 if score a1_team1 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/win with storage tagrush:arena/1/team_1
execute if score a1_team2 tagrush_matchinfo matches 0 if score a1_team1 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/lose with storage tagrush:arena/1/team_2

execute if score a2_team1 tagrush_matchinfo matches 0 if score a2_team2 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/win with storage tagrush:arena/2/team_2
execute if score a2_team1 tagrush_matchinfo matches 0 if score a2_team2 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/lose with storage tagrush:arena/2/team_1

execute if score a2_team2 tagrush_matchinfo matches 0 if score a2_team1 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/win with storage tagrush:arena/2/team_1
execute if score a2_team2 tagrush_matchinfo matches 0 if score a2_team1 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/lose with storage tagrush:arena/2/team_2

execute if score a3_team1 tagrush_matchinfo matches 0 if score a3_team2 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/win with storage tagrush:arena/3/team_2
execute if score a3_team1 tagrush_matchinfo matches 0 if score a3_team2 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/lose with storage tagrush:arena/3/team_1

execute if score a3_team2 tagrush_matchinfo matches 0 if score a3_team1 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/win with storage tagrush:arena/3/team_1
execute if score a3_team2 tagrush_matchinfo matches 0 if score a3_team1 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/lose with storage tagrush:arena/3/team_2

execute if score a4_team1 tagrush_matchinfo matches 0 if score a4_team2 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/win with storage tagrush:arena/4/team_2
execute if score a4_team1 tagrush_matchinfo matches 0 if score a4_team2 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/lose with storage tagrush:arena/4/team_1

execute if score a4_team2 tagrush_matchinfo matches 0 if score a4_team1 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/win with storage tagrush:arena/4/team_1
execute if score a4_team2 tagrush_matchinfo matches 0 if score a4_team1 tagrush_matchinfo matches 1.. run function tagrush:game/match_result/4-0/lose with storage tagrush:arena/4/team_2

# 提前结算标记
execute if score a1_team1 tagrush_matchinfo matches 0 run scoreboard players set a1_settled tagrush_matchinfo 1
execute if score a1_team2 tagrush_matchinfo matches 0 run scoreboard players set a1_settled tagrush_matchinfo 1
execute if score a2_team1 tagrush_matchinfo matches 0 run scoreboard players set a2_settled tagrush_matchinfo 1
execute if score a2_team2 tagrush_matchinfo matches 0 run scoreboard players set a2_settled tagrush_matchinfo 1
execute if score a3_team1 tagrush_matchinfo matches 0 run scoreboard players set a3_settled tagrush_matchinfo 1
execute if score a3_team2 tagrush_matchinfo matches 0 run scoreboard players set a3_settled tagrush_matchinfo 1
execute if score a4_team1 tagrush_matchinfo matches 0 run scoreboard players set a4_settled tagrush_matchinfo 1
execute if score a4_team2 tagrush_matchinfo matches 0 run scoreboard players set a4_settled tagrush_matchinfo 1

# Starts next split
function tagrush:game/split/start_3