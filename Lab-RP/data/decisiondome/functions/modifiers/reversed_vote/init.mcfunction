


scoreboard objectives add dd_temp_rev_vote dummy
scoreboard players set summoned dd_temp_rev_vote 0
function decisiondome:modifiers/reversed_vote/summon

execute as @a at @s run spawnpoint
give @a crossbow{Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}]}
give @a arrow 5
clear @a egg

title @a title ["",{"text": "！吧票投始开","color":"green"}]