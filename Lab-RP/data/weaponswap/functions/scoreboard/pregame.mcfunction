
scoreboard objectives remove ws_sb
scoreboard objectives add ws_sb dummy ["",{"text": "Battleswap Maze","color": "yellow","bold": true}]
scoreboard objectives setdisplay sidebar ws_sb
scoreboard objectives modify ws_sb numberformat fixed " "

# scoreboard players set §1 ws_sb 1
# scoreboard players set §2 ws_sb 2
scoreboard players set §3 ws_sb 3

scoreboard players set §5 ws_sb 5
scoreboard players set §6 ws_sb 6
scoreboard players set §7 ws_sb 7

team modify placeholder_1 prefix ""
team modify placeholder_2 prefix ""
team modify placeholder_3 prefix ""
team modify placeholder_4 prefix ""
team modify placeholder_5 prefix ""
team modify placeholder_6 prefix ["",{"text": "地图: ","color": "aqua"}]
team modify placeholder_7 prefix ""

team modify placeholder_1 suffix ""
team modify placeholder_2 suffix ""
team modify placeholder_3 suffix ""
team modify placeholder_4 suffix ""
team modify placeholder_5 suffix ""

team modify placeholder_7 suffix "§8Casual"

execute if score eventmode tourney_stats matches 1 run function weaponswap:scoreboard/macro_gameline with storage master:event_status


team modify placeholder_6 prefix ["",{"text": "地图: ","color": "aqua"}]
execute if score map ws_game matches 1 run team modify placeholder_6 suffix ["",{"text": "Dungeon"}]

team modify placeholder_5 prefix ["",{"text": "回合: ","color": "green"}]
team modify placeholder_5 suffix ["",{"text": "1/3"}]

function master:timer/starting/weaponswap