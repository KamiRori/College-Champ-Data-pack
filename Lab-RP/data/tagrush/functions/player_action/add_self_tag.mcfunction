
tag @s add tagrush_status_tagged

# Equipment
item replace entity @s armor.head with tnt{Enchantments:[{id:"binding_curse",lvl:1}]}

# Title and fx
title @s times 2 6 2
title @s title ""
title @s subtitle "§c§l被标记！"
playsound sound.got_struck record @s ~ ~ ~ 1.5

give @s tnt{Enchantments:[{id:"knockback",lvl:1}]}
