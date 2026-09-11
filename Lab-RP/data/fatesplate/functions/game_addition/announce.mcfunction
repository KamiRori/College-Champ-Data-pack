
schedule clear fatesplate:first/sfx


execute if score extraGameGrid tourney_stats matches 1 run scoreboard players operation 1 tourney_games = game_to_add tourney_stats
execute if score extraGameGrid tourney_stats matches 2 run scoreboard players operation 2 tourney_games = game_to_add tourney_stats
execute if score extraGameGrid tourney_stats matches 3 run scoreboard players operation 3 tourney_games = game_to_add tourney_stats
execute if score extraGameGrid tourney_stats matches 4 run scoreboard players operation 4 tourney_games = game_to_add tourney_stats
execute if score extraGameGrid tourney_stats matches 5 run scoreboard players operation 5 tourney_games = game_to_add tourney_stats
execute if score extraGameGrid tourney_stats matches 6 run scoreboard players operation 6 tourney_games = game_to_add tourney_stats
execute if score extraGameGrid tourney_stats matches 7 run scoreboard players operation 7 tourney_games = game_to_add tourney_stats
execute if score extraGameGrid tourney_stats matches 8 run scoreboard players operation 8 tourney_games = game_to_add tourney_stats

execute if score extraGameGrid tourney_stats matches 1 run function fatesplate:block_display/1
execute if score extraGameGrid tourney_stats matches 2 run function fatesplate:block_display/2
execute if score extraGameGrid tourney_stats matches 3 run function fatesplate:block_display/3
execute if score extraGameGrid tourney_stats matches 4 run function fatesplate:block_display/4
execute if score extraGameGrid tourney_stats matches 5 run function fatesplate:block_display/5
execute if score extraGameGrid tourney_stats matches 6 run function fatesplate:block_display/6
execute if score extraGameGrid tourney_stats matches 7 run function fatesplate:block_display/7
execute if score extraGameGrid tourney_stats matches 8 run function fatesplate:block_display/8

function fatesplate:first/setname
title @a times 0 40 10
title @a title ""
execute if score extraGameGrid tourney_stats matches 1 run title @a subtitle ["",{"selector":"@e[type=marker,tag=fatesanchor,tag=1,limit=1]"}]
execute if score extraGameGrid tourney_stats matches 2 run title @a subtitle ["",{"selector":"@e[type=marker,tag=fatesanchor,tag=2,limit=1]"}]
execute if score extraGameGrid tourney_stats matches 3 run title @a subtitle ["",{"selector":"@e[type=marker,tag=fatesanchor,tag=3,limit=1]"}]
execute if score extraGameGrid tourney_stats matches 4 run title @a subtitle ["",{"selector":"@e[type=marker,tag=fatesanchor,tag=4,limit=1]"}]
execute if score extraGameGrid tourney_stats matches 5 run title @a subtitle ["",{"selector":"@e[type=marker,tag=fatesanchor,tag=5,limit=1]"}]
execute if score extraGameGrid tourney_stats matches 6 run title @a subtitle ["",{"selector":"@e[type=marker,tag=fatesanchor,tag=6,limit=1]"}]
execute if score extraGameGrid tourney_stats matches 7 run title @a subtitle ["",{"selector":"@e[type=marker,tag=fatesanchor,tag=7,limit=1]"}]
execute if score extraGameGrid tourney_stats matches 8 run title @a subtitle ["",{"selector":"@e[type=marker,tag=fatesanchor,tag=8,limit=1]"}]


execute if score extraGameGrid tourney_stats matches 1 run tellraw @a ["","§e[§r礤§e] ",{"selector":"@e[type=marker,tag=fatesanchor,tag=1,limit=1]"},"!"]
execute if score extraGameGrid tourney_stats matches 2 run tellraw @a ["","§e[§r礤§e] ",{"selector":"@e[type=marker,tag=fatesanchor,tag=2,limit=1]"},"!"]
execute if score extraGameGrid tourney_stats matches 3 run tellraw @a ["","§e[§r礤§e] ",{"selector":"@e[type=marker,tag=fatesanchor,tag=3,limit=1]"},"!"]
execute if score extraGameGrid tourney_stats matches 4 run tellraw @a ["","§e[§r礤§e] ",{"selector":"@e[type=marker,tag=fatesanchor,tag=4,limit=1]"},"!"]
execute if score extraGameGrid tourney_stats matches 5 run tellraw @a ["","§e[§r礤§e] ",{"selector":"@e[type=marker,tag=fatesanchor,tag=5,limit=1]"},"!"]
execute if score extraGameGrid tourney_stats matches 6 run tellraw @a ["","§e[§r礤§e] ",{"selector":"@e[type=marker,tag=fatesanchor,tag=6,limit=1]"},"!"]
execute if score extraGameGrid tourney_stats matches 7 run tellraw @a ["","§e[§r礤§e] ",{"selector":"@e[type=marker,tag=fatesanchor,tag=7,limit=1]"},"!"]
execute if score extraGameGrid tourney_stats matches 8 run tellraw @a ["","§e[§r礤§e] ",{"selector":"@e[type=marker,tag=fatesanchor,tag=8,limit=1]"},"!"]
