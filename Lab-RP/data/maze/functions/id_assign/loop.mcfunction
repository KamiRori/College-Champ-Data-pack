
scoreboard players add $step maze_pid 1
execute as @r[team=!spec] run scoreboard players operation @s maze_pid = $step maze_pid

execute if entity @a[team=!spec,scores={maze_pid=-1}] run function maze:id_assign/loop