
# Blinks at 0.1s interval for the last 3s
scoreboard players add $bossbar_blink tagrush_game 1
scoreboard players operation $bossbar_blink tagrush_game %= 4 math

# Bossbar Text Update
scoreboard players operation $timeleft_sec tagrush_game = timeleft_t tagrush_game
scoreboard players operation $timeleft_ms tagrush_game = timeleft_t tagrush_game
scoreboard players reset $timeleft_ms_pad tagrush_game

scoreboard players operation $timeleft_sec tagrush_game /= 20 math
scoreboard players operation $timeleft_ms tagrush_game %= 20 math
scoreboard players operation $timeleft_ms tagrush_game *= 5 math
execute if score $timeleft_ms tagrush_game matches 0..9 run scoreboard players set $timeleft_ms_pad tagrush_game 0

execute if score timeleft_t tagrush_game matches 300.. run bossbar set tagrush_timer name ["§a切分时间: ",{"score":{"name":"$timeleft_sec","objective":"tagrush_game"},"bold": true,"color": "green"},"§a§l.",{"score":{"name":"$timeleft_mspad","objective":"tagrush_game"},"bold": true,"color": "green"},{"score":{"name":"$timeleft_ms","objective":"tagrush_game"},"bold": true,"color": "green"},"§a§ls"]
execute if score timeleft_t tagrush_game matches 150..299 run bossbar set tagrush_timer name ["§e切分时间: ",{"score":{"name":"$timeleft_sec","objective":"tagrush_game"},"bold": true,"color": "yellow"},"§e§l.",{"score":{"name":"$timeleft_mspad","objective":"tagrush_game"},"bold": true,"color": "yellow"},{"score":{"name":"$timeleft_ms","objective":"tagrush_game"},"bold": true,"color": "yellow"},"§e§ls"]
execute if score timeleft_t tagrush_game matches 61..149 run bossbar set tagrush_timer name ["§c切分时间: ",{"score":{"name":"$timeleft_sec","objective":"tagrush_game"},"bold": true,"color": "red"},"§c§l.",{"score":{"name":"$timeleft_mspad","objective":"tagrush_game"},"bold": true,"color": "red"},{"score":{"name":"$timeleft_ms","objective":"tagrush_game"},"bold": true,"color": "red"},"§c§ls"]
execute if score timeleft_t tagrush_game matches 0..61 if score $bossbar_blink tagrush_game matches 0..1 run bossbar set tagrush_timer name ["§c切分时间: ",{"score":{"name":"$timeleft_sec","objective":"tagrush_game"},"bold": true,"color": "red"},"§c§l.",{"score":{"name":"$timeleft_mspad","objective":"tagrush_game"},"bold": true,"color": "red"},{"score":{"name":"$timeleft_ms","objective":"tagrush_game"},"bold": true,"color": "red"},"§c§ls"]
execute if score timeleft_t tagrush_game matches 0..61 if score $bossbar_blink tagrush_game matches 2..3 run bossbar set tagrush_timer name ["§c切分时间: ",{"score":{"name":"$timeleft_sec","objective":"tagrush_game"},"bold": true,"color": "white"},"§f§l.",{"score":{"name":"$timeleft_mspad","objective":"tagrush_game"},"bold": true,"color": "white"},{"score":{"name":"$timeleft_ms","objective":"tagrush_game"},"bold": true,"color": "white"},"§f§ls"]

execute if score timeleft_t tagrush_game matches 300.. run bossbar set tagrush_timer color green
execute if score timeleft_t tagrush_game matches 150..299 run bossbar set tagrush_timer color yellow
execute if score timeleft_t tagrush_game matches ..149 run bossbar set tagrush_timer color red
# Bossbar Value Update
execute store result bossbar tagrush_timer value run scoreboard players get timeleft_t tagrush_game
 
