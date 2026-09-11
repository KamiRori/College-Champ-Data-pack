
tag @s remove ar_wildcard_lapSpdDebuff8

execute store result storage ar:rng newSpd float 0.001 run scoreboard players add @s ar_wildcard_movespeed 8
tellraw @s ["§b[§r莤§b] §b负面效果清除，你的速度变更为",{"score":{"name": "@s","objective": "ar_wildcard_movespeed"},"color": "#66CCFF"},{"text": "%","color": "#66CCFF"},""]
function acerace4:modifiers/wildcard/movespeed_modify/update with storage ar:rng