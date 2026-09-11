tag @s add step_kill_judge
# Friendly fire exclusion
execute as @s run function weaponswap:kill/friendlykill

# Set the dead player to spec mode
tag @s add ws_eliminated
gamemode spectator @s

# Placement
execute if score round ws_game matches 1 run scoreboard players operation @s ws_recap_r1 = players ws_game
execute if score round ws_game matches 2 run scoreboard players operation @s ws_recap_r2 = players ws_game
execute if score round ws_game matches 3 run scoreboard players operation @s ws_recap_r3 = players ws_game

# Decides if there is a valid killer
execute as @s run function weaponswap:kill/findkiller

# Player Kill
execute as @s[tag=!ws_nokiller] run function weaponswap:kill/killmsg

# Nature Damage
execute as @s[tag=ws_nokiller] run function weaponswap:kill/nature

# Modifiers: Shockwave
execute if score modifiers_shockwave ws_game matches 1 at @s run function weaponswap:modifiers/shockwave/trigger

tag @s remove queue_kill_judge
tag @s remove step_kill_judge