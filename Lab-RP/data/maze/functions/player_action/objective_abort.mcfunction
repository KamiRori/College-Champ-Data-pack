
# Reset time to avoid double failure.
scoreboard players set @s maze_objective_time_elapsed -1000
scoreboard players set @s maze_objective_time_limit -1

# Abort the challenge attempting.
scoreboard players operation $attempt_id maze_temp_1 = @s maze_objective_attempting
execute as @e[type=marker,tag=maze_objective,tag=state_inuse] if score @s maze_objective_id = $attempt_id maze_temp_1 at @s run function maze:objective/objective_abort

# Instant FX
tellraw @s ["§c[§r楒§c] ","§c所在房间已被其他队伍占领，请重新进行本房间的挑战！§7消耗的攻占凭证已返还。"]
playsound sound.enemy_completed record @s ~ ~ ~ 1.2

function maze:player_action/return_from_objective

function maze:get_item/card_challenge
# Cleanup
scoreboard players set @s maze_room_attempting -1


