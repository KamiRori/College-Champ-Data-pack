

tellraw @s ["§a[§r彀§a] ",{"selector":"@a[tag=ar_temp_caster]"},"§a的道具使你的队伍立刻完成一圈！"]
execute if entity @s[team=red] run scoreboard players add red ar_teamrelay_laps 1
execute if entity @s[team=blue] run scoreboard players add blue ar_teamrelay_laps 1
execute if entity @s[team=green] run scoreboard players add green ar_teamrelay_laps 1
execute if entity @s[team=yellow] run scoreboard players add yellow ar_teamrelay_laps 1
execute if entity @s[team=cyan] run scoreboard players add cyan ar_teamrelay_laps 1
execute if entity @s[team=pink] run scoreboard players add pink ar_teamrelay_laps 1
execute if entity @s[team=orange] run scoreboard players add orange ar_teamrelay_laps 1
execute if entity @s[team=purple] run scoreboard players add purple ar_teamrelay_laps 1