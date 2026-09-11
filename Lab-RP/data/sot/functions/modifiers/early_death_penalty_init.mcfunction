
tellraw @a ["§b[§r䄶§b] ",{"text": "Early Death Penalty","color": "#E3E3E3"},"§b: 游戏开始前4分钟获得生命提升II，但是死亡将额外扣除本队30秒沙漏时间。"]
effect give @a health_boost 240 1 true
effect give @a instant_health 10 4 true

scoreboard objectives remove SotModDeathPen
scoreboard objectives add SotModDeathPen deathCount

scoreboard objectives add SotModDeathPenRemain dummy
scoreboard players set red SotModDeathPenRemain 0
scoreboard players set blue SotModDeathPenRemain 0
scoreboard players set green SotModDeathPenRemain 0
scoreboard players set yellow SotModDeathPenRemain 0
scoreboard players set cyan SotModDeathPenRemain 0
scoreboard players set pink SotModDeathPenRemain 0
scoreboard players set orange SotModDeathPenRemain 0
scoreboard players set purple SotModDeathPenRemain 0

function sot:modifiers/early_death_penalty_loop

