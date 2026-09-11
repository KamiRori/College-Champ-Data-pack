
tag @s add temp_user
scoreboard objectives add temp_toolstats dummy
# target
execute as @a[team=!spec,gamemode=!spectator,tag=!temp_user,distance=0..3] run tag @s add temp_target

execute as @a[tag=temp_target] run scoreboard players set @s temp_toolstats 2
execute as @a[tag=temp_target] run scoreboard players operation @s temp_toolstats < @s fatesplate_playervotes

execute as @a[tag=temp_target] run scoreboard players operation $totalsteal temp_toolstats += @s temp_toolstats
execute as @a[tag=temp_target] run scoreboard players add $totaltargets temp_toolstats 1

# Notify
tellraw @s ["§a[§r礤§a] ","§a你的小道具从",{"score":{"name": "$totaltargets","objective": "temp_toolstats"},"color": "#E3E3E3"},"§a名玩家处偷取了",{"score":{"name": "$totalsteal","objective": "temp_toolstats"},"color": "gold"},"§a票！"]
scoreboard players operation @s fatesplate_playervotes += $totalsteal temp_toolstats

execute as @a[tag=temp_target] run tellraw @s ["§c[§r鼱§c] 你被",{"selector":"@a[tag=temp_user]"},"§c使用小道具偷走了",{"score":{"name": "@s","objective": "temp_toolstats"},"color": "#E3E3E3"},"§c票！"]
execute as @a[tag=temp_target] run scoreboard players operation @s fatesplate_playervotes -= @s temp_toolstats

# clean
scoreboard objectives remove temp_toolstats
tag @a remove temp_target
tag @s remove temp_user