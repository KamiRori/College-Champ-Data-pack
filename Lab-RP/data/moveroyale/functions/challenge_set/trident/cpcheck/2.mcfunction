
execute if entity @s[tag=moveroyale_bracket_high,scores={moveroyale_cleared_cps=2}] if entity @s[x=207710,y=123,z=207980,dx=13,dy=50,dz=40] run function moveroyale:challenge_set/trident/checkpoint_high
execute if entity @s[tag=moveroyale_bracket_high,scores={moveroyale_cleared_cps=1}] if entity @s[x=207797,y=117,z=207985,dx=12,dy=50,dz=30] run function moveroyale:challenge_set/trident/checkpoint_high
execute if entity @s[tag=moveroyale_bracket_high,scores={moveroyale_cleared_cps=0}] if entity @s[x=207874,y=112,z=207989,dx=10,dy=50,dz=22] run function moveroyale:challenge_set/trident/checkpoint_high

execute if entity @s[tag=moveroyale_bracket_low,scores={moveroyale_cleared_cps=2}] if entity @s[x=208710,y=123,z=207980,dx=13,dy=50,dz=40] run function moveroyale:challenge_set/trident/checkpoint_low
execute if entity @s[tag=moveroyale_bracket_low,scores={moveroyale_cleared_cps=1}] if entity @s[x=208797,y=117,z=207985,dx=12,dy=50,dz=30] run function moveroyale:challenge_set/trident/checkpoint_low
execute if entity @s[tag=moveroyale_bracket_low,scores={moveroyale_cleared_cps=0}] if entity @s[x=208874,y=112,z=207989,dx=10,dy=50,dz=22] run function moveroyale:challenge_set/trident/checkpoint_low