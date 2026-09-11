
tellraw @a ["回合 ",{"score":{"name": "round","objective": "tagrush_game"}},"/",{"score":{"name": "matches","objective": "tagrush_game"}}]
execute if score redwin tagrush_cache matches 1 run tellraw @a ["",{"text": ""},{"text": "   红队","color":"red","bold":true},{"text": " vs. ","color":"white"},{"text": "粉队","color":"gray","bold":false}]
execute if score pinkwin tagrush_cache matches 1 run tellraw @a ["",{"text": "  红队","color":"gray","bold":false},{"text": " vs. ","color":"white"},{"text": "粉队","color":"light_purple","bold":true}]
execute if score redwin tagrush_cache matches 0 if score pinkwin tagrush_cache matches 0 run tellraw @a ["",{"text": "   红队","color":"gray"},{"text": " vs. ","color":"white"},{"text": "粉队","color": "gray"}]

execute if score bluewin tagrush_cache matches 1 run tellraw @a ["",{"text": ""},{"text": "   蓝队","color":"blue","bold":true},{"text": " vs. ","color":"white"},{"text": "青队","color":"gray","bold":false}]
execute if score cyanwin tagrush_cache matches 1 run tellraw @a ["",{"text": "  蓝队","color":"gray","bold":false},{"text": " vs. ","color":"white"},{"text": "青队","color":"dark_aqua","bold":true}]
execute if score bluewin tagrush_cache matches 0 if score cyanwin tagrush_cache matches 0 run tellraw @a ["",{"text": "   蓝队","color":"gray"},{"text": " vs. ","color":"white"},{"text": "青队","color": "gray"}]

execute if score greenwin tagrush_cache matches 1 run tellraw @a ["",{"text": ""},{"text": "   绿队","color":"green","bold":true},{"text": " vs. ","color":"white"},{"text": "紫队","color":"gray","bold":false}]
execute if score purplewin tagrush_cache matches 1 run tellraw @a ["",{"text": "  绿队","color":"gray","bold":false},{"text": " vs. ","color":"white"},{"text": "紫队","color":"dark_purple","bold":true}]
execute if score greenwin tagrush_cache matches 0 if score purplewin tagrush_cache matches 0 run tellraw @a ["",{"text": "   绿队","color":"gray"},{"text": " vs. ","color":"white"},{"text": "紫队","color": "gray"}]

execute if score yellowwin tagrush_cache matches 1 run tellraw @a ["",{"text": ""},{"text": "   黄队","color":"yellow","bold":true},{"text": " vs. ","color":"white"},{"text": "橙队","color":"gray","bold":false}]
execute if score orangewin tagrush_cache matches 1 run tellraw @a ["",{"text": "  黄队","color":"gray","bold":false},{"text": " vs. ","color":"white"},{"text": "橙队","color":"gold","bold":true}]
execute if score yellowwin tagrush_cache matches 0 if score orangewin tagrush_cache matches 0 run tellraw @a ["",{"text": "   黄队","color":"gray"},{"text": " vs. ","color":"white"},{"text": "橙队","color": "gray"}]
tellraw @a ""

scoreboard players set redwin tagrush_cache 0
scoreboard players set bluewin tagrush_cache 0
scoreboard players set greenwin tagrush_cache 0
scoreboard players set yellowwin tagrush_cache 0
scoreboard players set cyanwin tagrush_cache 0
scoreboard players set pinkwin tagrush_cache 0
scoreboard players set orangewin tagrush_cache 0
scoreboard players set purplewin tagrush_cache 0