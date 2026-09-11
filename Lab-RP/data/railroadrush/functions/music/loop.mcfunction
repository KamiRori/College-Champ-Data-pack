
scoreboard players add music_tick rrr_game 1
execute if score music_tick rrr_game matches 2880.. run execute as @a at @s run playsound music.rrr voice @s
execute if score music_tick rrr_game matches 2880.. run scoreboard players set music_tick rrr_game 0

execute if score gameflag rrr_game matches 1 run schedule function railroadrush:music/loop 1t