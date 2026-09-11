
# clear
schedule clear master:timer/nextround/sec

# Flag
scoreboard players set phase_finale_prelude moveroyale_game 1
# Player Status Prepare
## Find the contestants.
tag @a[team=!spec,tag=!moveroyale_eliminated] add moveroyale_finalist
tag @a[team=!spec,tag=!moveroyale_eliminated] add moveroyale_bracket_high
tag @a remove moveroyale_bracket_low
tag @a remove moveroyale_bracket_selected

## Find the top 2 scoring players
scoreboard players set $1stScore moveroyale_game -1
scoreboard players set $2ndScore moveroyale_game -1

### 1ST
execute as @a[tag=moveroyale_finalist] run scoreboard players operation $1stScore moveroyale_game > @s moveroyale_indv
execute as @a[tag=moveroyale_finalist] if score @s moveroyale_indv = $1stScore moveroyale_game run tag @s add mr_pre_1st
#### ONLY SELECT ONE PLAYER
tag @r[tag=mr_pre_1st] add mr_finalist_1st
tag @a remove mr_pre_1st

### 2ND
execute as @a[tag=moveroyale_finalist,tag=!mr_finalist_1st] run scoreboard players operation $2ndScore moveroyale_game > @s moveroyale_indv
execute as @a[tag=moveroyale_finalist,tag=!mr_finalist_1st] if score @s moveroyale_indv = $2ndScore moveroyale_game run tag @s add mr_pre_2nd
#### ONLY SELECT ONE PLAYER
tag @r[tag=mr_pre_2nd] add mr_finalist_2nd
tag @a remove mr_pre_2nd
#### MARKS CREDITS
scoreboard players set @a[tag=moveroyale_finalist] moveroyale_finale_credits 0

# Teleport and GM
clear @a
gamemode adventure @a[tag=moveroyale_finalist]
gamemode spectator @a[tag=!moveroyale_finalist]
effect clear @a

tp @a[tag=!moveroyale_finalist] 201001 15 201030 180 0
tp @a[tag=moveroyale_finalist] 201000 3 200997 0 0
tp @a[tag=mr_finalist_1st] 200991.5 1 201004.5 -90 0
tp @a[tag=mr_finalist_2nd] 201009.5 1 201004.5 90 0

# Timer
team modify placeholder_3 prefix ["§c开始选定："]
scoreboard players set timeleft_t moveroyale_game 600
function moveroyale:timer/finale_prelude
scoreboard players set pause master.timer 0
# Intro
schedule function moveroyale:finale/intro/1 2s
schedule function moveroyale:finale/intro/2 12s

# bossbar
function moveroyale:bossbar/round_type_finale
