

execute if score gametime SotGame matches 240.. run effect clear @a health_boost
execute if score gametime SotGame matches 240.. run tellraw @a ["§c[§r鼱§c] 死亡不再产生额外惩罚了。"]
execute if score gametime SotGame matches 240.. run return 0

execute if score gameflag SotGame matches 0 run effect clear @a health_boost
execute if score gameflag SotGame matches 0 run return 0


execute as @a[team=red,scores={SotModDeathPen=1..}] run scoreboard players add red SotModDeathPenRemain 30
execute if score red SotModDeathPenRemain matches 1.. if score red SotTeamTime matches 1.. run function sot:time/sec/red
execute if score red SotModDeathPenRemain matches 1.. run scoreboard players remove red SotModDeathPen 1

execute as @a[team=blue,scores={SotModDeathPen=1..}] run scoreboard players add blue SotModDeathPenRemain 30
execute if score blue SotModDeathPenRemain matches 1.. if score blue SotTeamTime matches 1.. run function sot:time/sec/blue
execute if score blue SotModDeathPenRemain matches 1.. run scoreboard players remove blue SotModDeathPen 1

execute as @a[team=green,scores={SotModDeathPen=1..}] run scoreboard players add green SotModDeathPenRemain 30
execute if score green SotModDeathPenRemain matches 1.. if score green SotTeamTime matches 1.. run function sot:time/sec/green
execute if score green SotModDeathPenRemain matches 1.. run scoreboard players remove green SotModDeathPen 1

execute as @a[team=yellow,scores={SotModDeathPen=1..}] run scoreboard players add yellow SotModDeathPenRemain 30
execute if score yellow SotModDeathPenRemain matches 1.. if score yellow SotTeamTime matches 1.. run function sot:time/sec/yellow
execute if score yellow SotModDeathPenRemain matches 1.. run scoreboard players remove yellow SotModDeathPen 1

execute as @a[team=cyan,scores={SotModDeathPen=1..}] run scoreboard players add cyan SotModDeathPenRemain 30
execute if score cyan SotModDeathPenRemain matches 1.. if score cyan SotTeamTime matches 1.. run function sot:time/sec/cyan
execute if score cyan SotModDeathPenRemain matches 1.. run scoreboard players remove cyan SotModDeathPen 1

execute as @a[team=pink,scores={SotModDeathPen=1..}] run scoreboard players add pink SotModDeathPenRemain 30
execute if score pink SotModDeathPenRemain matches 1.. if score pink SotTeamTime matches 1.. run function sot:time/sec/pink
execute if score pink SotModDeathPenRemain matches 1.. run scoreboard players remove pink SotModDeathPen 1

execute as @a[team=orange,scores={SotModDeathPen=1..}] run scoreboard players add orange SotModDeathPenRemain 30
execute if score orange SotModDeathPenRemain matches 1.. if score orange SotTeamTime matches 1.. run function sot:time/sec/orange
execute if score orange SotModDeathPenRemain matches 1.. run scoreboard players remove orange SotModDeathPen 1

execute as @a[team=purple,scores={SotModDeathPen=1..}] run scoreboard players add purple SotModDeathPenRemain 30
execute if score purple SotModDeathPenRemain matches 1.. if score purple SotTeamTime matches 1.. run function sot:time/sec/purple
execute if score purple SotModDeathPenRemain matches 1.. run scoreboard players remove purple SotModDeathPen 1


scoreboard players set @a SotModDeathPen 0

execute if score gametime SotGame matches ..239 if score gameflag SotGame matches 1 run schedule function sot:modifiers/early_death_penalty_loop 1t