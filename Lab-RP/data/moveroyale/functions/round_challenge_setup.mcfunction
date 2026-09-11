
schedule clear moveroyale:beginlistener/loop_challenge_setup

execute store result storage moveroyale:core round int 1 run scoreboard players get round moveroyale_game
function moveroyale:macro_utils/copy_challenge_type with storage moveroyale:core

execute if score round_type moveroyale_game matches 1 run function moveroyale:challenge_set/parkour/init
execute if score round_type moveroyale_game matches 2 run function moveroyale:challenge_set/iceboat/init
execute if score round_type moveroyale_game matches 3 run function moveroyale:challenge_set/trident/init
execute if score round_type moveroyale_game matches 4 run function moveroyale:challenge_set/obstacles/init
execute if score round_type moveroyale_game matches 5 run function moveroyale:challenge_set/sprint/init

# Timer
team modify placeholder_3 prefix ["§c回合开始: "]
function master:timer/starting/20s
function moveroyale:beginlistener/loop_start

# Adds Points Indicator at actionbar if not already present.
schedule function moveroyale:actionbar/loop 1t
