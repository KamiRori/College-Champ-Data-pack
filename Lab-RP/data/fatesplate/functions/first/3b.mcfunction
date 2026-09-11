
schedule clear fatesplate:first/sfx

# execute as @a at @s run playsound sound.game_revealed record @s ~ ~ ~ 1 0.5
function fatesplate:block_display/1
title @a times 0 40 10
title @a title ""
title @a subtitle ["",{"selector":"@e[type=marker,tag=fatesanchor,tag=1,limit=1]"}]

tellraw @a ["","§e[§r礤§e] ",{"selector":"@e[type=marker,tag=fatesanchor,tag=1,limit=1]"},"!"]