
# Spectator Notify.
$tellraw @a[team=spec] ["§7[§r褎§7] ",{"selector":"@a[tag=temp_challenger]"},"§7进攻房间编号§6$(roomId)§7失败！"," §8(§3Search§8)"]
# Notify the team holding the room, and apply buffed effects.
$execute if score $(roomId) maze_room_capture matches 1 run tellraw @a[team=red] ["§a[§r褎§a] ","§a本队所持有的房间成功防守了一次来自",{"selector":"@a[tag=temp_challenger]"},"§a的进攻！"]
$execute if score $(roomId) maze_room_capture matches 1 run function maze:room_defended/red
$execute if score $(roomId) maze_room_capture matches 2 run tellraw @a[team=blue] ["§a[§r褎§a] ","§a本队所持有的房间成功防守了一次来自",{"selector":"@a[tag=temp_challenger]"},"§a的进攻！"]
$execute if score $(roomId) maze_room_capture matches 2 run function maze:room_defended/blue
$execute if score $(roomId) maze_room_capture matches 3 run tellraw @a[team=green] ["§a[§r褎§a] ","§a本队所持有的房间成功防守了一次来自",{"selector":"@a[tag=temp_challenger]"},"§a的进攻！"]
$execute if score $(roomId) maze_room_capture matches 3 run function maze:room_defended/green
$execute if score $(roomId) maze_room_capture matches 4 run tellraw @a[team=yellow] ["§a[§r褎§a] ","§a本队所持有的房间成功防守了一次来自",{"selector":"@a[tag=temp_challenger]"},"§a的进攻！"]
$execute if score $(roomId) maze_room_capture matches 4 run function maze:room_defended/yellow
$execute if score $(roomId) maze_room_capture matches 5 run tellraw @a[team=cyan] ["§a[§r褎§a] ","§a本队所持有的房间成功防守了一次来自",{"selector":"@a[tag=temp_challenger]"},"§a的进攻！"]
$execute if score $(roomId) maze_room_capture matches 5 run function maze:room_defended/cyan
$execute if score $(roomId) maze_room_capture matches 6 run tellraw @a[team=pink] ["§a[§r褎§a] ","§a本队所持有的房间成功防守了一次来自",{"selector":"@a[tag=temp_challenger]"},"§a的进攻！"]
$execute if score $(roomId) maze_room_capture matches 6 run function maze:room_defended/pink
$execute if score $(roomId) maze_room_capture matches 7 run tellraw @a[team=orange] ["§a[§r褎§a] ","§a本队所持有的房间成功防守了一次来自",{"selector":"@a[tag=temp_challenger]"},"§a的进攻！"]
$execute if score $(roomId) maze_room_capture matches 7 run function maze:room_defended/orange
$execute if score $(roomId) maze_room_capture matches 8 run tellraw @a[team=purple] ["§a[§r褎§a] ","§a本队所持有的房间成功防守了一次来自",{"selector":"@a[tag=temp_challenger]"},"§a的进攻！"]
$execute if score $(roomId) maze_room_capture matches 8 run function maze:room_defended/purple

# Challenge Type Specific: clear item
execute as @a[tag=temp_challenger] run function maze:objective/search/clear_objective_item
# Cleanup
tag @s remove state_inuse