



# Distribution
tellraw @a ["§b[§r礤§b] 小道具已投放！"]

# last place
execute if score lastPlaceTeam tourney_stats matches 1 run tag @a[team=red] add receive_tools
execute if score lastPlaceTeam tourney_stats matches 2 run tag @a[team=blue] add receive_tools
execute if score lastPlaceTeam tourney_stats matches 3 run tag @a[team=green] add receive_tools
execute if score lastPlaceTeam tourney_stats matches 4 run tag @a[team=yellow] add receive_tools
execute if score lastPlaceTeam tourney_stats matches 5 run tag @a[team=cyan] add receive_tools
execute if score lastPlaceTeam tourney_stats matches 6 run tag @a[team=pink] add receive_tools
execute if score lastPlaceTeam tourney_stats matches 7 run tag @a[team=orange] add receive_tools
execute if score lastPlaceTeam tourney_stats matches 8 run tag @a[team=purple] add receive_tools

# 再选8个玩家
execute as @a[sort=random,team=!spec,limit=8,tag=!receive_tools] run tag @s add receive_tools

execute as @a[tag=receive_tools] run function fatesplate:tools/get_random_tool

tag @a remove receive_tools
# tools logic
function fatesplate:tools/init