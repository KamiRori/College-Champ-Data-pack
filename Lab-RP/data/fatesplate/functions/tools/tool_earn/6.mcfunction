


give @s snowball{toolNo:6,toolItem:1,display:{Name:'[{"text":"TNT","italic":false}]',Lore:['[{"text":"使用后生成一个TNT，摧毁地形。","italic":false,"color":"gold"}]']}} 1
tellraw @s ["§e[§r獍§e] ","§6你获得了","§fTNT","§6。"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," received §eTNT"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

title @s times 0 20 20
title @s title ""
title @s subtitle ["§e[§r獍§e] ","§6你获得了","§fTNT","§6。"]