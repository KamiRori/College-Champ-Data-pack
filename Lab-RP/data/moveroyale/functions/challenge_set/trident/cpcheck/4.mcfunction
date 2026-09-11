
execute if entity @s[tag=moveroyale_bracket_high,scores={moveroyale_cleared_cps=2}] if entity @s[x=209675,y=203,z=209981,dx=9,dy=40,dz=38] run function moveroyale:challenge_set/trident/checkpoint_high
execute if entity @s[tag=moveroyale_bracket_high,scores={moveroyale_cleared_cps=1}] if entity @s[x=209810,y=200,z=209991,dx=6,dy=40,dz=18] run function moveroyale:challenge_set/trident/checkpoint_high
execute if entity @s[tag=moveroyale_bracket_high,scores={moveroyale_cleared_cps=0}] if entity @s[x=209925,y=142,z=209991,dx=6,dy=40,dz=18] run function moveroyale:challenge_set/trident/checkpoint_high

execute if entity @s[tag=moveroyale_bracket_low,scores={moveroyale_cleared_cps=2}] if entity @s[x=210675,y=203,z=209981,dx=9,dy=40,dz=38] run function moveroyale:challenge_set/trident/checkpoint_low
execute if entity @s[tag=moveroyale_bracket_low,scores={moveroyale_cleared_cps=1}] if entity @s[x=210810,y=200,z=209991,dx=6,dy=40,dz=18] run function moveroyale:challenge_set/trident/checkpoint_low
execute if entity @s[tag=moveroyale_bracket_low,scores={moveroyale_cleared_cps=0}] if entity @s[x=210925,y=142,z=209991,dx=6,dy=40,dz=18] run function moveroyale:challenge_set/trident/checkpoint_low