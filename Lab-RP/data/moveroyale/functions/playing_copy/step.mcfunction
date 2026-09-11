

scoreboard players add $step moveroyale_playing_copy 1
execute if score $step moveroyale_playing_copy matches 5.. run scoreboard players set $step moveroyale_playing_copy 1

execute as @r[scores={moveroyale_playing_copy=0}] run scoreboard players operation @s moveroyale_playing_copy = $step moveroyale_playing_copy

execute if entity @a[scores={moveroyale_playing_copy=0}] run function moveroyale:playing_copy/step
