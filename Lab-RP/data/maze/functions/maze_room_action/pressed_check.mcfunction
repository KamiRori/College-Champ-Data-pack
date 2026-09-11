

# Check if a player is nearby with button pressed advancement
## Not Present, returns the command
execute unless entity @a[advancements={maze:button_pressed=true},distance=0..5] run return 0

# Starts info gathering and checks if present,
tag @a[advancements={maze:button_pressed=true},distance=0..5] add temp_room_initiatedBy
## Clears the advancement
execute as @a[tag=temp_room_initiatedBy] run advancement revoke @s only maze:button_pressed

# Gets info needed for the challenge.
execute store result storage maze:roominfo roomId int 1 run scoreboard players get @s maze_main_anchor_room_id
function maze:maze_room_action/macro_pressed_info with storage maze:roominfo

# Failed to initiate: Initiater and Current held team are the same.
execute if score $presserTeam maze_main_anchor_info = $heldByTeam maze_main_anchor_info run tellraw @a[tag=temp_room_initiatedBy] ["§c[§r鼱§c] ","§c你的队伍已占领此房间！"]
execute if score $presserTeam maze_main_anchor_info = $heldByTeam maze_main_anchor_info run tag @a remove temp_room_initiatedBy
execute if score $presserTeam maze_main_anchor_info = $heldByTeam maze_main_anchor_info run return 0

# Failed to initiate: can not be used again while in TAKE CD
execute if score $takeCD maze_main_anchor_info matches 1.. run scoreboard players operation $takeCD_sec maze_main_anchor_info = $takeCD maze_main_anchor_info
execute if score $takeCD maze_main_anchor_info matches 1.. run scoreboard players add $takeCD_sec maze_main_anchor_info 19
execute if score $takeCD maze_main_anchor_info matches 1.. run scoreboard players operation $takeCD_sec maze_main_anchor_info /= 20 math

execute if score $takeCD maze_main_anchor_info matches 1.. run tellraw @a[tag=temp_room_initiatedBy] ["§c[§r鼱§c] ","§c本房间的挑战刚被完成，请等待",{"score":{"name": "$takeCD_sec","objective": "maze_main_anchor_info"},"color": "#E3E3E3"},"§c秒后使用§6占领凭证§c获取本房间领地卡！"]
execute if score $takeCD maze_main_anchor_info matches 1.. run tag @a remove temp_room_initiatedBy
execute if score $takeCD maze_main_anchor_info matches 1.. run return 0

# Tries to take a CAPTURE card if no team is currently holding this room
execute if score $heldByTeam maze_main_anchor_info matches 0 run execute store success score $itemTakeSuccess maze_main_anchor_info run clear @a[tag=temp_room_initiatedBy] phantom_membrane{CustomModelData:200002} 1 
execute if score $heldByTeam maze_main_anchor_info matches 0 if score $itemTakeSuccess maze_main_anchor_info matches 1 run execute as @a[tag=temp_room_initiatedBy] run function maze:player_action/macro_get_room_card with storage maze:roominfo

# Tries to take a CHALLENGE card if is held by a team
execute if score $heldByTeam maze_main_anchor_info matches 1.. run execute store success score $itemTakeSuccess maze_main_anchor_info run clear @a[tag=temp_room_initiatedBy] phantom_membrane{CustomModelData:200003} 1
execute if score $heldByTeam maze_main_anchor_info matches 0 if score $itemTakeSuccess maze_main_anchor_info matches 1 run function maze:maze_room_action/challenge_payment
execute if score $heldByTeam maze_main_anchor_info matches 0 if score $itemTakeSuccess maze_main_anchor_info matches 1 if score @s maze_main_anchor_room_id matches 101..199 run execute as @a[tag=temp_room_initiatedBy] at @s run function maze:get_objective/room/macro_ring_1
execute if score $heldByTeam maze_main_anchor_info matches 0 if score $itemTakeSuccess maze_main_anchor_info matches 1 if score @s maze_main_anchor_room_id matches 200.. run execute as @a[tag=temp_room_initiatedBy] at @s run function maze:get_objective/room/macro_ring_out

# Cleanup
tag @a remove temp_room_initiatedBy