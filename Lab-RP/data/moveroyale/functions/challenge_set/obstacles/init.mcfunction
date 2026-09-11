


# Give players a random number (1-4), to determine which arena they will be participating in.
function moveroyale:playing_copy/init

# Select the arena
scoreboard players set arena moveroyale_game 0
function moveroyale:challenge_set/obstacles/select_arena

# Time Limit Select
scoreboard players set timelimit_t moveroyale_game 1200
scoreboard players set timelimit_s moveroyale_game 60

# FX Queue
schedule function moveroyale:challenge_set/obstacles/prepare_fx/1 20t
schedule function moveroyale:round_notif/elim_req 60t

# Item and Gamemode
gamemode adventure @a[team=!spec,tag=!moveroyale_eliminated]
clear @a
effect clear @a
effect give @a night_vision infinite 0 true
effect give @a resistance infinite 5 true
item replace entity @a[team=green] armor.feet with leather_boots{Unbreakable:1,display:{color:6192150},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=red] armor.feet with leather_boots{Unbreakable:1,display:{color:11546150},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=blue] armor.feet with leather_boots{Unbreakable:1,display:{color:3949738},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=yellow] armor.feet with leather_boots{Unbreakable:1,display:{color:16701501},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1 
item replace entity @a[team=cyan] armor.feet with leather_boots{Unbreakable:1,display:{color:65514},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=orange] armor.feet with leather_boots{Unbreakable:1,display:{color:16760576},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=purple] armor.feet with leather_boots{Unbreakable:1,display:{color:9437439},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=pink] armor.feet with leather_boots{Unbreakable:1,display:{color:16711927},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1 

item replace entity @a[team=red] weapon.mainhand with red_wool{CanPlaceOn:["#minecraft:moveroyale_obstacles"],CanDestroy:["#minecraft:wool"],HideFlags:24} 64
item replace entity @a[team=blue] weapon.mainhand with blue_wool{CanPlaceOn:["#minecraft:moveroyale_obstacles"],CanDestroy:["#minecraft:wool"],HideFlags:24} 64
item replace entity @a[team=green] weapon.mainhand with green_wool{CanPlaceOn:["#minecraft:moveroyale_obstacles"],CanDestroy:["#minecraft:wool"],HideFlags:24} 64
item replace entity @a[team=yellow] weapon.mainhand with yellow_wool{CanPlaceOn:["#minecraft:moveroyale_obstacles"],CanDestroy:["#minecraft:wool"],HideFlags:24} 64
item replace entity @a[team=cyan] weapon.mainhand with cyan_wool{CanPlaceOn:["#minecraft:moveroyale_obstacles"],CanDestroy:["#minecraft:wool"],HideFlags:24} 64
item replace entity @a[team=pink] weapon.mainhand with pink_wool{CanPlaceOn:["#minecraft:moveroyale_obstacles"],CanDestroy:["#minecraft:wool"],HideFlags:24} 64
item replace entity @a[team=orange] weapon.mainhand with orange_wool{CanPlaceOn:["#minecraft:moveroyale_obstacles"],CanDestroy:["#minecraft:wool"],HideFlags:24} 64
item replace entity @a[team=purple] weapon.mainhand with purple_wool{CanPlaceOn:["#minecraft:moveroyale_obstacles"],CanDestroy:["#minecraft:wool"],HideFlags:24} 64
