
tag @a remove moveroyale_bracket_low
tag @a remove moveroyale_bracket_high
tag @a remove moveroyale_selected

# Counts team players
scoreboard objectives remove temp_team_players
scoreboard objectives add temp_team_players dummy
execute as @a[team=red] run scoreboard players add red temp_team_players 1
execute as @a[team=blue] run scoreboard players add blue temp_team_players 1
execute as @a[team=green] run scoreboard players add green temp_team_players 1
execute as @a[team=yellow] run scoreboard players add yellow temp_team_players 1
execute as @a[team=cyan] run scoreboard players add cyan temp_team_players 1
execute as @a[team=pink] run scoreboard players add pink temp_team_players 1
execute as @a[team=orange] run scoreboard players add orange temp_team_players 1
execute as @a[team=purple] run scoreboard players add purple temp_team_players 1

# Divide by 2.
scoreboard players operation red temp_team_players /= 2 math
scoreboard players operation blue temp_team_players /= 2 math
scoreboard players operation green temp_team_players /= 2 math
scoreboard players operation yellow temp_team_players /= 2 math
scoreboard players operation cyan temp_team_players /= 2 math
scoreboard players operation pink temp_team_players /= 2 math
scoreboard players operation orange temp_team_players /= 2 math
scoreboard players operation purple temp_team_players /= 2 math

# Lockin Difficulty by sorting on each team
data modify storage moveroyale:temp_lockin team set value "red"
function moveroyale:difficulty_lockin/lockin_format with storage moveroyale:temp_lockin
data modify storage moveroyale:temp_lockin team set value "blue"
function moveroyale:difficulty_lockin/lockin_format with storage moveroyale:temp_lockin
data modify storage moveroyale:temp_lockin team set value "green"
function moveroyale:difficulty_lockin/lockin_format with storage moveroyale:temp_lockin
data modify storage moveroyale:temp_lockin team set value "yellow"
function moveroyale:difficulty_lockin/lockin_format with storage moveroyale:temp_lockin
data modify storage moveroyale:temp_lockin team set value "cyan"
function moveroyale:difficulty_lockin/lockin_format with storage moveroyale:temp_lockin
data modify storage moveroyale:temp_lockin team set value "pink"
function moveroyale:difficulty_lockin/lockin_format with storage moveroyale:temp_lockin
data modify storage moveroyale:temp_lockin team set value "orange"
function moveroyale:difficulty_lockin/lockin_format with storage moveroyale:temp_lockin
data modify storage moveroyale:temp_lockin team set value "purple"
function moveroyale:difficulty_lockin/lockin_format with storage moveroyale:temp_lockin

# Titles everyone about their new brackets
title @a times 5 40 5
title @a title "§a组别确定！"
title @a[tag=moveroyale_bracket_high] subtitle "你将参与§c高级组§f的游戏。"
title @a[tag=moveroyale_bracket_low] subtitle "你将参与§a初级组§f的游戏。"

tp @a[tag=moveroyale_bracket_high] 200011 -11 200000
tp @a[tag=moveroyale_bracket_low] 199989 -11 200000

tellraw @a ["§e[§r峟§e] 根据前2回合的表现，已锁定各玩家的组别。第§f4§e回合开始将根据玩家回合末的当前得分发生§c淘汰§e，争取更高的名次，活到最后吧！"]

# Start a 10s next round timer
function master:timer/nextround/10s
function moveroyale:beginlistener/loop_challenge_setup
