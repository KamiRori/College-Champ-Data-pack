
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run fill ~38 ~10 ~14 ~38 ~14 ~16 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon area_effect_cloud ~38 ~14 ~15 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon area_effect_cloud ~32 ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_red,tag=divider]
execute as @a[team=red] at @s run spawnpoint
execute as @a[team=red] at @s run kill @e[type=item,distance=0..3]
# Add a team phase
scoreboard players add red gr_teamphase 1
# Give items
clear @a[team=red]
# Item
give @a[team=red] iron_hoe{CanDestroy:[kelp,horn_coral_fan,brain_coral,seagrass,sponge,wet_sponge],Unbreakable:1b}
give @a[team=red] iron_shovel{CanDestroy:[gravel],Unbreakable:1b}
give @a[team=red] gravel{CanPlaceOn:[sand,sandstone,andesite,gravel,stone,horn_coral_block,brain_coral_block,sea_lantern,stone_bricks,cracked_stone_bricks],HideFlags:24} 192
give @a[team=red] sponge{CanPlaceOn:[sand,sandstone,andesite,gravel,stone,horn_coral_block,brain_coral_block,sea_lantern,stone_bricks,cracked_stone_bricks],HideFlags:24} 32

item replace entity @a[team=red] armor.feet with leather_boots{Enchantments:[{id:"depth_strider",lvl:3}]}

# Modify scoreboard
scoreboard players display name var_room_name gr_redsb "§a§l当前房间: §r§cTeam #NoSeas"
# Play sound and title
execute as @a[team=red] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=red] times 20 40 20
title @a[team=red] subtitle ""
title @a[team=red] title "§e抽干水域！"

# 开始计时
scoreboard players set red gr_currenttime 0
function gr:rooms/5/red/time