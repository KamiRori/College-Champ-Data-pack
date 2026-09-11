


tag @s add temp_judge_cplow
# Move other players down a spot
execute as @a[tag=moveroyale_bracket_low,tag=!temp_judge_cplow] if score @s moveroyale_cleared_cps = @a[sort=nearest,limit=1,tag=temp_judge_cplow] moveroyale_cleared_cps if score @s moveroyale_progress_rank <= @a[sort=nearest,limit=1,tag=temp_judge_cplow] moveroyale_progress_rank run scoreboard players add @s moveroyale_progress_rank 1

# Change progress rank to current cp completion amount.
scoreboard players add 8 moveroyale_cp_low 1
scoreboard players operation @s moveroyale_progress_rank = 8 moveroyale_cp_low
scoreboard players set @s moveroyale_cleared_cps 8

# FX
execute at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~
tellraw @s ["","§a[§r彀§a] 完成存档点",{"score":{"name": "@s","objective": "moveroyale_cleared_cps"},"color": "aqua"}," §7(#",{"score":{"name": "@s","objective": "moveroyale_progress_rank"}},"§7)"]

# remove tag.
tag @s remove temp_judge_cplow