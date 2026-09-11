
function moveroyale:bossbar/round_type
tellraw @a ["§b[§r峟§b] 回合顺序已确定！游戏即将开始……"]

tellraw @a[tag=admin] ["§b[§r峟§b] Mode Sequence for this game is:"]
tellraw @a[tag=admin] [{"score":{"name": "1","objective": "moveroyale_roundtype"}},{"score":{"name": "2","objective": "moveroyale_roundtype"}},{"score":{"name": "3","objective": "moveroyale_roundtype"}},{"score":{"name": "4","objective": "moveroyale_roundtype"}},{"score":{"name": "5","objective": "moveroyale_roundtype"}},{"score":{"name": "6","objective": "moveroyale_roundtype"}},{"score":{"name": "7","objective": "moveroyale_roundtype"}},{"score":{"name": "8","objective": "moveroyale_roundtype"}}]
function master:timer/nextround/10s
function moveroyale:beginlistener/loop_nextround
team modify placeholder_3 prefix "§c游戏开始: "