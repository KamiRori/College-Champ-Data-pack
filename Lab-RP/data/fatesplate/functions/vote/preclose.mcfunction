

tellraw @a ["","§c[§r鼱§c] ","§c战斗已关闭，尽快选择你要投票的游戏吧！"]
clear @a[team=!spec]
execute as @a run attribute @s generic.attack_damage base set -1