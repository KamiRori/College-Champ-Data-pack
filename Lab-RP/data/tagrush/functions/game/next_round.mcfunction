
schedule clear tagrush:beginlistener
schedule clear tagrush:nextround_listener
# Get a match
function tagrush:matchmaking/getmatch

# Teleport Players
function tagrush:game/round_teleport

# Universal

## Update match count
execute store result storage tagrush:scb round int 1 run scoreboard players add round tagrush_game 1
execute store result storage tagrush:scb total int 1 run scoreboard players get matches tagrush_game
function tagrush:scoreboard/macro_match_count with storage tagrush:scb
##

function master:sfx/tagrush
scoreboard players set gameflag tagrush_game 0

# item replace
clear @a
item replace entity @a[team=green] armor.feet with leather_boots{Unbreakable:1,display:{color:6192150},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=red] armor.feet with leather_boots{Unbreakable:1,display:{color:11546150},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=blue] armor.feet with leather_boots{Unbreakable:1,display:{color:3949738},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=yellow] armor.feet with leather_boots{Unbreakable:1,display:{color:16701501},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1 
item replace entity @a[team=cyan] armor.feet with leather_boots{Unbreakable:1,display:{color:30322},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=orange] armor.feet with leather_boots{Unbreakable:1,display:{color:16757504},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=purple] armor.feet with leather_boots{Unbreakable:1,display:{color:9437439},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=pink] armor.feet with leather_boots{Unbreakable:1,display:{color:16711927},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1 


# mode
gamemode spectator @a[team=spec]
gamemode adventure @a[team=!spec]

# Reset Map

# Reset attributes
execute as @a run attribute @s generic.attack_damage base set -100
execute as @a run attribute @s generic.movement_speed base set 0.10

effect clear @a
effect give @a resistance infinite 5 true

function master:timer/starting/15s
function tagrush:round_beginlistener

# Title FX ## TBDONE!!!
title @a title ["回合 ",{"score":{"name": "round","objective": "tagrush_game"}},"/",{"score":{"name": "matches","objective": "tagrush_game"}}]
title @a subtitle ""
tellraw @a ["§b[§r鄵§b] 回合",{"score":{"name": "round","objective": "tagrush_game"},"color": "#E3E3E3"},"§b对局准备，在地图中就位吧！"]

function tagrush:game/macro_round_subtitles with storage tagrush:opponent

# 轮空判定
execute if score red tagrush_round_off matches 1 run function tagrush:game/match_result/break/red
execute if score blue tagrush_round_off matches 1 run function tagrush:game/match_result/break/blue
execute if score green tagrush_round_off matches 1 run function tagrush:game/match_result/break/green
execute if score yellow tagrush_round_off matches 1 run function tagrush:game/match_result/break/yellow
execute if score cyan tagrush_round_off matches 1 run function tagrush:game/match_result/break/cyan
execute if score pink tagrush_round_off matches 1 run function tagrush:game/match_result/break/pink
execute if score orange tagrush_round_off matches 1 run function tagrush:game/match_result/break/orange
execute if score purple tagrush_round_off matches 1 run function tagrush:game/match_result/break/purple