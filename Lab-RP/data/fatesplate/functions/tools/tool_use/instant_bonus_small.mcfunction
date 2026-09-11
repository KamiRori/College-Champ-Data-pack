
tag @s add temp_user
scoreboard objectives add temp_toolstats dummy
# target

# Notify
tellraw @s ["§a[§r礤§a] ","§a你的小道具为你增加了§f5§a票！"]
scoreboard players add @s fatesplate_playervotes 5


# clean
scoreboard objectives remove temp_toolstats
tag @a remove temp_target
tag @s remove temp_user