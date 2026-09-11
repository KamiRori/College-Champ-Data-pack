


give @s snowball{toolNo:5,toolItem:1,display:{Name:'[{"text":"神偷","italic":false}]',Lore:['[{"text":"使用后从3格内的玩家各偷取最多2票。","italic":false,"color":"gold"}]']}} 1
tellraw @s ["§e[§r獍§e] ","§6你获得了","§f神偷","§6。"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," received §eBIG_STEAL"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

title @s times 0 20 20
title @s title ""
title @s subtitle ["§e[§r獍§e] ","§6你获得了","§f神偷","§6。"]