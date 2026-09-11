
# Tagged Player Actionbar
execute as @a[tag=tagrush_status_tagged] run title @s actionbar ["",{"text": "\uc048","color": "#4E5C24","font": "ui"},{"text": "643","font": "space:backspace"},{"text": "被标记！","color": "red","bold": true}]
execute as @a[tag=tagrush_status_drained] run title @s actionbar ["",{"text": "\ub048","color": "#4E5C24","font": "ui"},{"text": "63","font": "space:backspace"},{"text": "红温","color": "gray","bold": true}]
execute as @a[tag=!tagrush_status_tagged,tag=!tagrush_status_drained] run title @s actionbar [""]

# Tagged Player Particle
execute as @a[tag=tagrush_status_tagged] at @s run particle dust 1 0 0 1 ~ ~1 ~ 0.4 0.5 0.4 0 1 normal @a[distance=0.1..]

# Round Time
execute unless score pause master.timer matches 1 run scoreboard players remove timeleft_t tagrush_game 1
execute if score timeleft_t tagrush_game matches ..0 if score split tagrush_game matches 1 run function tagrush:game/split/end_1
execute if score timeleft_t tagrush_game matches ..0 if score split tagrush_game matches 2 run function tagrush:game/split/end_2
execute if score timeleft_t tagrush_game matches ..0 if score split tagrush_game matches 3 run function tagrush:game/split/end_3

# Round Time Warning
execute if score timeleft_t tagrush_game matches 100 if score pause master.timer matches 0 run execute as @a at @s run playsound sound.timer_danger_normal record @s
execute if score timeleft_t tagrush_game matches 80 if score pause master.timer matches 0 run execute as @a at @s run playsound sound.timer_danger_normal record @s
execute if score timeleft_t tagrush_game matches 60 if score pause master.timer matches 0 run execute as @a at @s run playsound sound.timer_danger_high record @s
execute if score timeleft_t tagrush_game matches 40 if score pause master.timer matches 0 run execute as @a at @s run playsound sound.timer_danger_high record @s
execute if score timeleft_t tagrush_game matches 20 if score pause master.timer matches 0 run execute as @a at @s run playsound sound.timer_danger_high record @s

# Bossbar
function tagrush:bossbar/inround_loop

# Ends last split immediately if all arenas are done.
execute if score completed tagrush_game >= arenas tagrush_game if score split tagrush_game matches ..3 run function tagrush:game/split/end_3
execute if score gameflag tagrush_game matches 1 run schedule function tagrush:game/round_detection 1t