
scoreboard players set $step moveroyale_playing_copy 0
scoreboard players set @a[tag=moveroyale_eliminated] moveroyale_playing_copy -1
scoreboard players set @a[team=spec] moveroyale_playing_copy -1
scoreboard players set @a[tag=!moveroyale_eliminated,team=!spec,tag=moveroyale_bracket_low] moveroyale_playing_copy 0

function moveroyale:playing_copy/step
