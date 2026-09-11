
# setup
schedule function fatesplate:setup 20t
# 禁止丢弃物品：
function utils:nodropping
# 
function fatesplate:tp

#
execute as @a at @s run playsound minecraft:music.decisiondome voice @s ~ ~ ~ 1
scoreboard players set phase tourney_stats 2

kill @e[type=area_effect_cloud,tag=voteaec]
#

team modify placeholder_5 suffix ""
team modify placeholder_5 prefix ["",{"text": "投票开始: ","bold": true,"color":"red"}]

function fatesplate:disablegame

# 部分计分空间准备
scoreboard objectives add fatesplate_this_y dummy
scoreboard objectives add fatesplate_multi_type dummy

# Normal Config

# Timer Select

execute unless score gamecount tourney_stats matches 5 run function master:timer/fatesplate/20s
execute if score gamecount tourney_stats matches 5 run function master:timer/fatesplate/25s

execute unless score gamecount tourney_stats matches 5 run schedule function fatesplate:multiplier 1s

# ## Add a game on Round 6.
execute if score gamecount tourney_stats matches 5 run schedule function fatesplate:vote/newgame 1s
execute if score gamecount tourney_stats matches 5 run schedule function fatesplate:game_addition/selectgrid 4s
execute if score gamecount tourney_stats matches 5 run schedule function fatesplate:game_addition/announce 6s
execute if score gamecount tourney_stats matches 5 run schedule function fatesplate:multiplier 10s

# Rising Config:
## Add a game on Round 2-7
# execute if score gamecount tourney_stats matches 1..6 run schedule function fatesplate:vote/newgame 1s
# execute if score gamecount tourney_stats matches 1..6 run schedule function fatesplate:game_addition/selectgrid 4s
# execute if score gamecount tourney_stats matches 1..6 run schedule function fatesplate:game_addition/announce 6s

# execute if score gamecount tourney_stats matches 1..6 run schedule function fatesplate:multiplier 10s
# execute if score gamecount tourney_stats matches 7.. run schedule function fatesplate:multiplier 1s

# execute if score gamecount tourney_stats matches 1..6 run schedule function fatesplate:tools/distribute/decide/init 15s
# execute if score gamecount tourney_stats matches 7.. run schedule function fatesplate:tools/distribute/decide/init 5s

# execute if score gamecount tourney_stats matches 1..6 run function master:timer/fatesplate/35s
# execute if score gamecount tourney_stats matches 7.. run function master:timer/fatesplate/20s



# # Chaos Config:

#function master:timer/fatesplate/20s

#schedule function fatesplate:multiplier 1s

#schedule function fatesplate:tools/distribute/decide/init 5s





tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event state: §7LOBBY§f -> PREPARING_VOTE"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]


# 第11届的Remix overrides
#execute if score remix_mode tourney_stats matches 1.. run function fatesplate:vote/remix_override_init

# Chaos Tp, Prevent Conflict
scoreboard players set @a chaos_control_tp_delay -9999