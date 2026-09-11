
# Get the player that is attempting this challenge.
scoreboard players operation $temp maze_objective_id = @s maze_objective_id
execute as @a if score @s maze_objective_id = $temp maze_objective_id run tag @s add temp_challenger

# Room Attempting
scoreboard players operation $attempting_room_id maze_objective_id = @a[tag=temp_challenger,limit=1] maze_room_attempting
execute store result storage maze:objective roomId int 1 run scoreboard players get $attempting_room_id maze_objective_id

# Judge Amount
scoreboard players set $matched maze_temp_1 0

execute as @a[tag=temp_challenger] run function maze:objective/search/judge_amount

# Check if matched
execute if score $matched maze_temp_1 matches 10 run execute as @a[tag=temp_challenger,tag=buff_instacap] at @s run function maze:player_action/objective_success_instacap
execute if score $matched maze_temp_1 matches 10 run execute as @a[tag=temp_challenger,tag=!buff_instacap] at @s run function maze:player_action/objective_success
execute if score $matched maze_temp_1 matches 10 run function maze:objective/search/success_room_action with storage maze:objective

# Check if exceeded
execute if score $matched maze_temp_1 matches ..-1 run execute as @a[tag=temp_challenger] at @s run function maze:player_action/objective_fail
execute if score $matched maze_temp_1 matches ..-1 run function maze:objective/search/fail_room_action with storage maze:objective

# Forfeit
#execute if block ~ ~1 ~6 oak_button[powered=true] run execute as @a[tag=temp_challenger] at @s run function maze:player_action/objective_fail
#execute if block ~ ~1 ~6 oak_button[powered=true] run function maze:objective/search/fail_room_action with storage maze:objective

# Time Limit Exceeded
execute store result score $elapsed maze_objective_time_limit run scoreboard players add @a[tag=temp_challenger] maze_objective_time_elapsed 1
execute store result score $max maze_objective_time_limit run scoreboard players get @a[tag=temp_challenger,sort=nearest,limit=1] maze_objective_time_limit

execute if score $elapsed maze_objective_time_limit >= $max maze_objective_time_limit run execute as @a[tag=temp_challenger] at @s run function maze:player_action/objective_fail
execute if score $elapsed maze_objective_time_limit >= $max maze_objective_time_limit run function maze:objective/search/fail_room_action with storage maze:objective

# Play Actionbar
execute if entity @s[tag=difficulty_normal] run execute as @a[tag=temp_challenger] run function maze:objective/search/judge_abar_normal
execute if entity @s[tag=difficulty_hard] run execute as @a[tag=temp_challenger] run function maze:objective/search/judge_abar_hard

# Remove Dropped items if hard
execute if entity @s[tag=difficulty_hard] at @s positioned ~-20 ~-10 ~-20 run kill @e[type=item,dx=40,dy=20,dz=40,nbt={Item:{id:"minecraft:iron_block"}}]
execute if entity @s[tag=difficulty_hard] at @s positioned ~-20 ~-10 ~-20 run kill @e[type=item,dx=40,dy=20,dz=40,nbt={Item:{id:"minecraft:diamond_block"}}]
execute if entity @s[tag=difficulty_hard] at @s positioned ~-20 ~-10 ~-20 run kill @e[type=item,dx=40,dy=20,dz=40,nbt={Item:{id:"minecraft:gold_block"}}]
execute if entity @s[tag=difficulty_hard] at @s positioned ~-20 ~-10 ~-20 run kill @e[type=item,dx=40,dy=20,dz=40,nbt={Item:{id:"minecraft:coal_block"}}]
execute if entity @s[tag=difficulty_hard] at @s positioned ~-20 ~-10 ~-20 run kill @e[type=item,dx=40,dy=20,dz=40,nbt={Item:{id:"minecraft:lapis_block"}}]
execute if entity @s[tag=difficulty_hard] at @s positioned ~-20 ~-10 ~-20 run kill @e[type=item,dx=40,dy=20,dz=40,nbt={Item:{id:"minecraft:raw_gold_block"}}]
execute if entity @s[tag=difficulty_hard] at @s positioned ~-20 ~-10 ~-20 run kill @e[type=item,dx=40,dy=20,dz=40,nbt={Item:{id:"minecraft:quartz_bricks"}}]
execute if entity @s[tag=difficulty_hard] at @s positioned ~-20 ~-10 ~-20 run kill @e[type=item,dx=40,dy=20,dz=40,nbt={Item:{id:"minecraft:copper_block"}}]
execute if entity @s[tag=difficulty_hard] at @s positioned ~-20 ~-10 ~-20 run kill @e[type=item,dx=40,dy=20,dz=40,nbt={Item:{id:"minecraft:prismarine_bricks"}}]
execute if entity @s[tag=difficulty_hard] at @s positioned ~-20 ~-10 ~-20 run kill @e[type=item,dx=40,dy=20,dz=40,nbt={Item:{id:"minecraft:basalt"}}]

# Clean
tag @a remove temp_challenger
