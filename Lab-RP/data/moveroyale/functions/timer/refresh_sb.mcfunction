
function moveroyale:timer/macro_time_refresh with storage generic.timer
# Always run this as long as it's in MR.

execute if score ActiveGame tourney_stats matches 18 run schedule function moveroyale:timer/refresh_sb 1t
execute unless score ActiveGame tourney_stats matches 18 run team modify placeholder_3 suffix ""