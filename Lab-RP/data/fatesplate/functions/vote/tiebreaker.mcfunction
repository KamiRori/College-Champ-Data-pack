tag @e[type=area_effect_cloud,tag=topvote,limit=1,sort=random] add chosen
kill @e[type=area_effect_cloud,tag=topvote,tag=!chosen]
schedule clear fatesplate:player
schedule clear fatesplate:vote/cycle
function fatesplate:vote/displayvotes


execute run execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2
execute run title @a times 0 80 20
execute run title @a subtitle ["",{"text": "即将传送……","color":"gold"}]
function master:timer/fatesplate/8s
schedule function fatesplate:transferfx 6s
schedule function fatesplate:vote/cleanup 155t

execute run team modify placeholder_5 suffix ""
execute run team modify placeholder_5 prefix ["",{"text": "传送到游戏: ","bold": true,"color":"red"}]

execute if entity @e[type=area_effect_cloud,tag=topvote,tag=1] run function fatesplate:choosegame/sector/1
execute if entity @e[type=area_effect_cloud,tag=topvote,tag=2] run function fatesplate:choosegame/sector/2
execute if entity @e[type=area_effect_cloud,tag=topvote,tag=3] run function fatesplate:choosegame/sector/3
execute if entity @e[type=area_effect_cloud,tag=topvote,tag=4] run function fatesplate:choosegame/sector/4
execute if entity @e[type=area_effect_cloud,tag=topvote,tag=5] run function fatesplate:choosegame/sector/5
execute if entity @e[type=area_effect_cloud,tag=topvote,tag=6] run function fatesplate:choosegame/sector/6
execute if entity @e[type=area_effect_cloud,tag=topvote,tag=7] run function fatesplate:choosegame/sector/7
execute if entity @e[type=area_effect_cloud,tag=topvote,tag=8] run function fatesplate:choosegame/sector/8
