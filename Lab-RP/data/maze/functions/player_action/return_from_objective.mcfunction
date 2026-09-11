
scoreboard players operation $target maze_return_anchor_pid = @s maze_pid
execute as @e[type=marker,tag=maze_return_anchor_pid,tag=assigned_pid] if score @s maze_return_anchor_pid = $target maze_return_anchor_pid run tag @s add toTp

# Teleport
tp @s @e[type=marker,tag=maze_return_anchor_pid,tag=assigned_pid,tag=toTp,limit=1,sort=nearest]

# Clean out the anchor
kill @e[type=marker,tag=maze_return_anchor_pid,tag=assigned_pid,tag=toTp,limit=1,sort=nearest]

# Clear Objective items
clear @s iron_pickaxe{challengeItem:1}
clear @s packed_ice{challengeItem:1}

# Clear buffs
execute if entity @s[tag=buff_instacap] run tellraw @s ["§7[§r褎§7] 你的宣称卡已失效。"]
tag @s remove buff_instacap
