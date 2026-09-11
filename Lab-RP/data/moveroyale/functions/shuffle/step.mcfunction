
# Sprint mode will not come with first version.
execute store result storage moveroyale:shuffle mode int 1 store result score result moveroyale_shuffle run random value 1..4
execute store result storage moveroyale:shuffle step int 1 run scoreboard players get step moveroyale_shuffle

execute if score result moveroyale_shuffle matches 1 if score parkour moveroyale_shuffle matches ..1 run function moveroyale:shuffle/setmode/parkour with storage moveroyale:shuffle
execute if score result moveroyale_shuffle matches 2 if score iceboat moveroyale_shuffle matches ..1 run function moveroyale:shuffle/setmode/iceboat with storage moveroyale:shuffle
execute if score result moveroyale_shuffle matches 3 if score trident moveroyale_shuffle matches ..1 run function moveroyale:shuffle/setmode/trident with storage moveroyale:shuffle
execute if score result moveroyale_shuffle matches 4 if score obstacles moveroyale_shuffle matches ..1 run function moveroyale:shuffle/setmode/obstacles with storage moveroyale:shuffle
execute if score result moveroyale_shuffle matches 5 if score sprint moveroyale_shuffle matches ..1 run function moveroyale:shuffle/setmode/sprint with storage moveroyale:shuffle

execute if score step moveroyale_shuffle matches 1..8 run function moveroyale:shuffle/step