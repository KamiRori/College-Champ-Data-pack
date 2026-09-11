
title @a times 0 80 20
title @a title "Parkour Tag"
title @a subtitle "§6即将传送……"
execute unless score tagrush_gameswitch event_config matches 1 run tellraw @a ["","§e[§r礤§e] ","Parkour Tag!"]

execute unless score tagrush_gameswitch event_config matches 1 run schedule function master:parkourtag 8s

execute if score tagrush_gameswitch event_config matches 1 run title @a times 0 80 20
execute if score tagrush_gameswitch event_config matches 1 run title @a title "Parkour Tag....?"
execute if score tagrush_gameswitch event_config matches 1 run title @a subtitle "§6即将传送……"
execute if score tagrush_gameswitch event_config matches 1 run tellraw @a ["","§e[§r礤§e] ","§k----------"]

execute if score tagrush_gameswitch event_config matches 1 run schedule function master:tagrush 8s

tellraw @a[tag=_transcript] ["  §bTranscript >> §6Game Selected: §fPARKOUR_TAG"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
