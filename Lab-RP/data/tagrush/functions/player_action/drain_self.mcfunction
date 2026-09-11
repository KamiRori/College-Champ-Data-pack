
tag @s remove tagrush_status_tagged
tag @s add tagrush_status_drained

# Equipment
item replace entity @s armor.head with glass{Enchantments:[{id:"binding_curse",lvl:1}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{color:4144959},Enc2960685ts:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1

clear @s tnt
# clear fx
effect clear @s glowing
attribute @s generic.movement_speed base set 0.12

give @s stick{Enchantments:[{id:"knockback",lvl:2}]}
# Title and fx
title @s times 2 16 2
title @s title ""
title @s subtitle "§c§l陷入红温！"
playsound sound.elimination_pop record @s ~ ~ ~ 1.5


tellraw @s ["§c[§r鄵§c] 你已陷入红温状态，帮助你的队友吧！"]

# Notif
execute if entity @s[tag=tagrush_arena_1] run tellraw @a[tag=tagrush_arena_1] ["§7[§r楒§7] ",{"selector":"@s"},"§7陷入了红温。"]
execute if entity @s[tag=tagrush_arena_2] run tellraw @a[tag=tagrush_arena_2] ["§7[§r楒§7] ",{"selector":"@s"},"§7陷入了红温。"]
execute if entity @s[tag=tagrush_arena_3] run tellraw @a[tag=tagrush_arena_3] ["§7[§r楒§7] ",{"selector":"@s"},"§7陷入了红温。"]
execute if entity @s[tag=tagrush_arena_4] run tellraw @a[tag=tagrush_arena_4] ["§7[§r楒§7] ",{"selector":"@s"},"§7陷入了红温。"]
tellraw @a[team=spec] ["§7[§r楒§7] ",{"selector":"@s"},"§7陷入了红温。"]