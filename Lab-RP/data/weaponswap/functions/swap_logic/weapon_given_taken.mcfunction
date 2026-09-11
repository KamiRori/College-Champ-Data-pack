
execute unless entity @a[tag=ws_weapon] run return 1

effect clear @a
effect give @a night_vision infinite 0 true
effect give @a saturation infinite 0 true
# No Weapon
clear @a iron_sword
clear @a netherite_sword

# Weapon
execute if score endtime ws_game matches 0 run give @a[tag=ws_weapon] iron_sword{Unbreakable:1b}
execute if score endtime ws_game matches 0 run effect give @a[tag=ws_weapon] resistance infinite 5 true

execute if score endtime ws_game matches 1 run give @a[tag=ws_weapon] netherite_sword{Unbreakable:1b}

execute as @a[tag=ws_weapon] run attribute @s generic.movement_speed base set 0.1

# Notification
tellraw @a ["","§b[§r尢§b] ",{"selector":"@a[tag=ws_weapon]"},"§b收到了武器！"]
title @a[tag=ws_weapon] times 5 20 5
title @a[tag=ws_weapon] title "§c你收到了武器！"
title @a[tag=ws_weapon] subtitle ""