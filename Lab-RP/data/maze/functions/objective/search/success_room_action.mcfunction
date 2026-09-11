
# Spectator Notify.
$tellraw @a[team=spec] ["§7[§r褎§7] ",{"selector":"@a[tag=temp_challenger]"},"§7进攻房间编号§6$(roomId)§a成功！"," §8(§3Search§8)"]
# Notify the team holding the room, and apply buffed efftects if applicable.
$execute if score $(roomId) maze_room_capture matches 1 run tellraw @a[team=red] ["§a[§r褎§a] ","§c本队所持有的一个房间被",{"selector":"@a[tag=temp_challenger]"},"§c完成了挑战！"]
$execute if score $(roomId) maze_room_capture matches 1 run function maze:room_lost/red
$execute if score $(roomId) maze_room_capture matches 2 run tellraw @a[team=blue] ["§a[§r褎§a] ","§c本队所持有的一个房间被",{"selector":"@a[tag=temp_challenger]"},"§c完成了挑战！"]
$execute if score $(roomId) maze_room_capture matches 2 run function maze:room_lost/blue
$execute if score $(roomId) maze_room_capture matches 3 run tellraw @a[team=green] ["§a[§r褎§a] ","§c本队所持有的一个房间被",{"selector":"@a[tag=temp_challenger]"},"§c完成了挑战！"]
$execute if score $(roomId) maze_room_capture matches 3 run function maze:room_lost/green
$execute if score $(roomId) maze_room_capture matches 4 run tellraw @a[team=yellow] ["§a[§r褎§a] ","§c本队所持有的一个房间被",{"selector":"@a[tag=temp_challenger]"},"§c完成了挑战！"]
$execute if score $(roomId) maze_room_capture matches 4 run function maze:room_lost/yellow
$execute if score $(roomId) maze_room_capture matches 5 run tellraw @a[team=cyan] ["§a[§r褎§a] ","§c本队所持有的一个房间被",{"selector":"@a[tag=temp_challenger]"},"§c完成了挑战！"]
$execute if score $(roomId) maze_room_capture matches 5 run function maze:room_lost/cyan
$execute if score $(roomId) maze_room_capture matches 6 run tellraw @a[team=pink] ["§a[§r褎§a] ","§c本队所持有的一个房间被",{"selector":"@a[tag=temp_challenger]"},"§c完成了挑战！"]
$execute if score $(roomId) maze_room_capture matches 6 run function maze:room_lost/pink
$execute if score $(roomId) maze_room_capture matches 7 run tellraw @a[team=orange] ["§a[§r褎§a] ","§c本队所持有的一个房间被",{"selector":"@a[tag=temp_challenger]"},"§c完成了挑战！"]
$execute if score $(roomId) maze_room_capture matches 7 run function maze:room_lost/orange
$execute if score $(roomId) maze_room_capture matches 8 run tellraw @a[team=purple] ["§a[§r褎§a] ","§c本队所持有的一个房间被",{"selector":"@a[tag=temp_challenger]"},"§c完成了挑战！"]
$execute if score $(roomId) maze_room_capture matches 8 run function maze:room_lost/purple

# Challenge Type Specific: clear item
execute as @a[tag=temp_challenger] run function maze:objective/search/clear_objective_item
# Cleanup
tag @s remove state_inuse