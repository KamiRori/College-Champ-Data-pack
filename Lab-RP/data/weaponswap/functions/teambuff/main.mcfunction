
# Counts team players left
scoreboard players set red ws_team_alive 0
execute as @a[team=red,tag=!ws_eliminated] run scoreboard players add red ws_team_alive 1
scoreboard players set blue ws_team_alive 0
execute as @a[team=blue,tag=!ws_eliminated] run scoreboard players add blue ws_team_alive 1
scoreboard players set green ws_team_alive 0
execute as @a[team=green,tag=!ws_eliminated] run scoreboard players add green ws_team_alive 1
scoreboard players set yellow ws_team_alive 0
execute as @a[team=yellow,tag=!ws_eliminated] run scoreboard players add yellow ws_team_alive 1
scoreboard players set cyan ws_team_alive 0
execute as @a[team=cyan,tag=!ws_eliminated] run scoreboard players add cyan ws_team_alive 1
scoreboard players set pink ws_team_alive 0
execute as @a[team=pink,tag=!ws_eliminated] run scoreboard players add pink ws_team_alive 1
scoreboard players set orange ws_team_alive 0
execute as @a[team=orange,tag=!ws_eliminated] run scoreboard players add orange ws_team_alive 1
scoreboard players set purple ws_team_alive 0
execute as @a[team=purple,tag=!ws_eliminated] run scoreboard players add purple ws_team_alive 1

execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:teambuff/indiv