
# 2nd Mode
execute if block 201003 2 201009 diamond_block unless score 9 moveroyale_roundtype matches 1..10 run tellraw @a ["§b[§r峟§b] ","§b第",{"text": "9","color": "#E3E3E3"},"§b回合的模式为","§6跑酷§b！"]
execute if block 201003 2 201009 diamond_block unless score 9 moveroyale_roundtype matches 1..10 run scoreboard players set 9 moveroyale_roundtype 1

execute if block 201001 2 201009 diamond_block unless score 9 moveroyale_roundtype matches 1..10 run tellraw @a ["§b[§r峟§b] ","§b第",{"text": "9","color": "#E3E3E3"},"§b回合的模式为","§6冰船§b！"]
execute if block 201001 2 201009 diamond_block unless score 9 moveroyale_roundtype matches 1..10 run scoreboard players set 9 moveroyale_roundtype 2

execute if block 200999 2 201009 diamond_block unless score 9 moveroyale_roundtype matches 1..10 run tellraw @a ["§b[§r峟§b] ","§b第",{"text": "9","color": "#E3E3E3"},"§b回合的模式为","§6三叉戟激流§b！"]
execute if block 200999 2 201009 diamond_block unless score 9 moveroyale_roundtype matches 1..10 run scoreboard players set 9 moveroyale_roundtype 3

execute if block 200997 2 201009 diamond_block unless score 9 moveroyale_roundtype matches 1..10 run tellraw @a ["§b[§r峟§b] ","§b第",{"text": "9","color": "#E3E3E3"},"§b回合的模式为","§6障碍赛§b！"]
execute if block 200997 2 201009 diamond_block unless score 9 moveroyale_roundtype matches 1..10 run scoreboard players set 9 moveroyale_roundtype 4
# 1st mode
execute if block 201003 2 201009 netherite_block unless score 10 moveroyale_roundtype matches 1..10 run tellraw @a ["§b[§r峟§b] ","§b第",{"text": "10","color": "#E3E3E3"},"§b回合的模式为","§6跑酷§b！"]
execute if block 201003 2 201009 netherite_block unless score 10 moveroyale_roundtype matches 1..10 run scoreboard players set 10 moveroyale_roundtype 1

execute if block 201001 2 201009 netherite_block unless score 10 moveroyale_roundtype matches 1..10 run tellraw @a ["§b[§r峟§b] ","§b第",{"text": "10","color": "#E3E3E3"},"§b回合的模式为","§6冰船§b！"]
execute if block 201001 2 201009 netherite_block unless score 10 moveroyale_roundtype matches 1..10 run scoreboard players set 10 moveroyale_roundtype 2

execute if block 200999 2 201009 netherite_block unless score 10 moveroyale_roundtype matches 1..10 run tellraw @a ["§b[§r峟§b] ","§b第",{"text": "10","color": "#E3E3E3"},"§b回合的模式为","§6三叉戟激流§b！"]
execute if block 200999 2 201009 netherite_block unless score 10 moveroyale_roundtype matches 1..10 run scoreboard players set 10 moveroyale_roundtype 3

execute if block 200997 2 201009 netherite_block unless score 10 moveroyale_roundtype matches 1..10 run tellraw @a ["§b[§r峟§b] ","§b第",{"text": "10","color": "#E3E3E3"},"§b回合的模式为","§6障碍赛§b！"]
execute if block 200997 2 201009 netherite_block unless score 10 moveroyale_roundtype matches 1..10 run scoreboard players set 10 moveroyale_roundtype 4

# Ends Selection if both modes are selected
execute if score 9 moveroyale_roundtype matches 1..10 if score 10 moveroyale_roundtype matches 1..10 run function moveroyale:finale/select_end

# Loop
execute if score phase_finale_prelude moveroyale_game matches 2 run schedule function moveroyale:finale/detect 1t