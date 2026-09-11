
execute as @r[tag=tagrush_arena_3,tag=!tagrush_arena_secondary,tag=!tagrush_status_drained] at @s run function tagrush:player_action/add_self_tag
execute as @r[tag=tagrush_arena_3,tag=tagrush_arena_secondary,tag=!tagrush_status_drained] at @s run function tagrush:player_action/add_self_tag