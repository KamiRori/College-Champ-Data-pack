
tellraw @s ["§c[§r鼱§c]§r 你的抬升道具狠狠重击了你一下。"]

effect give @s levitation 1 70 true
scoreboard players add @s rsr_player_struck_stacks 6
playsound sound.got_struck record @s ~ ~ ~ 1.3