
# Take CD
$scoreboard players operation $takeCD maze_main_anchor_info = $(roomId) maze_free_take_cd

# Held by which team
$scoreboard players operation $heldByTeam maze_main_anchor_info = $(roomId) maze_room_capture

# Pressed Player PID
scoreboard players operation $presserPid maze_main_anchor_info = @a[tag=temp_room_initiatedBy,limit=1] maze_pid
scoreboard players operation $presserTeam maze_main_anchor_info = @a[tag=temp_room_initiatedBy,limit=1] maze_tid
