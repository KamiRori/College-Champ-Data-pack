#region Initial
scoreboard objectives remove moveroyale_sb
scoreboard objectives add moveroyale_sb dummy [{"text": "Move Royale","color": "yellow","bold": true}]
scoreboard objectives add moveroyale_sb_red dummy [{"text": "Move Royale","color": "yellow","bold": true}]
scoreboard objectives add moveroyale_sb_blue dummy [{"text": "Move Royale","color": "yellow","bold": true}]
scoreboard objectives add moveroyale_sb_green dummy [{"text": "Move Royale","color": "yellow","bold": true}]
scoreboard objectives add moveroyale_sb_yellow dummy [{"text": "Move Royale","color": "yellow","bold": true}]
scoreboard objectives add moveroyale_sb_cyan dummy [{"text": "Move Royale","color": "yellow","bold": true}]
scoreboard objectives add moveroyale_sb_orange dummy [{"text": "Move Royale","color": "yellow","bold": true}]
scoreboard objectives add moveroyale_sb_pink dummy [{"text": "Move Royale","color": "yellow","bold": true}]
scoreboard objectives add moveroyale_sb_purple dummy [{"text": "Move Royale","color": "yellow","bold": true}]


scoreboard objectives setdisplay sidebar moveroyale_sb
scoreboard objectives modify moveroyale_sb numberformat fixed " "

#endregion

# LINES
## Move Royale
## Event Status §5
## Round §4
## Timer §3
## §2
## Team Scores: §1
## 1
## 2
## 3
## 4
## §9
## Level Designer:  §8
## Elimination Threshold §7

#region Texts
team modify placeholder_0 suffix ""
team modify placeholder_1 suffix ""
team modify placeholder_2 suffix ""
team modify placeholder_3 suffix "Loading"
team modify placeholder_4 suffix "1/10"
team modify placeholder_5 suffix "§8Casual"
execute if score eventmode tourney_stats matches 1 run function moveroyale:scoreboard/macro_gameline with storage master:event_status
team modify placeholder_6 suffix ""
team modify placeholder_7 suffix ""
team modify placeholder_8 suffix ""
team modify placeholder_9 suffix ""
 
team modify placeholder_0 prefix ""
team modify placeholder_1 prefix ""
team modify placeholder_2 prefix ""
team modify placeholder_3 prefix ["§c§l游戏开始："]
team modify placeholder_4 prefix [{"text": "回合: ","color":"green"}]
team modify placeholder_5 prefix ""
team modify placeholder_6 prefix ""
team modify placeholder_7 prefix ""
team modify placeholder_8 prefix ""
team modify placeholder_9 prefix ""
#endregion

scoreboard players set §1 moveroyale_sb 1
function master:timer/starting/moveroyale
scoreboard players set §3 moveroyale_sb 3
scoreboard players set §4 moveroyale_sb 4
scoreboard players set §5 moveroyale_sb 5

