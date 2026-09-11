


give @s snowball{toolNo:1,toolItem:1,display:{Name:'[{"text":"+5票","italic":false}]',Lore:['[{"text":"使用后立刻获得5票。","italic":false,"color":"gold"}]']}} 1
tellraw @s ["§e[§r獍§e] ","§6你获得了","§f+5票","§6。"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," received §eSMALL_INSTANT_BONUS"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

title @s times 0 20 20
title @s title ""
title @s subtitle ["§e[§r獍§e] ","§6你获得了","§f+5票","§6。"]
