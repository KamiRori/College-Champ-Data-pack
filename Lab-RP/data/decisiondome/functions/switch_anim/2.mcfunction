

# 等等让我看看是咋回事，是不是新游戏真没配进Decision Dome里面
schedule clear decisiondome:first/sfx
schedule clear master:timer/decisiondome/sec

tellraw @a ["§c§l游戏计时已暂停！"]
tellraw @a ["§f[§6Host§f] §cRektSuddenDeath§f: 等等让我看看是咋回事，是不是新游戏真没配进Decision Dome里面"]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10