

scoreboard players set phase tourney_stats 5
# If there's only one choice, the game is chosen immediately.
# The following 8 are the first revealed games
execute if score targets dd_vote matches 1 run execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2
execute if score targets dd_vote matches 1 run title @a times 0 80 20
execute if score targets dd_vote matches 1 run title @a subtitle ["",{"text": "即将传送……","color":"gold"}]
execute if score targets dd_vote matches 1 run function master:timer/fatesplate/8s
execute if score targets dd_vote matches 1 run schedule function fatesplate:transferfx 6s
execute if score targets dd_vote matches 1 run schedule function fatesplate:vote/cleanup 155t
execute if score targets dd_vote matches 1 run function fatesplate:vote/displayvotes
execute if score targets dd_vote matches 1 run team modify placeholder_5 suffix ""
execute if score targets dd_vote matches 1 run team modify placeholder_5 prefix ["",{"text": "传送到游戏: ","bold": true,"color":"red"}]


execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=1] run function fatesplate:choosegame/sector/1
execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=2] run function fatesplate:choosegame/sector/2
execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=3] run function fatesplate:choosegame/sector/3
execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=4] run function fatesplate:choosegame/sector/4
execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=5] run function fatesplate:choosegame/sector/5
execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=6] run function fatesplate:choosegame/sector/6
execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=7] run function fatesplate:choosegame/sector/7
execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=8] run function fatesplate:choosegame/sector/8

# Tie Breaker
execute if score targets dd_vote matches 2.. run tellraw @a ["§e[§r礤§e] ","出现同票，即将选择一个随机的游戏……"]
execute if score targets dd_vote matches 2.. run schedule function fatesplate:vote/tiebreaker 2s
execute if score targets dd_vote matches 2.. as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.2

schedule clear fatesplate:vote/cycle
function utils:no_drop_stop
#function fatesplate:vote/tiesector