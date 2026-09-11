
schedule clear fatesplate:first/sfx

# execute as @a at @s run playsound sound.game_revealed record @s


function fatesplate:block_display/8
title @a times 0 40 10
title @a title ""
title @a subtitle ["",{"selector":"@e[type=marker,tag=fatesanchor,tag=8,limit=1]"}]

tellraw @a ["","§e[§r礤§e] ",{"selector":"@e[type=marker,tag=fatesanchor,tag=8,limit=1]"},"!"]

tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7FIRST_PLATE §f-> PREPARING_VOTE"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
