

# Gets random sequence and effect pair
execute store result score @s ar_wildcard_playerSeed store result storage ar:rng seed int 1 run random value 1..9999999
function acerace4:modifiers/wildcard/macro_pickrandom with storage ar:rng

tellraw @s ""
tellraw @s ["§6[§r瀞§6] §eWild Card Pick:"]
execute if score @s ar_wildcard_choiceA matches 1 run function acerace4:modifiers/wildcard/call_prompt/1
execute if score @s ar_wildcard_choiceA matches 2 run function acerace4:modifiers/wildcard/call_prompt/2
execute if score @s ar_wildcard_choiceA matches 3 run function acerace4:modifiers/wildcard/call_prompt/3
execute if score @s ar_wildcard_choiceA matches 4 run function acerace4:modifiers/wildcard/call_prompt/4
execute if score @s ar_wildcard_choiceA matches 5 run function acerace4:modifiers/wildcard/call_prompt/5
execute if score @s ar_wildcard_choiceA matches 6 run function acerace4:modifiers/wildcard/call_prompt/6
execute if score @s ar_wildcard_choiceA matches 7 run function acerace4:modifiers/wildcard/call_prompt/7
execute if score @s ar_wildcard_choiceA matches 8 run function acerace4:modifiers/wildcard/call_prompt/8
execute if score @s ar_wildcard_choiceA matches 9 run function acerace4:modifiers/wildcard/call_prompt/9
execute if score @s ar_wildcard_choiceA matches 10 run function acerace4:modifiers/wildcard/call_prompt/10
execute if score @s ar_wildcard_choiceA matches 11 run function acerace4:modifiers/wildcard/call_prompt/11
execute if score @s ar_wildcard_choiceA matches 12 run function acerace4:modifiers/wildcard/call_prompt/12

execute if score @s ar_wildcard_choiceB matches 1 run function acerace4:modifiers/wildcard/call_prompt/1
execute if score @s ar_wildcard_choiceB matches 2 run function acerace4:modifiers/wildcard/call_prompt/2
execute if score @s ar_wildcard_choiceB matches 3 run function acerace4:modifiers/wildcard/call_prompt/3
execute if score @s ar_wildcard_choiceB matches 4 run function acerace4:modifiers/wildcard/call_prompt/4
execute if score @s ar_wildcard_choiceB matches 5 run function acerace4:modifiers/wildcard/call_prompt/5
execute if score @s ar_wildcard_choiceB matches 6 run function acerace4:modifiers/wildcard/call_prompt/6
execute if score @s ar_wildcard_choiceB matches 7 run function acerace4:modifiers/wildcard/call_prompt/7
execute if score @s ar_wildcard_choiceB matches 8 run function acerace4:modifiers/wildcard/call_prompt/8
execute if score @s ar_wildcard_choiceB matches 9 run function acerace4:modifiers/wildcard/call_prompt/9
execute if score @s ar_wildcard_choiceB matches 10 run function acerace4:modifiers/wildcard/call_prompt/10
execute if score @s ar_wildcard_choiceB matches 11 run function acerace4:modifiers/wildcard/call_prompt/11
execute if score @s ar_wildcard_choiceB matches 12 run function acerace4:modifiers/wildcard/call_prompt/12

# Enables call scoreboard
scoreboard players enable @s ar_wildcard_call