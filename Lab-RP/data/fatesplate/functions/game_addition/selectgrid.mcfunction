

# A Grid with game that's chosen will be selected.
# Up until now there will be 5 games already selected.
# So the maxmium tries for this function is 4


scoreboard players operation extraGameGrid tourney_stats = last_sector tourney_stats
scoreboard players add games_added tourney_stats 1

execute if score games_added tourney_stats matches 1 run scoreboard players operation game_to_add tourney_stats = add_1 tourney_preset
execute if score games_added tourney_stats matches 2 run scoreboard players operation game_to_add tourney_stats = add_2 tourney_preset
execute if score games_added tourney_stats matches 3 run scoreboard players operation game_to_add tourney_stats = add_3 tourney_preset
execute if score games_added tourney_stats matches 4 run scoreboard players operation game_to_add tourney_stats = add_4 tourney_preset
execute if score games_added tourney_stats matches 5 run scoreboard players operation game_to_add tourney_stats = add_5 tourney_preset
execute if score games_added tourney_stats matches 6 run scoreboard players operation game_to_add tourney_stats = add_6 tourney_preset
execute if score games_added tourney_stats matches 7 run scoreboard players operation game_to_add tourney_stats = add_7 tourney_preset
execute if score games_added tourney_stats matches 8 run scoreboard players operation game_to_add tourney_stats = add_8 tourney_preset

function fatesplate:first/sfx

execute if score extraGameGrid tourney_stats matches 1 run function fatesplate:structure/plate/red
execute if score extraGameGrid tourney_stats matches 2 run function fatesplate:structure/plate/blue
execute if score extraGameGrid tourney_stats matches 3 run function fatesplate:structure/plate/purple
execute if score extraGameGrid tourney_stats matches 4 run function fatesplate:structure/plate/orange
execute if score extraGameGrid tourney_stats matches 5 run function fatesplate:structure/plate/yellow
execute if score extraGameGrid tourney_stats matches 6 run function fatesplate:structure/plate/green
execute if score extraGameGrid tourney_stats matches 7 run function fatesplate:structure/plate/cyan
execute if score extraGameGrid tourney_stats matches 8 run function fatesplate:structure/plate/pink