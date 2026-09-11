
# Reset time to avoid double failure.
scoreboard players set @s maze_objective_time_elapsed -1000
scoreboard players set @s maze_objective_time_limit -1

# FX Anim
scoreboard players set @s maze_fx_type 1
scoreboard players set @s maze_fx_tick 0

# Instant FX
tellraw @s ["§c[§r楒§c] ","挑战失败！即将传送回挑战触发处。"]
playsound sound.team_eliminated record @s ~ ~ ~ 1.2

# Cleanup
scoreboard players set @s maze_room_attempting -1


