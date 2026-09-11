execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"color":"yellow","bold":true,"text":"  积分方式:  "}]
tellraw @a " "
tellraw @a "  - 回合结束时，自己没有陷入§c红温"
tellraw @a "  - 回合结束时，依据双方未陷入§c红温§f的人数计分"
tellraw @a ["  - 在第3切分前将对手团灭"]
tellraw @a [""]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]