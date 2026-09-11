

scoreboard objectives add ar_wildcard_playerSeed dummy
scoreboard players set @a ar_wildcard_playerSeed -1

scoreboard objectives add ar_wildcard_choiceA dummy
scoreboard objectives add ar_wildcard_choiceB dummy

scoreboard objectives add ar_wildcard_call trigger
scoreboard players set @a ar_wildcard_call 0

# Wildcard Movespeed
scoreboard objectives add ar_wildcard_movespeed dummy
scoreboard players set @a ar_wildcard_movespeed 100

function acerace4:modifiers/wildcard/loop