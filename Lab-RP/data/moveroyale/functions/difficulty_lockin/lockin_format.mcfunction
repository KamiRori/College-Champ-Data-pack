

scoreboard objectives remove mr_temp_li
scoreboard objectives add mr_temp_li dummy
scoreboard objectives remove mr_temp_li_rank
scoreboard objectives add mr_temp_li_rank dummy

scoreboard players set step mr_temp_li 0
$execute as @a[team=$(team)] run scoreboard players add total mr_temp_li 1
$execute as @a[team=$(team)] run scoreboard players operation @s mr_temp_li = @s moveroyale_indv

function moveroyale:difficulty_lockin/lockin_step with storage moveroyale:temp_lockin

$execute as @a[team=$(team)] if score @s mr_temp_li_rank <= $(team) temp_team_players run tag @s add moveroyale_bracket_high
$execute as @a[team=$(team)] if score @s mr_temp_li_rank > $(team) temp_team_players run tag @s add moveroyale_bracket_low
