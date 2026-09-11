

execute if entity @s[team=red] run scoreboard players add red ar_teamrelay_laps 1
execute if entity @s[team=red] if score red ar_teamrelay_laps < totalLaps ar_teamrelay_laps run tag @s add ar_finishlap
execute if entity @s[team=red] if score red ar_teamrelay_laps >= totalLaps ar_teamrelay_laps run tag @s add ar_finishcourse
execute if entity @s[team=red] if score red ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=red] times 5 30 5
execute if entity @s[team=red] if score red ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=red] title ["§a最后一圈！"]
execute if entity @s[team=red] if score red ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=red] subtitle ["§e下一次冲线即可完赛！"]

execute if entity @s[team=blue] run scoreboard players add blue ar_teamrelay_laps 1
execute if entity @s[team=blue] if score blue ar_teamrelay_laps < totalLaps ar_teamrelay_laps run tag @s add ar_finishlap
execute if entity @s[team=blue] if score blue ar_teamrelay_laps >= totalLaps ar_teamrelay_laps run tag @s add ar_finishcourse
execute if entity @s[team=blue] if score blue ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=blue] times 5 30 5
execute if entity @s[team=blue] if score blue ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=blue] title ["§a最后一圈！"]
execute if entity @s[team=blue] if score blue ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=blue] subtitle ["§e下一次冲线即可完赛！"]

execute if entity @s[team=green] run scoreboard players add green ar_teamrelay_laps 1
execute if entity @s[team=green] if score green ar_teamrelay_laps < totalLaps ar_teamrelay_laps run tag @s add ar_finishlap
execute if entity @s[team=green] if score green ar_teamrelay_laps >= totalLaps ar_teamrelay_laps run tag @s add ar_finishcourse
execute if entity @s[team=green] if score green ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=green] times 5 30 5
execute if entity @s[team=green] if score green ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=green] title ["§a最后一圈！"]
execute if entity @s[team=green] if score green ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=green] subtitle ["§e下一次冲线即可完赛！"]

execute if entity @s[team=yellow] run scoreboard players add yellow ar_teamrelay_laps 1
execute if entity @s[team=yellow] if score yellow ar_teamrelay_laps < totalLaps ar_teamrelay_laps run tag @s add ar_finishlap
execute if entity @s[team=yellow] if score yellow ar_teamrelay_laps >= totalLaps ar_teamrelay_laps run tag @s add ar_finishcourse
execute if entity @s[team=yellow] if score yellow ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=yellow] times 5 30 5
execute if entity @s[team=yellow] if score yellow ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=yellow] title ["§a最后一圈！"]
execute if entity @s[team=yellow] if score yellow ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=yellow] subtitle ["§e下一次冲线即可完赛！"]

execute if entity @s[team=cyan] run scoreboard players add cyan ar_teamrelay_laps 1
execute if entity @s[team=cyan] if score cyan ar_teamrelay_laps < totalLaps ar_teamrelay_laps run tag @s add ar_finishlap
execute if entity @s[team=cyan] if score cyan ar_teamrelay_laps >= totalLaps ar_teamrelay_laps run tag @s add ar_finishcourse
execute if entity @s[team=cyan] if score cyan ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=cyan] times 5 30 5
execute if entity @s[team=cyan] if score cyan ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=cyan] title ["§a最后一圈！"]
execute if entity @s[team=cyan] if score cyan ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=cyan] subtitle ["§e下一次冲线即可完赛！"]

execute if entity @s[team=pink] run scoreboard players add pink ar_teamrelay_laps 1
execute if entity @s[team=pink] if score pink ar_teamrelay_laps < totalLaps ar_teamrelay_laps run tag @s add ar_finishlap
execute if entity @s[team=pink] if score pink ar_teamrelay_laps >= totalLaps ar_teamrelay_laps run tag @s add ar_finishcourse
execute if entity @s[team=pink] if score pink ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=pink] times 5 30 5
execute if entity @s[team=pink] if score pink ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=pink] title ["§a最后一圈！"]
execute if entity @s[team=pink] if score pink ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=pink] subtitle ["§e下一次冲线即可完赛！"]

execute if entity @s[team=orange] run scoreboard players add orange ar_teamrelay_laps 1
execute if entity @s[team=orange] if score orange ar_teamrelay_laps < totalLaps ar_teamrelay_laps run tag @s add ar_finishlap
execute if entity @s[team=orange] if score orange ar_teamrelay_laps >= totalLaps ar_teamrelay_laps run tag @s add ar_finishcourse
execute if entity @s[team=orange] if score orange ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=orange] times 5 30 5
execute if entity @s[team=orange] if score orange ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=orange] title ["§a最后一圈！"]
execute if entity @s[team=orange] if score orange ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=orange] subtitle ["§e下一次冲线即可完赛！"]

execute if entity @s[team=purple] run scoreboard players add purple ar_teamrelay_laps 1
execute if entity @s[team=purple] if score purple ar_teamrelay_laps < totalLaps ar_teamrelay_laps run tag @s add ar_finishlap
execute if entity @s[team=purple] if score purple ar_teamrelay_laps >= totalLaps ar_teamrelay_laps run tag @s add ar_finishcourse
execute if entity @s[team=purple] if score purple ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=purple] times 5 30 5
execute if entity @s[team=purple] if score purple ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=purple] title ["§a最后一圈！"]
execute if entity @s[team=purple] if score purple ar_teamrelay_laps = totalLaps-1 ar_teamrelay_laps run title @a[team=purple] subtitle ["§e下一次冲线即可完赛！"]


