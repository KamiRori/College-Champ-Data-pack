
scoreboard players set RoundActive tourney_stats 1

# Item
give @a[team=!spec] stick{Enchantments:[{id:"knockback",lvl:3}]}
effect give @a resistance infinite 4 true
effect give @a speed infinite 0 true

schedule clear fatesplate:player
execute as @a run attribute @s generic.attack_damage base set 0.0001
execute as @a run attribute @s generic.knockback_resistance base set 0

# Invul
scoreboard objectives add fatesplate_invul dummy
scoreboard players set @a fatesplate_invul 0

# Team Glowing
scoreboard objectives add glowing_to_team dummy
effect give @a glowing infinite 0 true

# Starting Votes
scoreboard objectives add fatesplate_playervotes dummy
scoreboard players set @a[team=!spec] fatesplate_playervotes 4

scoreboard objectives add fatesplate_multi_type dummy
scoreboard objectives add fatesplate_this_y dummy

# Destroy gates
fill 11015 112 11008 11017 112 11006 air destroy
fill 11006 112 11015 11008 112 11017 air destroy
fill 10992 112 11015 10994 112 11017 air destroy
fill 10983 112 11006 10985 112 11008 air destroy
fill 10983 112 10992 10985 112 10994 air destroy
fill 10992 112 10983 10994 112 10985 air destroy
fill 11006 112 10983 11008 112 10985 air destroy
fill 11015 112 10992 11017 112 10994 air destroy
# Distribute tools
schedule function fatesplate:tools/distribute 5s

# FX
title @a times 0 40 20
title @a subtitle ""
title @a title ["",{"text": "开始投票吧！","color":"green"}]

tellraw @a ["§b[§r礤§b] 投票开始！",{"text":"5","color":"#E3E3E3"},"§b秒后将发放小道具且所有黑色区域将塌陷！"]

team modify placeholder_5 suffix ""
team modify placeholder_5 prefix ["",{"text": "投票结束: ","bold": true,"color":"red"}]

scoreboard players set phase tourney_stats 3

function master:timer/fatesplate/30s

playsound minecraft:block.note_block.pling block @a 0 0 0 1000000

tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7PREPARING_VOTE §f-> VOTING"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

# Init combat tag
function utils:combattag/init

# Detection
function fatesplate:vote/vote_detect