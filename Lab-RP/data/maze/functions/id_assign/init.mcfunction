
scoreboard objectives remove maze_pid
scoreboard objectives add maze_pid dummy
scoreboard players set $step maze_pid 0
scoreboard players set @a maze_pid -1
function maze:id_assign/loop