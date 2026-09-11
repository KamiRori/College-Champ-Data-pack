
execute if score timeleft_t moveroyale_game matches ..300 if score OvertimeActive OvertimeMusic matches 0 run function master:overtime/init
execute if score OvertimeActive OvertimeMusic matches 1 run return 0

execute if score gameflag moveroyale_game matches 1 run schedule function moveroyale:music/loop 1t