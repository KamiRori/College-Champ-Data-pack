
execute if score gameflag meltdown_game matches 0 run return 0

scoreboard objectives add md_tmp_cm_calc dummy
execute as @a run scoreboard players operation @s md_tmp_cm_calc = @s meltdown_modifiers_crate_chill
execute as @a run scoreboard players operation @s md_tmp_cm_calc /= 100 math

execute as @a[tag=!meltdown_frozen,scores={md_tmp_cm_calc=1..}] run scoreboard players operation @s meltdown_modifiers_chill_meter += @s md_tmp_cm_calc
scoreboard objectives remove md_tmp_cm_calc

execute if score gameflag meltdown_game matches 1 run schedule function meltdown:modifiers/frozen_crate_loop 20t