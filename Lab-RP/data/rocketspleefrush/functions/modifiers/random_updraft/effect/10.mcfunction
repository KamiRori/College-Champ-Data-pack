
tellraw @s ["§c[§r鼱§c]§r 你的抬升道具决定把其他人抬高高。"]
tag @r[gamemode=adventure] add temp_lift
scoreboard players set @a[tag=temp_lift] rsr_updraft_time 5
effect give @a[tag=temp_lift] levitation 1 100 true
tag @a remove temp_lift