# Anchor 14886 91 14968
# 
function gr:rooms/8/red/time
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s run execute as @e[type=item,dx=32,dy=32,dz=32] run data merge entity @s {Item:{tag:{CanPlaceOn:[light_red_stained_glass,orange_stained_glass]}}}
#

# Prevent Falling
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s positioned ~ 107 ~ run tp @a[team=red,dx=30,dy=1,dz=30] ~23 109 ~15

# Prevent overplace
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s run fill ~9 101 ~18 ~17 101 ~26 air
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s run fill ~10 101 ~5 ~16 101 ~11 air

# Compare maze layout
scoreboard objectives add gr_redobj dummy

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if blocks ~9 100 ~18 ~17 100 ~26 ~9 92 ~18 all run fill ~8 100 ~17 ~18 100 ~27 green_terracotta replace red_terracotta
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~8 100 ~17 green_terracotta run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if blocks ~10 100 ~5 ~16 100 ~11 ~10 92 ~5 all run fill ~9 100 ~4 ~17 100 ~12 green_terracotta replace red_terracotta
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~9 100 ~4 green_terracotta run scoreboard players add 1 gr_redobj 1

execute if score 1 gr_redobj matches 2 run function gr:rooms/8/red/complete
scoreboard objectives remove gr_redobj