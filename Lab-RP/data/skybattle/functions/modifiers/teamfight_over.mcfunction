# Reward Summary
scoreboard players set red sba_teamscore 0
scoreboard players set blue sba_teamscore 0
scoreboard players set green sba_teamscore 0
scoreboard players set yellow sba_teamscore 0
scoreboard players set cyan sba_teamscore 0
scoreboard players set orange sba_teamscore 0
scoreboard players set purple sba_teamscore 0
scoreboard players set pink sba_teamscore 0

execute as @a[tag=sba_tf_red] run scoreboard players operation red sba_teamscore += @s sba_indvscore
execute as @a[tag=sba_tf_blue] run scoreboard players operation blue sba_teamscore += @s sba_indvscore
execute as @a[tag=sba_tf_green] run scoreboard players operation green sba_teamscore += @s sba_indvscore
execute as @a[tag=sba_tf_yellow] run scoreboard players operation yellow sba_teamscore += @s sba_indvscore
execute as @a[tag=sba_tf_cyan] run scoreboard players operation cyan sba_teamscore += @s sba_indvscore
execute as @a[tag=sba_tf_orange] run scoreboard players operation orange sba_teamscore += @s sba_indvscore
execute as @a[tag=sba_tf_purple] run scoreboard players operation purple sba_teamscore += @s sba_indvscore
execute as @a[tag=sba_tf_pink] run scoreboard players operation pink sba_teamscore += @s sba_indvscore

scoreboard players operation red sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation red sba_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue sba_teamscore /= multiplier2 tourney_stats

scoreboard players operation green sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation green sba_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow sba_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan sba_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange sba_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple sba_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink sba_teamscore /= multiplier2 tourney_stats


team join red @a[tag=sba_tf_red]
team join blue @a[tag=sba_tf_blue]
team join green @a[tag=sba_tf_green]
team join yellow @a[tag=sba_tf_yellow]
team join cyan @a[tag=sba_tf_cyan]
team join pink @a[tag=sba_tf_pink]
team join orange @a[tag=sba_tf_orange]
team join purple @a[tag=sba_tf_purple]