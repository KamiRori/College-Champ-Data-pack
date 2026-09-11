

# Update to last held team.
$scoreboard players operation $(roomId) maze_room_last_held_by = $(roomId) maze_room_capture

# Update output value
$execute if score $(roomId) maze_room_last_held_by matches 1 run function maze:crystal/refresh_output/red
$execute if score $(roomId) maze_room_last_held_by matches 2 run function maze:crystal/refresh_output/blue
$execute if score $(roomId) maze_room_last_held_by matches 3 run function maze:crystal/refresh_output/green
$execute if score $(roomId) maze_room_last_held_by matches 4 run function maze:crystal/refresh_output/yellow
$execute if score $(roomId) maze_room_last_held_by matches 5 run function maze:crystal/refresh_output/cyan
$execute if score $(roomId) maze_room_last_held_by matches 6 run function maze:crystal/refresh_output/pink
$execute if score $(roomId) maze_room_last_held_by matches 7 run function maze:crystal/refresh_output/orange
$execute if score $(roomId) maze_room_last_held_by matches 8 run function maze:crystal/refresh_output/purple

# Writes new state
$scoreboard players operation $(roomId) maze_room_capture = $newState maze_room_capture

$execute if score $(roomId) maze_room_capture matches 1 run function maze:crystal/refresh_output/red
$execute if score $(roomId) maze_room_capture matches 2 run function maze:crystal/refresh_output/blue
$execute if score $(roomId) maze_room_capture matches 3 run function maze:crystal/refresh_output/green
$execute if score $(roomId) maze_room_capture matches 4 run function maze:crystal/refresh_output/yellow
$execute if score $(roomId) maze_room_capture matches 5 run function maze:crystal/refresh_output/cyan
$execute if score $(roomId) maze_room_capture matches 6 run function maze:crystal/refresh_output/pink
$execute if score $(roomId) maze_room_capture matches 7 run function maze:crystal/refresh_output/orange
$execute if score $(roomId) maze_room_capture matches 8 run function maze:crystal/refresh_output/purple

# Notify
# SPEC
$execute if score $(roomId) maze_room_capture matches 1 run tellraw @a[team=spec] ["§7[§r褎§7] ",{"translate":"team.red"},"§7已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "red","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "red","objective": "maze_team_room_held"}},"§7间)"]
$execute if score $(roomId) maze_room_capture matches 2 run tellraw @a[team=spec] ["§7[§r褎§7] ",{"translate":"team.blue"},"§7已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "blue","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "blue","objective": "maze_team_room_held"}},"§7间)"]
$execute if score $(roomId) maze_room_capture matches 3 run tellraw @a[team=spec] ["§7[§r褎§7] ",{"translate":"team.green"},"§7已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "green","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "green","objective": "maze_team_room_held"}},"§7间)"]
$execute if score $(roomId) maze_room_capture matches 4 run tellraw @a[team=spec] ["§7[§r褎§7] ",{"translate":"team.yellow"},"§7已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "yellow","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "yellow","objective": "maze_team_room_held"}},"§7间)"]
$execute if score $(roomId) maze_room_capture matches 5 run tellraw @a[team=spec] ["§7[§r褎§7] ",{"translate":"team.cyan"},"§7已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "cyan","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "cyan","objective": "maze_team_room_held"}},"§7间)"]
$execute if score $(roomId) maze_room_capture matches 6 run tellraw @a[team=spec] ["§7[§r褎§7] ",{"translate":"team.pink"},"§7已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "pink","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "pink","objective": "maze_team_room_held"}},"§7间)"]
$execute if score $(roomId) maze_room_capture matches 7 run tellraw @a[team=spec] ["§7[§r褎§7] ",{"translate":"team.orange"},"§7已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "orange","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "orange","objective": "maze_team_room_held"}},"§7间)"]
$execute if score $(roomId) maze_room_capture matches 8 run tellraw @a[team=spec] ["§7[§r褎§7] ",{"translate":"team.purple"},"§7已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "purple","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "red","objective": "maze_team_room_held"}},"§7间)"]
# TEAM
$execute if score $(roomId) maze_room_capture matches 1 run tellraw @a[team=red] ["§7[§r褎§7] ","§7本队已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "red","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "red","objective": "maze_team_room_held"}},"§7间)"]
$execute if score $(roomId) maze_room_capture matches 2 run tellraw @a[team=blue] ["§7[§r褎§7] ","§7本队已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "blue","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "blue","objective": "maze_team_room_held"}},"§7间)"]
$execute if score $(roomId) maze_room_capture matches 3 run tellraw @a[team=green] ["§7[§r褎§7] ","§7本队已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "green","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "green","objective": "maze_team_room_held"}},"§7间)"]
$execute if score $(roomId) maze_room_capture matches 4 run tellraw @a[team=yellow] ["§7[§r褎§7] ","§7本队已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "yellow","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "yellow","objective": "maze_team_room_held"}},"§7间)"]
$execute if score $(roomId) maze_room_capture matches 5 run tellraw @a[team=cyan] ["§7[§r褎§7] ","§7本队已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "cyan","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "cyan","objective": "maze_team_room_held"}},"§7间)"]
$execute if score $(roomId) maze_room_capture matches 6 run tellraw @a[team=pink] ["§7[§r褎§7] ","§7本队已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "pink","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "pink","objective": "maze_team_room_held"}},"§7间)"]
$execute if score $(roomId) maze_room_capture matches 7 run tellraw @a[team=orange] ["§7[§r褎§7] ","§7本队已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "orange","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "orange","objective": "maze_team_room_held"}},"§7间)"]
$execute if score $(roomId) maze_room_capture matches 8 run tellraw @a[team=purple] ["§7[§r褎§7] ","§7本队已控制编号为","§a$(roomId)","§7的房间。","§7(",{"score":{"name": "purple","objective": "maze_team_crystal_output"}},"§r倐§d/s§7) ","§7(",{"score":{"name": "red","objective": "maze_team_room_held"}},"§7间)"]

# Clears attempt count
$scoreboard players set $(roomId) maze_room_attempt_count_red 0
$scoreboard players set $(roomId) maze_room_attempt_count_blue 0
$scoreboard players set $(roomId) maze_room_attempt_count_green 0
$scoreboard players set $(roomId) maze_room_attempt_count_yellow 0
$scoreboard players set $(roomId) maze_room_attempt_count_cyan 0
$scoreboard players set $(roomId) maze_room_attempt_count_pink 0
$scoreboard players set $(roomId) maze_room_attempt_count_orange 0
$scoreboard players set $(roomId) maze_room_attempt_count_purple 0