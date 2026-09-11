

execute if score a1_team1 tagrush_matchinfo > a1_team2 tagrush_matchinfo run execute as @a[tag=tagrush_arena_1,tag=!tagrush_arena_secondary,tag=!tagrush_status_drained,sort=random,limit=2] at @s run function tagrush:player_action/add_self_tag
execute if score a1_team2 tagrush_matchinfo > a1_team1 tagrush_matchinfo run execute as @a[tag=tagrush_arena_1,tag=tagrush_arena_secondary,tag=!tagrush_status_drained,sort=random,limit=2] at @s run function tagrush:player_action/add_self_tag