
tag @s add ar_temp_caster

scoreboard players set $maxSpeed ar_wildcard_movespeed 0
scoreboard players set $minSpeed ar_wildcard_movespeed 999999
execute as @a run scoreboard players operation $maxSpeed ar_wildcard_movespeed > @s ar_wildcard_movespeed
execute as @a run scoreboard players operation $minSpeed ar_wildcard_movespeed < @s ar_wildcard_movespeed

# Penalty
execute as @a if score @s ar_wildcard_movespeed = $maxSpeed ar_wildcard_movespeed run tag @s add ar_temp_previctim
tag @r[tag=ar_temp_previctim] add ar_temp_victim
execute as @a[tag=ar_temp_victim] run function acerace4:modifiers/wildcard/effect/sendback3

# Bonus
execute as @a if score @s ar_wildcard_movespeed = $minSpeed ar_wildcard_movespeed run tag @s add ar_temp_prebuffed
tag @r[tag=ar_temp_prebuffed] add ar_temp_buffed
execute as @a[tag=ar_temp_buffed] run function acerace4:modifiers/wildcard/effect/clearalap

# Summary
tellraw @s ["§6[§r彀§6] 道具结算：",{"selector":"@a[tag=ar_temp_victim]"},"§c受害 ","§7/ ",{"selector":"@a[tag=ar_temp_buffed]"},"§a受益"]

tag @s remove ar_temp_caster
tag @a remove ar_temp_previctim
tag @a remove ar_temp_victim
tag @a remove ar_temp_prebuffed
tag @a remove ar_temp_buffed
tag @a remove ar_temp_immu