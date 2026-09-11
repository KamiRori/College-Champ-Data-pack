

# Failure Title
execute if score @s maze_fx_tick matches 1 run title @s times 5 20 5
execute if score @s maze_fx_tick matches 1 run title @s title "§a§l挑战成功！"
execute if score @s maze_fx_tick matches 1 run title @s subtitle "即将返回主地图。"

# BlackScreen
execute if score @s maze_fx_tick matches 25 run title @s times 5 10 5
execute if score @s maze_fx_tick matches 25 run title @s title {"text": "\ue011","font": "font:font"}

# Return from objective
execute if score @s maze_fx_tick matches 30 run function maze:player_action/return_from_objective

# cleanup
execute if score @s maze_fx_tick matches 31 run scoreboard players set @s maze_fx_type -1
execute if score @s maze_fx_tick matches 31 run scoreboard players set @s maze_fx_tick 0
