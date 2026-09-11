

tag @a[scores={univ_death_2=1..}] add gr_effect_reset

execute as @a[tag=gr_effect_reset,scores={health=1..}] run effect give @s saturation infinite 0 true

execute as @a[tag=gr_effect_reset,scores={health=1..}] run effect give @s night_vision infinite 0 true
#execute as @a[tag=gr_effect_reset,scores={health=1..}] run effect give @s glowing infinite 0 true

execute as @a[tag=gr_effect_reset,scores={health=1..}] run tag @s remove gr_effect_reset

scoreboard players set @a univ_death_2 0

execute if score gameflag gr_game matches 1 run schedule function gr:death_effect_reset 1t