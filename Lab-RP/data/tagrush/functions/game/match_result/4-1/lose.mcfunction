



# General
$execute as @a[team=$(team)] run attribute @s generic.attack_damage base set -100

$title @a[team=$(team)] times 10 60 10
$title @a[team=$(team)] title [{"text": "你输了！","color": "red","bold": true}]
$execute as @a[team=$(team)] at @s run playsound minecraft:sound.team_eliminated record @s

execute store result storage tagrush:scb_tmp wins int 1 run scoreboard players get $(team) tagrush_wins
execute store result storage tagrush:scb_tmp round int 1 run scoreboard players get round tagrush_game
data modify storage tagrush:scb_tmp team set value "$(team)"

function tagrush:game/match_result/macro_scbline with storage tagrush:scb_tmp

# Splits Points according to Team players
$scoreboard players operation @a[team=$(team)] tagrush_indvscore += 4-1_lose tagrush_stats 
$tellraw @a[team=$(team)] ["[§6",{"score":{"name": "4-1_lose","objective": "tagrush_stats"},"color": "gold"},"§6分§r] ","§c[§r鄵§c] ",{"text": "对手存活玩家更多，回合失败！ (1-4)","color": "red","bold": true}]
