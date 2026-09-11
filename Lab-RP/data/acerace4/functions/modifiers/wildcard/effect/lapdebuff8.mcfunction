

tag @s add ar_wildcard_lapSpdDebuff8

execute store result storage ar:rng newSpd float 0.001 run scoreboard players remove @s ar_wildcard_movespeed 8
tellraw @s ["§c[§r莤§c] §c受",{"selector":"@a[tag=ar_temp_caster]"},"道具影响本圈移速降低§e8%，你的速度变更为",{"score":{"name": "@s","objective": "ar_wildcard_movespeed"},"color": "#66CCFF"},{"text": "%","color": "#66CCFF"},""]
function acerace4:modifiers/wildcard/movespeed_modify/update with storage ar:rng