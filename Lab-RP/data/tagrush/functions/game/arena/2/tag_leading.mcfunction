

execute if score a2_team1 tagrush_matchinfo > a2_team2 tagrush_matchinfo run execute as @a[tag=tagrush_arena_2,tag=!tagrush_arena_secondary,tag=!tagrush_status_drained,sort=random,limit=2] at @s run function tagrush:player_action/add_self_tag
execute if score a2_team2 tagrush_matchinfo > a2_team1 tagrush_matchinfo run execute as @a[tag=tagrush_arena_2,tag=tagrush_arena_secondary,tag=!tagrush_status_drained,sort=random,limit=2] at @s run function tagrush:player_action/add_self_tag