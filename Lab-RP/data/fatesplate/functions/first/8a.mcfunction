
function fatesplate:structure/plate/6

function fatesplate:first/sfx
execute as @e[type=block_display,tag=fatesplate,tag=6] run data merge entity @s {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"23",powered:"false"}}}
schedule function fatesplate:first/8b 2s