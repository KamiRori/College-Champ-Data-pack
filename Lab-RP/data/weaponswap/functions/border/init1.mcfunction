
scoreboard objectives add ws_borderx dummy
scoreboard objectives add ws_bordery dummy
scoreboard objectives add ws_borderz dummy
scoreboard objectives add ws_borderdist dummy
scoreboard objectives add ws_game dummy
scoreboard objectives add ws_health dummy
scoreboard objectives add ws_maxhealth dummy
scoreboard objectives add ws_losthealth dummy

execute if score map ws_game matches 1 run scoreboard players set width ws_game 75

execute if score map ws_game matches 1 run scoreboard players set height ws_game 9999

execute if score map ws_game matches 1 run scoreboard players set widththreshold ws_game 6

execute if score map ws_game matches 1 run scoreboard players set heightthreshold ws_game 12

scoreboard players set minimumwidth ws_game 20
execute if score map ws_game matches 1 run scoreboard players set minimumheight ws_game 20


scoreboard players set widthactive ws_game 0
scoreboard players set heightactive ws_game 0

# Generate Center
kill @e[type=area_effect_cloud,tag=bordercenter]
execute if score map ws_game matches 1 run summon area_effect_cloud 35000 100 35000 {Duration:999999,Tags:[weaponswap,bordercenter]}

# Init Width
scoreboard players set widthmove ws_game 0
kill @e[type=area_effect_cloud,tag=borderwidth]
function weaponswap:border/widthinit
function weaponswap:border/widthinitmove

# Init Height
kill @e[type=area_effect_cloud,tag=heightcenter]
kill @e[type=area_effect_cloud,tag=heightborder]

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~ ~ ~ {Duration:999999,Tags:[weaponswap,heightcenter,heightborder]}
scoreboard players set heightmove ws_game 0
function weaponswap:border/heightinitmove

execute if score map ws_game matches 1 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=105..]


# Setup main border
function weaponswap:border/master