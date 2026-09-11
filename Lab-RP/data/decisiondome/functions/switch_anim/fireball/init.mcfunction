

scoreboard objectives add anim_1 dummy
scoreboard players set anim_time anim_1 0
scoreboard players set max_anim_time anim_1 190

summon marker -9981 161 -10017 {Tags:["anim_1","fireballpos"]}
summon block_display -9981 161 -10017 {block_state:{Name:"minecraft:magma_block",Properties:{}},transformation:[5.0000f,0.0000f,0.0000f,-2.5000f,0.0000f,5.0000f,0.0000f,-2.5000f,0.0000f,0.0000f,5.0000f,-2.5000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["anim_1"]}
function decisiondome:switch_anim/fireball/loop