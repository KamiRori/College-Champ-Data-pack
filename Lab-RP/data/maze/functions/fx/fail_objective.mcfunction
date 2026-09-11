

# Failure Title
execute if score @s maze_fx_tick matches 1 run title @s times 0 40 10
execute if score @s maze_fx_tick matches 1 run title @s title "§c§k§l挑战失败！"

execute if score @s maze_fx_tick matches 2 run title @s times 0 40 10
execute if score @s maze_fx_tick matches 2 run title @s title "§c§l挑§c§k§l战失败！"

execute if score @s maze_fx_tick matches 3 run title @s times 0 40 10
execute if score @s maze_fx_tick matches 3 run title @s title "§c§l挑战§c§k§l失败！"

execute if score @s maze_fx_tick matches 4 run title @s times 0 40 10
execute if score @s maze_fx_tick matches 4 run title @s title "§c§l挑战失§c§k§l败！"

execute if score @s maze_fx_tick matches 5 run title @s times 0 40 10
execute if score @s maze_fx_tick matches 5 run title @s title "§c§l挑战失败！"

# BlackScreen
execute if score @s maze_fx_tick matches 30 run title @s times 5 10 5
execute if score @s maze_fx_tick matches 30 run title @s title {"text": "\ue011","font": "font:font"}

# Return from objective
execute if score @s maze_fx_tick matches 35 run function maze:player_action/return_from_objective

# cleanup
execute if score @s maze_fx_tick matches 36 run scoreboard players set @s maze_fx_type -1
execute if score @s maze_fx_tick matches 36 run scoreboard players set @s maze_fx_tick 0
