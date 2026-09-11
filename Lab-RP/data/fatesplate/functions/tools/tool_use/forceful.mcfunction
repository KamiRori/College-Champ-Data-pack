
tag @s add temp_user
scoreboard objectives add temp_toolstats dummy
# target

# Notify
clear @s stick
give @s stick{Enchantments:[{id:"knockback",lvl:4}]}
tellraw @s ["§a[§r礤§a] ","§a你的小道具升级了你的击退棍！"]


# clean
scoreboard objectives remove temp_toolstats
tag @a remove temp_target
tag @s remove temp_user