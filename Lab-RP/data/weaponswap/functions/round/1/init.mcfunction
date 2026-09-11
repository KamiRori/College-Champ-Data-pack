
execute if score map ws_game matches 1 run tp @a 35000 120 35000

# Round no.
scoreboard players set widthcd ws_game 0
scoreboard players set heightcd ws_game 2
scoreboard players set round ws_game 1
scoreboard players set gameflag ws_game 1

scoreboard players set overtime_notif_1 ws_game 0
scoreboard players set overtime_notif_2 ws_game 0
# Border Create, also generates the center
forceload add 35000 35000
function weaponswap:border/init1
# Teleport Players
execute if score map ws_game matches 1 run function weaponswap:tp/dungeon

# Clear Player states
difficulty peaceful
gamemode adventure @a[team=!spec]
clear @a[team=!spec]
effect clear @a[team=!spec]
scoreboard players set @a ws_kills 0
scoreboard players set @a ws_death 0
scoreboard players set @a ws_roundkills 0
scoreboard players set @a ws_roundscore 0
tag @a remove ws_eliminated
# Give Kits
effect give @a instant_health 1 10 true
effect give @a saturation infinite 10 true

# Enable gameflag

scoreboard players set pregame ws_game 1
# Scoreboard
function weaponswap:scoreboard/total
function weaponswap:scoreboard/update

scoreboard players operation teams_left ws_game = teams ws_game

# Init Time
function weaponswap:round/inittime

# Spawnpoint
execute as @a[team=!spec] at @s run spawnpoint


# Pants
item replace entity @a[team=green] armor.legs with leather_leggings{Unbreakable:1,display:{color:6192150},Enchantments:[{id:"swift_sneak",lvl:3}]} 1
item replace entity @a[team=red] armor.legs with leather_leggings{Unbreakable:1,display:{color:11546150},Enchantments:[{id:"swift_sneak",lvl:3}]} 1
item replace entity @a[team=blue] armor.legs with leather_leggings{Unbreakable:1,display:{color:3949738},Enchantments:[{id:"swift_sneak",lvl:3}]} 1
item replace entity @a[team=yellow] armor.legs with leather_leggings{Unbreakable:1,display:{color:16701501},Enchantments:[{id:"swift_sneak",lvl:3}]} 1 
item replace entity @a[team=cyan] armor.legs with leather_leggings{Unbreakable:1,display:{color:30322},Enchantments:[{id:"swift_sneak",lvl:3}]} 1
item replace entity @a[team=orange] armor.legs with leather_leggings{Unbreakable:1,display:{color:16757504},Enchantments:[{id:"swift_sneak",lvl:3}]} 1
item replace entity @a[team=purple] armor.legs with leather_leggings{Unbreakable:1,display:{color:9437439},Enchantments:[{id:"swift_sneak",lvl:3}]} 1
item replace entity @a[team=pink] armor.legs with leather_leggings{Unbreakable:1,display:{color:16711927},Enchantments:[{id:"swift_sneak",lvl:3}]} 1 

# Round Modifier
execute if score map ws_game matches 1 run schedule function weaponswap:round_modifier/map1/1 4s