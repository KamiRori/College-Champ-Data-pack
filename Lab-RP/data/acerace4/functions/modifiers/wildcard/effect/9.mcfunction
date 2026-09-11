
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

execute as @a[tag=!ar_temp_immu,tag=!ar_noelytra,sort=random,limit=3] run tag @s add ar_temp_victim
tag @a[tag=ar_temp_victim] add ar_noelytra
execute as @a[tag=ar_temp_victim] run tellraw @s ["§c[§r鼱§c] ",{"selector":"@a[tag=ar_temp_caster]"},"§c使你下次经过鞘翅点无法获得鞘翅！"]

# Summary
tellraw @s ["§6[§r彀§6] 道具结算：",{"selector":"@a[tag=ar_temp_victim]"},"§c下一圈无法使用鞘翅。"]

tag @s remove ar_temp_caster
tag @a remove ar_temp_victim
tag @a remove ar_temp_immu