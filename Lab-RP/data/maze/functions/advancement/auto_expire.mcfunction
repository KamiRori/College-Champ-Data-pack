


scoreboard players remove @a[advancements={maze:button_pressed=true}] maze_button_press_check_period 1
advancement revoke @a[advancements={maze:button_pressed=true},scores={maze_button_press_check_period=..-1}] only maze:button_pressed

execute if score gameflag maze_game matches 1 run schedule function maze:advancement/auto_expire 1t