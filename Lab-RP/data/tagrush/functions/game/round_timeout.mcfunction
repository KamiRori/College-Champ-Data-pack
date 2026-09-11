
scoreboard players set gameflag tagrush_game 0
# 

$execute unless score redwin tagrush_cache matches 1 unless score $(red)win tagrush_cache matches 1 if score red tagrush_blockscalc > $(red) tagrush_blockscalc run function tagrush:game/match_result/win/red with storage tagrush:opponent
$execute unless score redwin tagrush_cache matches 1 unless score $(red)win tagrush_cache matches 1 if score red tagrush_blockscalc = $(red) tagrush_blockscalc run function tagrush:game/match_result/tie/red

$execute unless score bluewin tagrush_cache matches 1 unless score $(blue)win tagrush_cache matches 1 if score blue tagrush_blockscalc > $(blue) tagrush_blockscalc run function tagrush:game/match_result/win/blue with storage tagrush:opponent
$execute unless score bluewin tagrush_cache matches 1 unless score $(blue)win tagrush_cache matches 1 if score blue tagrush_blockscalc = $(blue) tagrush_blockscalc run function tagrush:game/match_result/tie/blue

$execute unless score greenwin tagrush_cache matches 1 unless score $(green)win tagrush_cache matches 1 if score green tagrush_blockscalc > $(green) tagrush_blockscalc run function tagrush:game/match_result/win/green with storage tagrush:opponent
$execute unless score greenwin tagrush_cache matches 1 unless score $(green)win tagrush_cache matches 1 if score green tagrush_blockscalc = $(green) tagrush_blockscalc run function tagrush:game/match_result/tie/green

$execute unless score yellowwin tagrush_cache matches 1 unless score $(yellow)win tagrush_cache matches 1 if score yellow tagrush_blockscalc > $(yellow) tagrush_blockscalc run function tagrush:game/match_result/win/yellow with storage tagrush:opponent
$execute unless score yellowwin tagrush_cache matches 1 unless score $(yellow)win tagrush_cache matches 1 if score yellow tagrush_blockscalc = $(yellow) tagrush_blockscalc run function tagrush:game/match_result/tie/yellow

$execute unless score cyanwin tagrush_cache matches 1 unless score $(cyan)win tagrush_cache matches 1 if score cyan tagrush_blockscalc > $(cyan) tagrush_blockscalc run function tagrush:game/match_result/win/cyan with storage tagrush:opponent
$execute unless score cyanwin tagrush_cache matches 1 unless score $(cyan)win tagrush_cache matches 1 if score cyan tagrush_blockscalc = $(cyan) tagrush_blockscalc run function tagrush:game/match_result/tie/cyan

$execute unless score pinkwin tagrush_cache matches 1 unless score $(pink)win tagrush_cache matches 1 if score pink tagrush_blockscalc > $(pink) tagrush_blockscalc run function tagrush:game/match_result/win/pink with storage tagrush:opponent
$execute unless score pinkwin tagrush_cache matches 1 unless score $(pink)win tagrush_cache matches 1 if score pink tagrush_blockscalc = $(pink) tagrush_blockscalc run function tagrush:game/match_result/tie/pink

$execute unless score purplewin tagrush_cache matches 1 unless score $(purple)win tagrush_cache matches 1 if score purple tagrush_blockscalc > $(purple) tagrush_blockscalc run function tagrush:game/match_result/win/purple with storage tagrush:opponent
$execute unless score purplewin tagrush_cache matches 1 unless score $(purple)win tagrush_cache matches 1 if score purple tagrush_blockscalc = $(purple) tagrush_blockscalc run function tagrush:game/match_result/tie/purple

$execute unless score orangewin tagrush_cache matches 1 unless score $(orange)win tagrush_cache matches 1 if score orange tagrush_blockscalc > $(orange) tagrush_blockscalc run function tagrush:game/match_result/win/orange with storage tagrush:opponent
$execute unless score orangewin tagrush_cache matches 1 unless score $(orange)win tagrush_cache matches 1 if score orange tagrush_blockscalc = $(orange) tagrush_blockscalc run function tagrush:game/match_result/tie/orange

scoreboard players set completed tagrush_game 4



