
execute as @r[team=!spec,scores={ws_recap_played=0}] run function weaponswap:player_action/play_recap

execute if entity @a[team=!spec,scores={ws_recap_played=0}] run function weaponswap:player_action/final_recap