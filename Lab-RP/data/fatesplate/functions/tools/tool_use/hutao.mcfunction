tag @a[gamemode=adventure,team=!spec,limit=2,sort=random] add hutaoed

clear @a[tag=hutaoed]
execute as @a[tag=hutaoed] at @s run summon lightning_bolt ~ 0 ~
gamemode spectator @a[tag=hutaoed]

# Chat

execute unless entity @s[tag=hutaoed] run tellraw @a ["","§c[§r礤§c] ",{"selector":"@s"}," §d使用了§r送你一程§d！ 送走了",{"selector":"@a[tag=hutaoed]"},"§d！"]
execute if entity @s[tag=hutaoed] run tellraw @a ["","§c[§r礤§c] ",{"selector":"@s"}," §d使用了§r送你一程§d！ 送走了","§6§l自己","§d！"]
execute as @a at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~


# Cleanup
tag @a remove hutaoed

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," used §eHUTAO"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
