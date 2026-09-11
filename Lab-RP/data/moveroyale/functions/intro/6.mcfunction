

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10


tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a "  §e§l积分方式"
tellraw @a " "
tellraw @a "  - 常规回合，根据完成各回合的排名积分。"
tellraw @a "  - 决胜回合，根据两回合的成绩之和的排名积分。"
tellraw @a "  "
tellraw @a "  §7- 未完成挑战的玩家根据完成度对应的排名获得一部分分数。"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
