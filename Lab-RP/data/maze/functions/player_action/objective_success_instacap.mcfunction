
# Reset time to avoid double checks
scoreboard players set @s maze_objective_time_elapsed -1000
scoreboard players set @s maze_objective_time_limit -1

# FX Anim
scoreboard players set @s maze_fx_type 2
scoreboard players set @s maze_fx_tick 0

# Instant FX
tellraw @s ["§a[§r彀§a] ","挑战成功！即将传送回挑战触发处。"]
tellraw @s ["§a[§r褎§a] ","触发",{"text": "宣称卡","color": "#E3E3E3"},"§a效果，直接建立对所挑战领地的占领。"]
playsound sound.acquire record @s ~ ~ ~ 1.2

# Room Card (Instacap)
execute store result storage maze:objective roomId int 1 run scoreboard players get @s maze_room_attempting

# Reset Room Capture State
scoreboard players operation $newState maze_room_capture = @s maze_tid
function maze:room_state_change/macro_change_room_state with storage maze:objective
# Cleanup
scoreboard players set @s maze_room_attempting -1


