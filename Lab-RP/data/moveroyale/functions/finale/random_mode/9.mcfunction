
scoreboard objectives add temp_rand_9 dummy
# 随机10次直到和第10回合模式不重合
execute store result score $rand temp_rand_9 run random value 1..4
execute if score $rand temp_rand_9 = 10 moveroyale_roundtype store result score $rand temp_rand_9 run random value 1..4
execute if score $rand temp_rand_9 = 10 moveroyale_roundtype store result score $rand temp_rand_9 run random value 1..4
execute if score $rand temp_rand_9 = 10 moveroyale_roundtype store result score $rand temp_rand_9 run random value 1..4
execute if score $rand temp_rand_9 = 10 moveroyale_roundtype store result score $rand temp_rand_9 run random value 1..4
execute if score $rand temp_rand_9 = 10 moveroyale_roundtype store result score $rand temp_rand_9 run random value 1..4
execute if score $rand temp_rand_9 = 10 moveroyale_roundtype store result score $rand temp_rand_9 run random value 1..4
execute if score $rand temp_rand_9 = 10 moveroyale_roundtype store result score $rand temp_rand_9 run random value 1..4
execute if score $rand temp_rand_9 = 10 moveroyale_roundtype store result score $rand temp_rand_9 run random value 1..4

execute if score $rand temp_rand_9 matches 1 run tellraw @a ["§b[§r峟§b] ","§b第",{"text": "9","color": "#E3E3E3"},"§b回合的模式被随机指定为","§6跑酷§b！"]
execute if score $rand temp_rand_9 matches 2 run tellraw @a ["§b[§r峟§b] ","§b第",{"text": "9","color": "#E3E3E3"},"§b回合的模式被随机指定为","§6冰船§b！"]
execute if score $rand temp_rand_9 matches 3 run tellraw @a ["§b[§r峟§b] ","§b第",{"text": "9","color": "#E3E3E3"},"§b回合的模式被随机指定为","§6三叉戟激流§b！"]
execute if score $rand temp_rand_9 matches 4 run tellraw @a ["§b[§r峟§b] ","§b第",{"text": "9","color": "#E3E3E3"},"§b回合的模式被随机指定为","§6障碍赛§b！"]

scoreboard players operation 9 moveroyale_roundtype = $rand temp_rand_9
scoreboard objectives remove temp_rand_9