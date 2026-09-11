
# Judge Kill One By One
tag @a[scores={ws_death=1..}] add queue_kill_judge

function weaponswap:kill/queue_judge

# Team Elimination

execute as @p[team=red,scores={ws_death=1..}] unless entity @a[team=red,tag=!ws_eliminated] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "红队","color":"red"},{"text": "已被团灭！"}]
execute as @p[team=blue,scores={ws_death=1..}] unless entity @a[team=blue,tag=!ws_eliminated] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "蓝队","color":"blue"},{"text": "已被团灭！"}]
execute as @p[team=green,scores={ws_death=1..}] unless entity @a[team=green,tag=!ws_eliminated] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "绿队","color":"green"},{"text": "已被团灭！"}]
execute as @p[team=yellow,scores={ws_death=1..}] unless entity @a[team=yellow,tag=!ws_eliminated] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "黄队","color":"yellow"},{"text": "已被团灭！"}]
execute as @p[team=cyan,scores={ws_death=1..}] unless entity @a[team=cyan,tag=!ws_eliminated] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "青队","color":"dark_aqua"},{"text": "已被团灭！"}]
execute as @p[team=orange,scores={ws_death=1..}] unless entity @a[team=orange,tag=!ws_eliminated] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "橙队","color":"gold"},{"text": "已被团灭！"}]
execute as @p[team=purple,scores={ws_death=1..}] unless entity @a[team=purple,tag=!ws_eliminated] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "紫队","color":"dark_purple"},{"text": "已被团灭！"}]
execute as @p[team=pink,scores={ws_death=1..}] unless entity @a[team=pink,tag=!ws_eliminated] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "粉队","color":"light_purple"},{"text": "已被团灭！"}]

execute as @p[team=red,scores={ws_death=1..}] unless entity @a[team=red,tag=!ws_eliminated] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=blue,scores={ws_death=1..}] unless entity @a[team=blue,tag=!ws_eliminated] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=green,scores={ws_death=1..}] unless entity @a[team=green,tag=!ws_eliminated] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=yellow,scores={ws_death=1..}] unless entity @a[team=yellow,tag=!ws_eliminated] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=cyan,scores={ws_death=1..}] unless entity @a[team=cyan,tag=!ws_eliminated] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=orange,scores={ws_death=1..}] unless entity @a[team=orange,tag=!ws_eliminated] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=purple,scores={ws_death=1..}] unless entity @a[team=purple,tag=!ws_eliminated] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=pink,scores={ws_death=1..}] unless entity @a[team=pink,tag=!ws_eliminated] run execute as @a at @s run playsound sound.team_eliminated record @s

execute as @p[team=red,scores={ws_death=1..}] unless entity @a[team=red,tag=!ws_eliminated] run scoreboard players operation red ws_team_placement = teams_left ws_game
execute as @p[team=blue,scores={ws_death=1..}] unless entity @a[team=blue,tag=!ws_eliminated] run scoreboard players operation blue ws_team_placement = teams_left ws_game
execute as @p[team=green,scores={ws_death=1..}] unless entity @a[team=green,tag=!ws_eliminated] run scoreboard players operation green ws_team_placement = teams_left ws_game
execute as @p[team=yellow,scores={ws_death=1..}] unless entity @a[team=yellow,tag=!ws_eliminated] run scoreboard players operation yellow ws_team_placement = teams_left ws_game
execute as @p[team=cyan,scores={ws_death=1..}] unless entity @a[team=cyan,tag=!ws_eliminated] run scoreboard players operation cyan ws_team_placement = teams_left ws_game
execute as @p[team=pink,scores={ws_death=1..}] unless entity @a[team=pink,tag=!ws_eliminated] run scoreboard players operation pink ws_team_placement = teams_left ws_game
execute as @p[team=orange,scores={ws_death=1..}] unless entity @a[team=orange,tag=!ws_eliminated] run scoreboard players operation orange ws_team_placement = teams_left ws_game
execute as @p[team=purple,scores={ws_death=1..}] unless entity @a[team=purple,tag=!ws_eliminated] run scoreboard players operation purple ws_team_placement = teams_left ws_game

execute as @p[team=red,scores={ws_death=1..}] unless entity @a[team=red,tag=!ws_eliminated] run scoreboard players remove teams_left ws_game 1
execute as @p[team=blue,scores={ws_death=1..}] unless entity @a[team=blue,tag=!ws_eliminated] run scoreboard players remove teams_left ws_game 1
execute as @p[team=green,scores={ws_death=1..}] unless entity @a[team=green,tag=!ws_eliminated] run scoreboard players remove teams_left ws_game 1
execute as @p[team=yellow,scores={ws_death=1..}] unless entity @a[team=yellow,tag=!ws_eliminated] run scoreboard players remove teams_left ws_game 1
execute as @p[team=cyan,scores={ws_death=1..}] unless entity @a[team=cyan,tag=!ws_eliminated] run scoreboard players remove teams_left ws_game 1
execute as @p[team=pink,scores={ws_death=1..}] unless entity @a[team=pink,tag=!ws_eliminated] run scoreboard players remove teams_left ws_game 1
execute as @p[team=orange,scores={ws_death=1..}] unless entity @a[team=orange,tag=!ws_eliminated] run scoreboard players remove teams_left ws_game 1
execute as @p[team=purple,scores={ws_death=1..}] unless entity @a[team=purple,tag=!ws_eliminated] run scoreboard players remove teams_left ws_game 1

# Cleanup
tag @a remove temp_haskiller
tag @a remove ws_nokiller
tag @a remove suffocation
tag @a remove logout
tag @a remove void
scoreboard players set @a ws_kills 0
scoreboard players set @a ws_death 0
scoreboard players set @a ws_logout 0

scoreboard players set @a redKills 0
scoreboard players set @a blueKills 0
scoreboard players set @a greenKills 0
scoreboard players set @a yellowKills 0
scoreboard players set @a pinkKills 0
scoreboard players set @a purpleKills 0
scoreboard players set @a cyanKills 0
scoreboard players set @a orangeKills 0

scoreboard players set @a killedByRed 0
scoreboard players set @a killedByBlue 0
scoreboard players set @a killedByGreen 0
scoreboard players set @a killedByYellow 0
scoreboard players set @a killedByPink 0
scoreboard players set @a killedByPurple 0
scoreboard players set @a killedByCyan 0
scoreboard players set @a killedByOrange 0
advancement revoke @a from utils:killed