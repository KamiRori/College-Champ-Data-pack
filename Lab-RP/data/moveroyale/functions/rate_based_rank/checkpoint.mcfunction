
scoreboard objectives add moveroyale_temp_rate_rank dummy
tag @a[team=!spec,tag=!moveroyale_eliminated,scores={moveroyale_roundrank=-1}] add mr_rank_target

execute as @a[tag=mr_rank_target] run scoreboard players operation @s moveroyale_temp_rate_rank = @s moveroyale_progress_rank
execute as @a[tag=mr_rank_target] run scoreboard players add @s moveroyale_temp_rate_rank 1

execute as @a[tag=mr_rank_target,tag=moveroyale_bracket_high] at @s run function moveroyale:rate_based_rank/high
execute as @a[tag=mr_rank_target,tag=moveroyale_bracket_low] at @s run function moveroyale:rate_based_rank/low

scoreboard objectives remove moveroyale_temp_rate_rank