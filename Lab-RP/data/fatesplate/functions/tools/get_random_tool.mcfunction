
# instant small/  instant large /  hutao /small steal/ big steal /TNT /Forceful

scoreboard objectives add fatesplate_toolrand dummy
execute store result score @s fatesplate_toolrand run random value 1..100

execute if score @s fatesplate_toolrand matches 1..20 run function fatesplate:tools/tool_earn/1
execute if score @s fatesplate_toolrand matches 21..30 run function fatesplate:tools/tool_earn/2
execute if score @s fatesplate_toolrand matches 31..45 run function fatesplate:tools/tool_earn/3
execute if score @s fatesplate_toolrand matches 46..65 run function fatesplate:tools/tool_earn/4
execute if score @s fatesplate_toolrand matches 66..75 run function fatesplate:tools/tool_earn/5
execute if score @s fatesplate_toolrand matches 76..90 run function fatesplate:tools/tool_earn/6
execute if score @s fatesplate_toolrand matches 91..100 run function fatesplate:tools/tool_earn/7