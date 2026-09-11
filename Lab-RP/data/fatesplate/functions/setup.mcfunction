


kill @e[type=text_display,tag=fatesplate,tag=vote_display]
kill @e[type=item]

function fatesplate:disablegame

# cage
fill 11015 112 11008 11017 112 11006 glass
fill 11006 112 11015 11008 112 11017 glass
fill 10992 112 11015 10994 112 11017 glass
fill 10983 112 11006 10985 112 11008 glass
fill 10983 112 10992 10985 112 10994 glass
fill 10992 112 10983 10994 112 10985 glass
fill 11006 112 10983 11008 112 10985 glass
fill 11015 112 10992 11017 112 10994 glass

# Platform
function fatesplate:structure/plate/allblack
execute if score 1 tourney_games matches 1.. run function fatesplate:structure/plate/red
execute if score 2 tourney_games matches 1.. run function fatesplate:structure/plate/blue
execute if score 3 tourney_games matches 1.. run function fatesplate:structure/plate/purple
execute if score 4 tourney_games matches 1.. run function fatesplate:structure/plate/orange
execute if score 5 tourney_games matches 1.. run function fatesplate:structure/plate/yellow
execute if score 6 tourney_games matches 1.. run function fatesplate:structure/plate/green
execute if score 7 tourney_games matches 1.. run function fatesplate:structure/plate/cyan
execute if score 8 tourney_games matches 1.. run function fatesplate:structure/plate/pink