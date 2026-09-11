
tag @s remove ar_wildcard_lapSpdBonus

execute store result storage ar:rng newSpd float 0.001 run scoreboard players remove @s ar_wildcard_movespeed 20
tellraw @s ["§b[§r莤§b] §b你的速度变更为",{"score":{"name": "@s","objective": "ar_wildcard_movespeed"},"color": "#66CCFF"},{"text": "%","color": "#66CCFF"},""]
function acerace4:modifiers/wildcard/movespeed_modify/update with storage ar:rng