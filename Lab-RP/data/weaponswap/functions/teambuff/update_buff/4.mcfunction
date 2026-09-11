
# Voided if is holding weapon
execute if entity @s[tag=ws_weapon] run return 0
effect clear @s regeneration
effect clear @s resistance
attribute @s generic.movement_speed base set 1.0

effect give @s regeneration 4 0 true
effect give @s resistance 4 0 true
attribute @s generic.movement_speed base set 0.103