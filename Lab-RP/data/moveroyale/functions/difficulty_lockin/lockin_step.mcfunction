
scoreboard players add step mr_temp_li 1
scoreboard players set target_score mr_temp_li -99999

# Select a random player with the highest current individual score
$execute as @a[team=$(team)] run scoreboard players operation target_score mr_temp_li > @s mr_temp_li
$execute as @a[team=$(team)] if score @s mr_temp_li = target_score mr_temp_li run tag @s add mr_temp_se
$execute as @r[team=$(team),tag=mr_temp_se] run scoreboard players operation @s mr_temp_li_rank = step mr_temp_li
$execute as @a[team=$(team),scores={mr_temp_li_rank=-2147483648..2147483647}] run scoreboard players set @s mr_temp_li -100000

$tag @a[team=$(team)] remove mr_temp_se

execute if score step mr_temp_li < total mr_temp_li run function moveroyale:difficulty_lockin/lockin_step with storage moveroyale:temp_lockin