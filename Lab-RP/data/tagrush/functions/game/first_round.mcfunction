

# Team Count
scoreboard players set teams tagrush_game 0

execute if entity @a[team=red] run scoreboard players add teams tagrush_game 1
execute if entity @a[team=blue] run scoreboard players add teams tagrush_game 1
execute if entity @a[team=green] run scoreboard players add teams tagrush_game 1
execute if entity @a[team=yellow] run scoreboard players add teams tagrush_game 1
execute if entity @a[team=cyan] run scoreboard players add teams tagrush_game 1
execute if entity @a[team=pink] run scoreboard players add teams tagrush_game 1
execute if entity @a[team=orange] run scoreboard players add teams tagrush_game 1
execute if entity @a[team=purple] run scoreboard players add teams tagrush_game 1

# Match Count (do at least 1 match)
scoreboard players operation matches tagrush_game = teams tagrush_game
scoreboard players operation arenas tagrush_game = teams tagrush_game
scoreboard players operation arenas tagrush_game /= 2 math
scoreboard players remove matches tagrush_game 1

execute if score teams tagrush_game matches 1 run scoreboard players add matches tagrush_game 1
execute if score teams tagrush_game matches 3 run scoreboard players add matches tagrush_game 1
execute if score teams tagrush_game matches 5 run scoreboard players add matches tagrush_game 1
execute if score teams tagrush_game matches 7 run scoreboard players add matches tagrush_game 1
# SCB

function tagrush:scoreboard/game1

# Start next round
function tagrush:game/next_round

