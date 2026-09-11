 
# Universal action
execute if score @s moveroyale_cleared_cps matches 2 run function moveroyale:player_action/round_complete_low
execute if score @s moveroyale_cleared_cps matches 2 run function moveroyale:checkpoint/low_silent/3

execute if score @s moveroyale_cleared_cps matches 1 run function moveroyale:checkpoint/low/2

execute if score @s moveroyale_cleared_cps matches 0 run function moveroyale:checkpoint/low/1

# Fetch necessary data for macro update coords.
data modify storage moveroyale:temp/cpupdate difficulty set value "e"
execute store result storage moveroyale:temp/cpupdate arena int 1 run scoreboard players get arena moveroyale_game
scoreboard players operation $temp moveroyale_cleared_cps = @s moveroyale_cleared_cps
execute store result storage moveroyale:temp/cpupdate cp int 1 run scoreboard players add $temp moveroyale_cleared_cps 1

function moveroyale:challenge_set/trident/macro_checkpoint_update with storage moveroyale:temp/cpupdate




