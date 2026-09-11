
scoreboard players add $roomid maze_room_setup 1

summon marker ~ ~ ~ {Tags:["maze_room_main_anchor"]}
execute as @e[type=marker,tag=maze_room_main_anchor,tag=!id_set] run scoreboard players operation @s maze_main_anchor_room_id = $roomid maze_room_setup

tellraw @s ["[§6Dev§f] Summoned a §6Main Room Anchor§f with room id ",{"score":{"name": "$roomid","objective": "maze_room_setup"},"color": "dark_aqua"},"."]


execute as @e[type=marker,tag=maze_room_main_anchor,tag=!id_set] run tag @s add id_set
