
title @a times 0 80 20
title @a title "Move Royale"
title @a subtitle "§6即将传送……"
tellraw @a ["","§e[§r礤§e] ","Move Royale!"]

schedule function master:moveroyale 8s
tellraw @a[tag=_transcript] ["  §bTranscript >> §6Game Selected: §fMOVE_ROYALE"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
