
execute if entity @s[tag=moveroyale_bracket_high,scores={moveroyale_cleared_cps=2}] if entity @s[x=206609,y=129,z=206980,dx=11,dy=40,dz=39] run function moveroyale:challenge_set/trident/checkpoint_high
execute if entity @s[tag=moveroyale_bracket_high,scores={moveroyale_cleared_cps=1}] if entity @s[x=206733,y=119,z=206980,dx=12,dy=40,dz=40] run function moveroyale:challenge_set/trident/checkpoint_high
execute if entity @s[tag=moveroyale_bracket_high,scores={moveroyale_cleared_cps=0}] if entity @s[x=206843,y=109,z=206980,dx=12,dy=40,dz=40] run function moveroyale:challenge_set/trident/checkpoint_high

execute if entity @s[tag=moveroyale_bracket_low,scores={moveroyale_cleared_cps=2}] if entity @s[x=207609,y=129,z=206980,dx=11,dy=40,dz=39] run function moveroyale:challenge_set/trident/checkpoint_low
execute if entity @s[tag=moveroyale_bracket_low,scores={moveroyale_cleared_cps=1}] if entity @s[x=207733,y=119,z=206980,dx=12,dy=40,dz=40] run function moveroyale:challenge_set/trident/checkpoint_low
execute if entity @s[tag=moveroyale_bracket_low,scores={moveroyale_cleared_cps=0}] if entity @s[x=207843,y=109,z=206980,dx=12,dy=40,dz=40] run function moveroyale:challenge_set/trident/checkpoint_low