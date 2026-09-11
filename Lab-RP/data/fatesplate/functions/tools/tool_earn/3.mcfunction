


give @s snowball{toolNo:3,toolItem:1,display:{Name:'[{"text":"送你一程","italic":false}]',Lore:['[{"text":"随机送走两个玩家，使其失去投票权\\n可能包括你自己！","italic":false,"color":"gold"}]']}} 1
tellraw @s ["§e[§r獍§e] ","§6你获得了","§f送你一程","§6。"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," received §eHUTAO"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

title @s times 0 20 20
title @s title ""
title @s subtitle ["§e[§r獍§e] ","§6你获得了","§f送你一程","§6。"]