
scoreboard objectives setdisplay sidebar.team.red moveroyale_sb_red
scoreboard objectives setdisplay sidebar.team.blue moveroyale_sb_blue
scoreboard objectives setdisplay sidebar.team.green moveroyale_sb_green
scoreboard objectives setdisplay sidebar.team.yellow moveroyale_sb_yellow
scoreboard objectives setdisplay sidebar.team.dark_aqua moveroyale_sb_cyan
scoreboard objectives setdisplay sidebar.team.gold moveroyale_sb_orange
scoreboard objectives setdisplay sidebar.team.light_purple moveroyale_sb_pink
scoreboard objectives setdisplay sidebar.team.dark_purple moveroyale_sb_purple



scoreboard players set §1 moveroyale_sb 11
scoreboard players set §1 moveroyale_sb_red 11
scoreboard players set §1 moveroyale_sb_blue 11
scoreboard players set §1 moveroyale_sb_green 11
scoreboard players set §1 moveroyale_sb_yellow 11
scoreboard players set §1 moveroyale_sb_cyan 11
scoreboard players set §1 moveroyale_sb_orange 11
scoreboard players set §1 moveroyale_sb_pink 11
scoreboard players set §1 moveroyale_sb_purple 11


team modify placeholder_1 prefix ""
team modify placeholder_1 suffix "§b§l本游戏积分:"

scoreboard players set §2 moveroyale_sb 12
scoreboard players set §2 moveroyale_sb_red 12
scoreboard players set §2 moveroyale_sb_blue 12
scoreboard players set §2 moveroyale_sb_green 12
scoreboard players set §2 moveroyale_sb_yellow 12
scoreboard players set §2 moveroyale_sb_cyan 12
scoreboard players set §2 moveroyale_sb_orange 12
scoreboard players set §2 moveroyale_sb_pink 12
scoreboard players set §2 moveroyale_sb_purple 12

team modify placeholder_6 suffix ""
team modify placeholder_6 prefix ""


scoreboard players set §3 moveroyale_sb 14
scoreboard players set §3 moveroyale_sb_red 14
scoreboard players set §3 moveroyale_sb_blue 14
scoreboard players set §3 moveroyale_sb_green 14
scoreboard players set §3 moveroyale_sb_yellow 14
scoreboard players set §3 moveroyale_sb_cyan 14
scoreboard players set §3 moveroyale_sb_orange 14
scoreboard players set §3 moveroyale_sb_pink 14
scoreboard players set §3 moveroyale_sb_purple 14
team modify placeholder_3 prefix ["§c§l剩余时间："]


scoreboard players set §4 moveroyale_sb 15
scoreboard players set §4 moveroyale_sb_red 15
scoreboard players set §4 moveroyale_sb_blue 15
scoreboard players set §4 moveroyale_sb_green 15
scoreboard players set §4 moveroyale_sb_yellow 15
scoreboard players set §4 moveroyale_sb_cyan 15
scoreboard players set §4 moveroyale_sb_orange 15
scoreboard players set §4 moveroyale_sb_pink 15
scoreboard players set §4 moveroyale_sb_purple 15

scoreboard players set §5 moveroyale_sb 16
scoreboard players set §5 moveroyale_sb_red 16
scoreboard players set §5 moveroyale_sb_blue 16
scoreboard players set §5 moveroyale_sb_green 16
scoreboard players set §5 moveroyale_sb_yellow 16
scoreboard players set §5 moveroyale_sb_cyan 16
scoreboard players set §5 moveroyale_sb_orange 16
scoreboard players set §5 moveroyale_sb_pink 16
scoreboard players set §5 moveroyale_sb_purple 16


scoreboard objectives modify moveroyale_sb_red numberformat fixed " "
scoreboard objectives modify moveroyale_sb_blue numberformat fixed " "
scoreboard objectives modify moveroyale_sb_green numberformat fixed " "
scoreboard objectives modify moveroyale_sb_yellow numberformat fixed " "
scoreboard objectives modify moveroyale_sb_cyan numberformat fixed " "
scoreboard objectives modify moveroyale_sb_orange numberformat fixed " "
scoreboard objectives modify moveroyale_sb_pink numberformat fixed " "
scoreboard objectives modify moveroyale_sb_purple numberformat fixed " "

scoreboard players set §9 moveroyale_sb 0
scoreboard players set §9 moveroyale_sb_red 0
scoreboard players set §9 moveroyale_sb_blue 0
scoreboard players set §9 moveroyale_sb_green 0
scoreboard players set §9 moveroyale_sb_yellow 0
scoreboard players set §9 moveroyale_sb_cyan 0
scoreboard players set §9 moveroyale_sb_orange 0
scoreboard players set §9 moveroyale_sb_pink 0
scoreboard players set §9 moveroyale_sb_purple 0
team modify placeholder_9 prefix [""]
team modify placeholder_9 suffix [""]

scoreboard players set §8 moveroyale_sb -1
scoreboard players set §8 moveroyale_sb_red -1
scoreboard players set §8 moveroyale_sb_blue -1
scoreboard players set §8 moveroyale_sb_green -1
scoreboard players set §8 moveroyale_sb_yellow -1
scoreboard players set §8 moveroyale_sb_cyan -1
scoreboard players set §8 moveroyale_sb_orange -1
scoreboard players set §8 moveroyale_sb_pink -1
scoreboard players set §8 moveroyale_sb_purple -1
scoreboard players set §8 moveroyale_sb -1

team modify placeholder_8 prefix ["§b关卡作者: "]
team modify placeholder_8 suffix ["-"]

scoreboard players set §7 moveroyale_sb -2
scoreboard players set §7 moveroyale_sb_red -2
scoreboard players set §7 moveroyale_sb_blue -2
scoreboard players set §7 moveroyale_sb_green -2
scoreboard players set §7 moveroyale_sb_yellow -2
scoreboard players set §7 moveroyale_sb_cyan -2
scoreboard players set §7 moveroyale_sb_orange -2
scoreboard players set §7 moveroyale_sb_pink -2
scoreboard players set §7 moveroyale_sb_purple -2

team modify placeholder_7 prefix ["§c回合淘汰积分: "]
team modify placeholder_7 suffix ["-"]

# 1
function utils:scoreboardrank/init
function moveroyale:scoreboard/refresh