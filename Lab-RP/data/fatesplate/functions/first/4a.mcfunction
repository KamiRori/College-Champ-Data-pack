
function fatesplate:structure/plate/2

function fatesplate:first/sfx
execute as @e[type=block_display,tag=fatesplate,tag=2] run data merge entity @s {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"23",powered:"false"}}}
schedule function fatesplate:first/4b 2s