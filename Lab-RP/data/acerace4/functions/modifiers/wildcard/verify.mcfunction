
execute if score @s ar_wildcard_playerSeed matches 0 run scoreboard players remove @s ar_indvscore 1
execute if score @s ar_wildcard_playerSeed matches 0 run tellraw @s ["[§c-1分§r] §c“你暂时无法触发此计分项！”"]


execute if score @s ar_wildcard_call matches 1 if score @s ar_wildcard_choiceA matches 1 run function acerace4:modifiers/wildcard/effect/1
execute if score @s ar_wildcard_call matches 2 if score @s ar_wildcard_choiceA matches 2 run function acerace4:modifiers/wildcard/effect/2
execute if score @s ar_wildcard_call matches 3 if score @s ar_wildcard_choiceA matches 3 run function acerace4:modifiers/wildcard/effect/3
execute if score @s ar_wildcard_call matches 4 if score @s ar_wildcard_choiceA matches 4 run function acerace4:modifiers/wildcard/effect/4
execute if score @s ar_wildcard_call matches 5 if score @s ar_wildcard_choiceA matches 5 run function acerace4:modifiers/wildcard/effect/5
execute if score @s ar_wildcard_call matches 6 if score @s ar_wildcard_choiceA matches 6 run function acerace4:modifiers/wildcard/effect/6
execute if score @s ar_wildcard_call matches 7 if score @s ar_wildcard_choiceA matches 7 run function acerace4:modifiers/wildcard/effect/7
execute if score @s ar_wildcard_call matches 8 if score @s ar_wildcard_choiceA matches 8 run function acerace4:modifiers/wildcard/effect/8
execute if score @s ar_wildcard_call matches 9 if score @s ar_wildcard_choiceA matches 9 run function acerace4:modifiers/wildcard/effect/9
execute if score @s ar_wildcard_call matches 10 if score @s ar_wildcard_choiceA matches 10 run function acerace4:modifiers/wildcard/effect/10
execute if score @s ar_wildcard_call matches 11 if score @s ar_wildcard_choiceA matches 11 run function acerace4:modifiers/wildcard/effect/11
execute if score @s ar_wildcard_call matches 12 if score @s ar_wildcard_choiceA matches 12 run function acerace4:modifiers/wildcard/effect/12

execute if score @s ar_wildcard_call matches 1 if score @s ar_wildcard_choiceB matches 1 run function acerace4:modifiers/wildcard/effect/1
execute if score @s ar_wildcard_call matches 2 if score @s ar_wildcard_choiceB matches 2 run function acerace4:modifiers/wildcard/effect/2
execute if score @s ar_wildcard_call matches 3 if score @s ar_wildcard_choiceB matches 3 run function acerace4:modifiers/wildcard/effect/3
execute if score @s ar_wildcard_call matches 4 if score @s ar_wildcard_choiceB matches 4 run function acerace4:modifiers/wildcard/effect/4
execute if score @s ar_wildcard_call matches 5 if score @s ar_wildcard_choiceB matches 5 run function acerace4:modifiers/wildcard/effect/5
execute if score @s ar_wildcard_call matches 6 if score @s ar_wildcard_choiceB matches 6 run function acerace4:modifiers/wildcard/effect/6
execute if score @s ar_wildcard_call matches 7 if score @s ar_wildcard_choiceB matches 7 run function acerace4:modifiers/wildcard/effect/7
execute if score @s ar_wildcard_call matches 8 if score @s ar_wildcard_choiceB matches 8 run function acerace4:modifiers/wildcard/effect/8
execute if score @s ar_wildcard_call matches 9 if score @s ar_wildcard_choiceB matches 9 run function acerace4:modifiers/wildcard/effect/9
execute if score @s ar_wildcard_call matches 10 if score @s ar_wildcard_choiceB matches 10 run function acerace4:modifiers/wildcard/effect/10
execute if score @s ar_wildcard_call matches 11 if score @s ar_wildcard_choiceB matches 11 run function acerace4:modifiers/wildcard/effect/11
execute if score @s ar_wildcard_call matches 12 if score @s ar_wildcard_choiceB matches 12 run function acerace4:modifiers/wildcard/effect/12


scoreboard players set @s ar_wildcard_call 0
scoreboard players set @s ar_wildcard_choiceA 0
scoreboard players set @s ar_wildcard_choiceB 0
scoreboard players set @s ar_wildcard_playerSeed 0