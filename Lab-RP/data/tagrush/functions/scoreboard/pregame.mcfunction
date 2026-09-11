#region Initial
scoreboard objectives remove tagrush_sb
scoreboard objectives add tagrush_sb dummy [{"text": "Code: Tag","color": "yellow","bold": true}]
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.yellow
scoreboard objectives setdisplay sidebar tagrush_sb
scoreboard objectives modify tagrush_sb numberformat fixed " "
#endregion

#region Texts
team modify placeholder_0 suffix " "
team modify placeholder_1 suffix " "
execute if score map tagrush_game matches 0 run team modify placeholder_2 suffix "PKT: Launchsite"
execute if score map tagrush_game matches 1 run team modify placeholder_2 suffix "PKT: Dust"

team modify placeholder_3 suffix "§8Casual"
execute if score eventmode tourney_stats matches 1 run function tagrush:scoreboard/macro_gameline with storage master:event_status


team modify placeholder_4 suffix " "
team modify placeholder_5 suffix " "
team modify placeholder_6 suffix " "
team modify placeholder_7 suffix " "
team modify placeholder_8 suffix " "
team modify placeholder_9 suffix " "

team modify placeholder_0 prefix " "
team modify placeholder_1 prefix " "
team modify placeholder_2 prefix [{"text": "地图: ","color": "aqua"}]
team modify placeholder_3 prefix ""
team modify placeholder_4 prefix " "
team modify placeholder_5 prefix " "
team modify placeholder_6 prefix " "
team modify placeholder_7 prefix " "
team modify placeholder_8 prefix " "
team modify placeholder_9 prefix " "
#endregion

scoreboard players set §0 tagrush_sb 0
scoreboard players set : tagrush_sb 1
function master:timer/starting/tagrush
scoreboard players set §2 tagrush_sb 2
scoreboard players set §3 tagrush_sb 3

