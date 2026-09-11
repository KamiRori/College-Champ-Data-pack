
# Score based
## 4-1
execute if score a4_team1 tagrush_matchinfo matches 4 if score a4_team2 tagrush_matchinfo matches 1 run function tagrush:game/match_result/4-1/win with storage tagrush:arena/4/team_1
execute if score a4_team1 tagrush_matchinfo matches 4 if score a4_team2 tagrush_matchinfo matches 1 run function tagrush:game/match_result/4-1/lose with storage tagrush:arena/4/team_2
execute if score a4_team1 tagrush_matchinfo matches 4 if score a4_team2 tagrush_matchinfo matches 1 run return 1

execute if score a4_team2 tagrush_matchinfo matches 4 if score a4_team1 tagrush_matchinfo matches 1 run function tagrush:game/match_result/4-1/win with storage tagrush:arena/4/team_2
execute if score a4_team2 tagrush_matchinfo matches 4 if score a4_team1 tagrush_matchinfo matches 1 run function tagrush:game/match_result/4-1/lose with storage tagrush:arena/4/team_1
execute if score a4_team2 tagrush_matchinfo matches 4 if score a4_team1 tagrush_matchinfo matches 1 run return 1
## 4-2
execute if score a4_team1 tagrush_matchinfo matches 4 if score a4_team2 tagrush_matchinfo matches 2 run function tagrush:game/match_result/4-2/win with storage tagrush:arena/4/team_1
execute if score a4_team1 tagrush_matchinfo matches 4 if score a4_team2 tagrush_matchinfo matches 2 run function tagrush:game/match_result/4-2/lose with storage tagrush:arena/4/team_2
execute if score a4_team1 tagrush_matchinfo matches 4 if score a4_team2 tagrush_matchinfo matches 2 run return 1

execute if score a4_team2 tagrush_matchinfo matches 4 if score a4_team1 tagrush_matchinfo matches 2 run function tagrush:game/match_result/4-2/win with storage tagrush:arena/4/team_2
execute if score a4_team2 tagrush_matchinfo matches 4 if score a4_team1 tagrush_matchinfo matches 2 run function tagrush:game/match_result/4-2/lose with storage tagrush:arena/4/team_1
execute if score a4_team2 tagrush_matchinfo matches 4 if score a4_team1 tagrush_matchinfo matches 2 run return 1

## 3-2
execute if score a4_team1 tagrush_matchinfo matches 3 if score a4_team2 tagrush_matchinfo matches 2 run function tagrush:game/match_result/3-2/win with storage tagrush:arena/4/team_1
execute if score a4_team1 tagrush_matchinfo matches 3 if score a4_team2 tagrush_matchinfo matches 2 run function tagrush:game/match_result/3-2/lose with storage tagrush:arena/4/team_2
execute if score a4_team1 tagrush_matchinfo matches 3 if score a4_team2 tagrush_matchinfo matches 2 run return 1

execute if score a4_team2 tagrush_matchinfo matches 3 if score a4_team1 tagrush_matchinfo matches 2 run function tagrush:game/match_result/3-2/win with storage tagrush:arena/4/team_2
execute if score a4_team2 tagrush_matchinfo matches 3 if score a4_team1 tagrush_matchinfo matches 2 run function tagrush:game/match_result/3-2/lose with storage tagrush:arena/4/team_1
execute if score a4_team2 tagrush_matchinfo matches 3 if score a4_team1 tagrush_matchinfo matches 2 run return 1

## 3-3
execute if score a4_team1 tagrush_matchinfo matches 3 if score a4_team2 tagrush_matchinfo matches 3 run function tagrush:game/match_result/3-3/each with storage tagrush:arena/4/team_1
execute if score a4_team1 tagrush_matchinfo matches 3 if score a4_team2 tagrush_matchinfo matches 3 run function tagrush:game/match_result/3-3/each with storage tagrush:arena/4/team_2
execute if score a4_team1 tagrush_matchinfo matches 3 if score a4_team2 tagrush_matchinfo matches 3 run return 1


## anything else.
execute if score a4_team1 tagrush_matchinfo > a4_team2 tagrush_matchinfo run function tagrush:game/match_result/else/win with storage tagrush:arena/4/team_1
execute if score a4_team2 tagrush_matchinfo > a4_team1 tagrush_matchinfo run function tagrush:game/match_result/else/win with storage tagrush:arena/4/team_2

execute if score a4_team1 tagrush_matchinfo > a4_team2 tagrush_matchinfo run function tagrush:game/match_result/else/lose with storage tagrush:arena/4/team_2
execute if score a4_team2 tagrush_matchinfo > a4_team1 tagrush_matchinfo run function tagrush:game/match_result/else/lose with storage tagrush:arena/4/team_1

execute if score a4_team1 tagrush_matchinfo = a4_team2 tagrush_matchinfo run function tagrush:game/match_result/else/tie with storage tagrush:arena/4/team_2
execute if score a4_team2 tagrush_matchinfo = a4_team1 tagrush_matchinfo run function tagrush:game/match_result/else/tie with storage tagrush:arena/4/team_1