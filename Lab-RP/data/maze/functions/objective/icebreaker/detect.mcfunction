
# Get the player that is attempting this challenge.
scoreboard players operation $temp maze_objective_id = @s maze_objective_id
execute as @a if score @s maze_objective_id = $temp maze_objective_id run tag @s add temp_challenger

# Room Attempting
scoreboard players operation $attempting_room_id maze_objective_id = @a[tag=temp_challenger,limit=1] maze_room_attempting
execute store result storage maze:objective roomId int 1 run scoreboard players get $attempting_room_id maze_objective_id
# Border No Place
fill ~-4 ~ ~-4 ~-4 ~8 ~4 air destroy
fill ~-12 ~ ~-4 ~-4 ~8 ~-4 air destroy
fill ~-12 ~ ~4 ~-12 ~8 ~-4 air destroy
fill ~-4 ~ ~4 ~-12 ~8 ~4 air destroy
fill ~-12 ~9 ~-4 ~-4 ~9 ~4 air destroy

# Check if matched
execute if blocks ~-5 ~ ~-3 ~-11 ~8 ~3 ~5 ~-15 ~-3 all run execute as @a[tag=temp_challenger,tag=buff_instacap] at @s run function maze:player_action/objective_success_instacap
execute if blocks ~-5 ~ ~-3 ~-11 ~8 ~3 ~5 ~-15 ~-3 all run execute as @a[tag=temp_challenger,tag=!buff_instacap] at @s run function maze:player_action/objective_success
execute if blocks ~-5 ~ ~-3 ~-11 ~8 ~3 ~5 ~-15 ~-3 all run function maze:objective/icebreaker/success_room_action with storage maze:objective

# Forfeit
execute if block ~ ~1 ~6 oak_button[powered=true] run execute as @a[tag=temp_challenger] at @s run function maze:player_action/objective_fail
execute if block ~ ~1 ~6 oak_button[powered=true] run function maze:objective/icebreaker/fail_room_action with storage maze:objective

# Time Limit Exceeded
execute store result score $elapsed maze_objective_time_limit run scoreboard players add @a[tag=temp_challenger] maze_objective_time_elapsed 1
execute store result score $max maze_objective_time_limit run scoreboard players get @a[tag=temp_challenger,sort=nearest,limit=1] maze_objective_time_limit

execute if score $elapsed maze_objective_time_limit >= $max maze_objective_time_limit run execute as @a[tag=temp_challenger] at @s run function maze:player_action/objective_fail
execute if score $elapsed maze_objective_time_limit >= $max maze_objective_time_limit run function maze:objective/icebreaker/fail_room_action with storage maze:objective
# Clean
tag @a remove temp_challenger
