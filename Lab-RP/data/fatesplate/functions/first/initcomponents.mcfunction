
kill @e[type=marker,tag=fatesanchor]

summon marker 11000 50 11000 {Tags:["fatesanchor","1"]}
summon marker 11000 50 11000 {Tags:["fatesanchor","2"]}
summon marker 11000 50 11000 {Tags:["fatesanchor","3"]}
summon marker 11000 50 11000 {Tags:["fatesanchor","4"]}
summon marker 11000 50 11000 {Tags:["fatesanchor","5"]}
summon marker 11000 50 11000 {Tags:["fatesanchor","6"]}
summon marker 11000 50 11000 {Tags:["fatesanchor","7"]}
summon marker 11000 50 11000 {Tags:["fatesanchor","8"]}

function fatesplate:first/loadpreset
function fatesplate:first/setname

# summon block_display ~ ~ ~ {block_state:{Name:"note_block",Properties:{note:"100010"}}}}