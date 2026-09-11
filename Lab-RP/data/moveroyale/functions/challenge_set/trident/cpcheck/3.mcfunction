
execute if entity @s[tag=moveroyale_bracket_high,scores={moveroyale_cleared_cps=2}] if entity @s[x=208759,y=156,z=208995,dx=7,dy=40,dz=13] run function moveroyale:challenge_set/trident/checkpoint_high
execute if entity @s[tag=moveroyale_bracket_high,scores={moveroyale_cleared_cps=1}] if entity @s[x=208863,y=163,z=208994,dx=7,dy=40,dz=13] run function moveroyale:challenge_set/trident/checkpoint_high
execute if entity @s[tag=moveroyale_bracket_high,scores={moveroyale_cleared_cps=0}] if entity @s[x=208915,y=101,z=208995,dx=7,dy=40,dz=13] run function moveroyale:challenge_set/trident/checkpoint_high

execute if entity @s[tag=moveroyale_bracket_low,scores={moveroyale_cleared_cps=2}] if entity @s[x=209759,y=156,z=208995,dx=7,dy=40,dz=13] run function moveroyale:challenge_set/trident/checkpoint_low
execute if entity @s[tag=moveroyale_bracket_low,scores={moveroyale_cleared_cps=1}] if entity @s[x=209863,y=163,z=208994,dx=7,dy=40,dz=13] run function moveroyale:challenge_set/trident/checkpoint_low
execute if entity @s[tag=moveroyale_bracket_low,scores={moveroyale_cleared_cps=0}] if entity @s[x=209915,y=101,z=208995,dx=7,dy=40,dz=13] run function moveroyale:challenge_set/trident/checkpoint_low