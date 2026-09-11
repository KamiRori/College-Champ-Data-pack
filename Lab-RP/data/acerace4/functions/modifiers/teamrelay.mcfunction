 
scoreboard objectives remove ar_teamrelay_laps
scoreboard objectives add ar_teamrelay_laps dummy ""

scoreboard players set red ar_teamrelay_laps 0
scoreboard players set blue ar_teamrelay_laps 0
scoreboard players set green ar_teamrelay_laps 0
scoreboard players set yellow ar_teamrelay_laps 0
scoreboard players set cyan ar_teamrelay_laps 0
scoreboard players set pink ar_teamrelay_laps 0
scoreboard players set orange ar_teamrelay_laps 0
scoreboard players set purple ar_teamrelay_laps 0

scoreboard players set totalLaps ar_teamrelay_laps 15
scoreboard players operation totalLaps-1 ar_teamrelay_laps = totalLaps ar_teamrelay_laps
scoreboard players remove totalLaps-1 ar_teamrelay_laps 1

function acerace4:timing/master_relay
tellraw @a ["§b[§r莤§b] ",{"text": "Team Relay","color": "#E3E3E3"},"","§b: 团队需要合计完成§615§c圈以完成比赛。"]