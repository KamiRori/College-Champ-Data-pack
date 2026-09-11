



# General
$execute as @a[team=$(team)] run attribute @s generic.attack_damage base set -100

scoreboard players add completed tagrush_game 1
$scoreboard players add $(team) tagrush_wins 1
$scoreboard players set $(team)win tagrush_cache 1

$title @a[team=$(team)] times 10 60 10
$title @a[team=$(team)] title [{"text": "你赢了！","color": "green","bold": true}]
$execute as @a[team=$(team)] at @s run playsound minecraft:sound.majoracquire record @s ~ ~ ~ 1
$execute as @a[team=$(team)] at @s run playsound minecraft:sound.bigcoins record @s ~ ~ ~ 1

execute store result storage tagrush:scb_tmp wins int 1 run scoreboard players get $(team) tagrush_wins
execute store result storage tagrush:scb_tmp round int 1 run scoreboard players get round tagrush_game
data modify storage tagrush:scb_tmp team set value "$(team)"

function tagrush:game/match_result/macro_scbline with storage tagrush:scb_tmp

# Splits Points according to Team players
$scoreboard players operation @a[team=$(team)] tagrush_indvscore += else_win tagrush_stats 
$tellraw @a[team=$(team)] ["[§6+",{"score":{"name": "else_win","objective": "tagrush_stats"},"color": "gold"},"§6分§r] ","§a[§r彀§a] ",{"text": "你的队伍存活玩家更多，回合获胜！","color": "green","bold": true}]

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"translate":"team.$(team)"},"§f获得了胜利。 (其他玩家数)"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
