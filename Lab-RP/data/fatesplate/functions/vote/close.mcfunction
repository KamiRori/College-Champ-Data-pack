
scoreboard players set RoundActive tourney_stats 0

schedule clear fatesplate:vote/vote_detect

scoreboard players set phase tourney_stats 4
function master:timer/fatesplate/8s

function fatesplate:vote/count_vote
tellraw @a ["§e[§r礤§e] 投票结果已锁定，选定的游戏是……"]
team modify placeholder_5 suffix ""
team modify placeholder_5 prefix ["",{"text": "游戏决定: ","bold": true,"color":"red"}]

tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7VOTING §f-> VOTE_CLOSED"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
