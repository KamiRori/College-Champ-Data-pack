
execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_nature_survive
execute as @a[tag=ws_eliminated] run function weaponswap:kill/nature_neutral
execute as @a[team=spec] run function weaponswap:kill/nature_neutral