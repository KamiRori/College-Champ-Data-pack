
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run fill ~38 ~10 ~14 ~38 ~14 ~16 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run summon area_effect_cloud ~38 ~14 ~15 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run summon area_effect_cloud ~32 ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_blue,tag=divider]
execute as @a[team=blue] at @s run spawnpoint
execute as @a[team=blue] at @s run kill @e[type=item,distance=0..3]
# Add a team phase
scoreboard players add blue gr_teamphase 1
# Give items
clear @a[team=blue]
# Item
give @a[team=blue] iron_hoe{CanDestroy:[kelp,horn_coral_fan,brain_coral,seagrass,sponge,wet_sponge],Unbreakable:1b}
give @a[team=blue] iron_shovel{CanDestroy:[gravel],Unbreakable:1b}
give @a[team=blue] gravel{CanPlaceOn:[sand,sandstone,andesite,gravel,stone,horn_coral_block,brain_coral_block,sea_lantern,stone_bricks,cracked_stone_bricks],HideFlags:24} 192
give @a[team=blue] sponge{CanPlaceOn:[sand,sandstone,andesite,gravel,stone,horn_coral_block,brain_coral_block,sea_lantern,stone_bricks,cracked_stone_bricks],HideFlags:24} 32

item replace entity @a[team=blue] armor.feet with leather_boots{Enchantments:[{id:"depth_strider",lvl:3}]}

# Modify scoreboard
scoreboard players display name var_room_name gr_bluesb "§a§l当前房间: §r§cTeam #NoSeas"
# Play sound and title
execute as @a[team=blue] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=blue] times 20 40 20
title @a[team=blue] subtitle ""
title @a[team=blue] title "§e抽干水域！"

# 开始计时
scoreboard players set blue gr_currenttime 0
function gr:rooms/5/blue/time