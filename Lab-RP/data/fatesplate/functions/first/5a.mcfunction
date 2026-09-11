
function fatesplate:structure/plate/3

function fatesplate:first/sfx

execute as @e[type=block_display,tag=fatesplate,tag=3] run data merge entity @s {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"23",powered:"false"}}}
schedule function fatesplate:first/5b 2s