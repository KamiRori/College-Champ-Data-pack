# Anchor 14886 91 14968

# 
function gr:rooms/4/purple/time
#

scoreboard objectives add gr_purpleobj dummy

# Avoid Throw
execute as @a[team=purple,scores={gr_xroom_use_epearl=1..}] at @s run kill @e[type=ender_pearl,distance=0..20]
execute as @a[team=purple,scores={gr_xroom_use_epearl=1..}] at @s run give @s ender_pearl
execute as @a[team=purple,scores={gr_xroom_use_epearl=1..}] at @s run scoreboard players remove @s gr_xroom_use_epearl 1
# Give Useable Eye
execute as @a[team=purple,scores={gr_xroom_craft_eeye=1..}] run give @s ender_eye{CanPlaceOn:[end_portal_frame],display:{Name:'"§r§5可以放置的末影之眼"'}}
execute as @a[team=purple,scores={gr_xroom_craft_eeye=1..}] run scoreboard players remove @s gr_xroom_craft_eeye 1
# Give Rod
execute as @a[team=purple,scores={gr_xroom_kill_blaze=1..}] run give @s blaze_rod
execute as @a[team=purple,scores={gr_xroom_kill_blaze=1..}] run scoreboard players remove @s gr_xroom_kill_blaze 1

execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~16 94 ~-13 end_portal_frame[eye=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~17 94 ~-13 end_portal_frame[eye=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~18 94 ~-13 end_portal_frame[eye=true] run scoreboard players add 1 gr_purpleobj 1

execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~16 94 ~-17 end_portal_frame[eye=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~17 94 ~-17 end_portal_frame[eye=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~18 94 ~-17 end_portal_frame[eye=true] run scoreboard players add 1 gr_purpleobj 1

execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~15 94 ~-16 end_portal_frame[eye=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~15 94 ~-15 end_portal_frame[eye=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~15 94 ~-14 end_portal_frame[eye=true] run scoreboard players add 1 gr_purpleobj 1

execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~19 94 ~-16 end_portal_frame[eye=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~19 94 ~-15 end_portal_frame[eye=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~19 94 ~-14 end_portal_frame[eye=true] run scoreboard players add 1 gr_purpleobj 1


execute if score 1 gr_purpleobj matches 12.. run function gr:rooms/4/purple/complete
scoreboard objectives remove gr_purpleobj