
execute as @e[type=marker,tag=tagrush_centeranchor] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 white_wool
tellraw @s ["[§6DEBUG§r] Reset all capture objectives to default state."]