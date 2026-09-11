


execute as @a[scores={ar_wildcard_call=1..}] run function acerace4:modifiers/wildcard/verify

execute if score gameflag ar_game matches 1 run schedule function acerace4:modifiers/wildcard/loop 1t
