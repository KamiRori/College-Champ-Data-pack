tag @s add ar_temp_caster

execute if entity @s[team=red] run execute as @a[team=red] run tag @s add ar_temp_immu
execute if entity @s[team=blue] run execute as @a[team=blue] run tag @s add ar_temp_immu
execute if entity @s[team=green] run execute as @a[team=green] run tag @s add ar_temp_immu
execute if entity @s[team=yellow] run execute as @a[team=yellow] run tag @s add ar_temp_immu
execute if entity @s[team=cyan] run execute as @a[team=cyan] run tag @s add ar_temp_immu
execute if entity @s[team=pink] run execute as @a[team=pink] run tag @s add ar_temp_immu
execute if entity @s[team=orange] run execute as @a[team=orange] run tag @s add ar_temp_immu
execute if entity @s[team=purple] run execute as @a[team=purple] run tag @s add ar_temp_immu
tag @a[team=spec] add ar_temp_immu

execute as @a[tag=!ar_temp_immu,tag=!ar_wildcard_lapSpdDebuff8,sort=random,limit=4] run tag @s add ar_temp_victim
execute as @a[tag=ar_temp_victim] run function acerace4:modifiers/wildcard/effect/lapdebuff8

# Summary
tellraw @s ["§6[§r彀§6] 道具结算：",{"selector":"@a[tag=ar_temp_victim]"},"§c遭到减速。"]

tag @s remove ar_temp_caster
tag @a remove ar_temp_victim
tag @a remove ar_temp_immu