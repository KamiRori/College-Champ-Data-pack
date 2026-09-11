
execute as @e[type=arrow,tag=!system] run data merge entity @s[type=arrow] {damage:114514}
execute as @e[type=spectral_arrow,tag=!system] run data merge entity @s[type=spectral_arrow] {damage:114514}

execute if score gameflag db_game matches 1 run schedule function dodgebolt:arrowevent/harmful 1t