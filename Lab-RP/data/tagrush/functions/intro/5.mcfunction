
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  §6红温§f的玩家将不再能被传递§cTNT，"]
tellraw @a "  并收到一把§b击退一§f木棍来协助在场的其他队友。"
tellraw @a "  "
tellraw @a "  3个切分结束时，未陷入红温状态的玩家多的一方胜利！"
tellraw @a "  §7若3个切分未结束时有一方全部陷入红温，则回合提前结束。"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10