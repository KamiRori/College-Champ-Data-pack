


execute unless score pause master.timer matches 1 run scoreboard players remove timeleft_t moveroyale_game 1
scoreboard players add time_elapsed_tick moveroyale_game 1

# 正计时显示
scoreboard players operation te_ms moveroyale_game = time_elapsed_tick moveroyale_game
scoreboard players operation te_s moveroyale_game = time_elapsed_tick moveroyale_game
data modify storage moveroyale:timer pad set value ""
data modify storage moveroyale:timer pad2 set value ""

execute store result storage moveroyale:timer s int 1 run scoreboard players operation te_s moveroyale_game /= 20 math
scoreboard players operation te_ms moveroyale_game %= 20 math
execute store result storage moveroyale:timer ms int 1 run scoreboard players operation te_ms moveroyale_game *= 50 math
execute if score te_ms moveroyale_game matches 0..50 run data modify storage moveroyale:timer pad set value "0"
execute if score te_ms moveroyale_game matches 0 run data modify storage moveroyale:timer pad set value "0"
function moveroyale:timer/macro_time_elapsed with storage moveroyale:timer

scoreboard players reset timeleft_s
scoreboard players reset timeleft_m


scoreboard players operation timeleft_s moveroyale_game = timeleft_t moveroyale_game

scoreboard players add timeleft_s moveroyale_game 19
scoreboard players operation timeleft_s moveroyale_game /= 20 math
scoreboard players operation timeleft_m moveroyale_game = timeleft_s moveroyale_game

scoreboard players operation timeleft_s moveroyale_game %= 60 math
scoreboard players operation timeleft_m moveroyale_game /= 60 math

scoreboard players operation second master.timer = timeleft_s moveroyale_game
scoreboard players operation minute master.timer = timeleft_m moveroyale_game

# Bossbar Ref
scoreboard players reset sec_pad master.timer
scoreboard players reset min_pad master.timer

execute if score second master.timer matches 0..9 run scoreboard players set sec_pad master.timer 0
execute if score minute master.timer matches 0..9 run scoreboard players set min_pad master.timer 0

data modify storage generic.timer sec_pad set value ""
data modify storage generic.timer min_pad set value ""

execute if score second master.timer matches 0..9 run data modify storage generic.timer sec_pad set value "0"
execute if score minute master.timer matches 0..9 run data modify storage generic.timer min_pad set value "0"

execute store result storage generic.timer second int 1 run scoreboard players get second master.timer
execute store result storage generic.timer minute int 1 run scoreboard players get minute master.timer

function master:timer/timeleft/macro_time_uniform with storage generic.timer

# Time runs out.
execute if score timeleft_t moveroyale_game matches ..0 run function moveroyale:difficulty_select/select_end
execute if score timeleft_t moveroyale_game matches ..0 run return 0
# LOOP
schedule function moveroyale:timer/selection_timer 1t