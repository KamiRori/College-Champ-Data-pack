
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  §e§l每回合共70秒，回合内具有三个切分。"]
tellraw @a " "
tellraw @a "  3个切分时长分别为§a25/25/20§f秒。"
tellraw @a "  每个切分开始时，将对玩家投放§cTNT"
tellraw @a "  §cTNT§f将在每个切分结束时使持有者陷入§c红温§f，随后开启下一个切分。"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10