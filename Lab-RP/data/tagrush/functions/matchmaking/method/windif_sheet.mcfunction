# Windif Sheet (行-列)
#  红蓝绿黄青粉橙紫
#红
#蓝
#绿
#黄
#青
#粉
#橙
#紫

scoreboard objectives remove tagrush_match_windif_sheet
scoreboard objectives add tagrush_match_windif_sheet dummy

# 用一个临时空间
scoreboard objectives add tagrush_tempcal_wins dummy
scoreboard players operation red tagrush_tempcal_wins = red tagrush_wins
scoreboard players operation blue tagrush_tempcal_wins = blue tagrush_wins
scoreboard players operation green tagrush_tempcal_wins = green tagrush_wins
scoreboard players operation yellow tagrush_tempcal_wins = yellow tagrush_wins
scoreboard players operation cyan tagrush_tempcal_wins = cyan tagrush_wins
scoreboard players operation pink tagrush_tempcal_wins = pink tagrush_wins
scoreboard players operation orange tagrush_tempcal_wins = orange tagrush_wins
scoreboard players operation purple tagrush_tempcal_wins = purple tagrush_wins

## 设置无人队伍的胜场数为 1000，使得轮空会产生一个较大的weight.
execute unless entity @a[team=red] run scoreboard players set red tagrush_tempcal_wins 1000
execute unless entity @a[team=blue] run scoreboard players set blue tagrush_tempcal_wins 1000
execute unless entity @a[team=green] run scoreboard players set green tagrush_tempcal_wins 1000
execute unless entity @a[team=yellow] run scoreboard players set yellow tagrush_tempcal_wins 1000
execute unless entity @a[team=cyan] run scoreboard players set cyan tagrush_tempcal_wins 1000
execute unless entity @a[team=pink] run scoreboard players set pink tagrush_tempcal_wins 1000
execute unless entity @a[team=orange] run scoreboard players set orange tagrush_tempcal_wins 1000
execute unless entity @a[team=purple] run scoreboard players set purple tagrush_tempcal_wins 1000

# 计算表内各格的值
scoreboard players operation 1-2 tagrush_match_windif_sheet = red tagrush_tempcal_wins
scoreboard players operation 1-3 tagrush_match_windif_sheet = red tagrush_tempcal_wins
scoreboard players operation 1-4 tagrush_match_windif_sheet = red tagrush_tempcal_wins
scoreboard players operation 1-5 tagrush_match_windif_sheet = red tagrush_tempcal_wins
scoreboard players operation 1-6 tagrush_match_windif_sheet = red tagrush_tempcal_wins
scoreboard players operation 1-7 tagrush_match_windif_sheet = red tagrush_tempcal_wins
scoreboard players operation 1-8 tagrush_match_windif_sheet = red tagrush_tempcal_wins

scoreboard players operation 2-3 tagrush_match_windif_sheet = blue tagrush_tempcal_wins
scoreboard players operation 2-4 tagrush_match_windif_sheet = blue tagrush_tempcal_wins
scoreboard players operation 2-5 tagrush_match_windif_sheet = blue tagrush_tempcal_wins
scoreboard players operation 2-6 tagrush_match_windif_sheet = blue tagrush_tempcal_wins
scoreboard players operation 2-7 tagrush_match_windif_sheet = blue tagrush_tempcal_wins
scoreboard players operation 2-8 tagrush_match_windif_sheet = blue tagrush_tempcal_wins

scoreboard players operation 3-4 tagrush_match_windif_sheet = green tagrush_tempcal_wins
scoreboard players operation 3-5 tagrush_match_windif_sheet = green tagrush_tempcal_wins
scoreboard players operation 3-6 tagrush_match_windif_sheet = green tagrush_tempcal_wins
scoreboard players operation 3-7 tagrush_match_windif_sheet = green tagrush_tempcal_wins
scoreboard players operation 3-8 tagrush_match_windif_sheet = green tagrush_tempcal_wins

scoreboard players operation 4-5 tagrush_match_windif_sheet = cyan tagrush_tempcal_wins
scoreboard players operation 4-6 tagrush_match_windif_sheet = cyan tagrush_tempcal_wins
scoreboard players operation 4-7 tagrush_match_windif_sheet = cyan tagrush_tempcal_wins
scoreboard players operation 4-8 tagrush_match_windif_sheet = cyan tagrush_tempcal_wins

scoreboard players operation 5-6 tagrush_match_windif_sheet = pink tagrush_tempcal_wins
scoreboard players operation 5-7 tagrush_match_windif_sheet = pink tagrush_tempcal_wins
scoreboard players operation 5-8 tagrush_match_windif_sheet = pink tagrush_tempcal_wins

scoreboard players operation 6-7 tagrush_match_windif_sheet = orange tagrush_tempcal_wins
scoreboard players operation 6-8 tagrush_match_windif_sheet = orange tagrush_tempcal_wins

scoreboard players operation 7-8 tagrush_match_windif_sheet = purple tagrush_tempcal_wins

##
scoreboard players operation 1-2 tagrush_match_windif_sheet -= blue tagrush_tempcal_wins

scoreboard players operation 1-3 tagrush_match_windif_sheet -= green tagrush_tempcal_wins
scoreboard players operation 2-3 tagrush_match_windif_sheet -= green tagrush_tempcal_wins

scoreboard players operation 1-4 tagrush_match_windif_sheet -= yellow tagrush_tempcal_wins
scoreboard players operation 2-4 tagrush_match_windif_sheet -= yellow tagrush_tempcal_wins
scoreboard players operation 3-4 tagrush_match_windif_sheet -= yellow tagrush_tempcal_wins

scoreboard players operation 1-5 tagrush_match_windif_sheet -= cyan tagrush_tempcal_wins
scoreboard players operation 2-5 tagrush_match_windif_sheet -= cyan tagrush_tempcal_wins
scoreboard players operation 3-5 tagrush_match_windif_sheet -= cyan tagrush_tempcal_wins
scoreboard players operation 4-5 tagrush_match_windif_sheet -= cyan tagrush_tempcal_wins

scoreboard players operation 1-6 tagrush_match_windif_sheet -= pink tagrush_tempcal_wins
scoreboard players operation 2-6 tagrush_match_windif_sheet -= pink tagrush_tempcal_wins
scoreboard players operation 3-6 tagrush_match_windif_sheet -= pink tagrush_tempcal_wins
scoreboard players operation 4-6 tagrush_match_windif_sheet -= pink tagrush_tempcal_wins
scoreboard players operation 5-6 tagrush_match_windif_sheet -= pink tagrush_tempcal_wins

scoreboard players operation 1-7 tagrush_match_windif_sheet -= orange tagrush_tempcal_wins
scoreboard players operation 2-7 tagrush_match_windif_sheet -= orange tagrush_tempcal_wins
scoreboard players operation 3-7 tagrush_match_windif_sheet -= orange tagrush_tempcal_wins
scoreboard players operation 4-7 tagrush_match_windif_sheet -= orange tagrush_tempcal_wins
scoreboard players operation 5-7 tagrush_match_windif_sheet -= orange tagrush_tempcal_wins
scoreboard players operation 6-7 tagrush_match_windif_sheet -= orange tagrush_tempcal_wins

scoreboard players operation 1-8 tagrush_match_windif_sheet -= purple tagrush_tempcal_wins
scoreboard players operation 2-8 tagrush_match_windif_sheet -= purple tagrush_tempcal_wins
scoreboard players operation 3-8 tagrush_match_windif_sheet -= purple tagrush_tempcal_wins
scoreboard players operation 4-8 tagrush_match_windif_sheet -= purple tagrush_tempcal_wins
scoreboard players operation 5-8 tagrush_match_windif_sheet -= purple tagrush_tempcal_wins
scoreboard players operation 6-8 tagrush_match_windif_sheet -= purple tagrush_tempcal_wins
scoreboard players operation 7-8 tagrush_match_windif_sheet -= purple tagrush_tempcal_wins

# 将每一格都取abs
scoreboard players set -1 math -1

execute if score 1-2 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 1-2 tagrush_match_windif_sheet *= -1 math
execute if score 1-3 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 1-3 tagrush_match_windif_sheet *= -1 math
execute if score 1-4 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 1-4 tagrush_match_windif_sheet *= -1 math
execute if score 1-5 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 1-5 tagrush_match_windif_sheet *= -1 math
execute if score 1-6 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 1-6 tagrush_match_windif_sheet *= -1 math
execute if score 1-7 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 1-7 tagrush_match_windif_sheet *= -1 math
execute if score 1-8 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 1-8 tagrush_match_windif_sheet *= -1 math

execute if score 2-3 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 2-3 tagrush_match_windif_sheet *= -1 math
execute if score 2-4 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 2-4 tagrush_match_windif_sheet *= -1 math
execute if score 2-5 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 2-5 tagrush_match_windif_sheet *= -1 math
execute if score 2-6 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 2-6 tagrush_match_windif_sheet *= -1 math
execute if score 2-7 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 2-7 tagrush_match_windif_sheet *= -1 math
execute if score 2-8 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 2-8 tagrush_match_windif_sheet *= -1 math

execute if score 3-4 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 3-4 tagrush_match_windif_sheet *= -1 math
execute if score 3-5 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 3-5 tagrush_match_windif_sheet *= -1 math
execute if score 3-6 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 3-6 tagrush_match_windif_sheet *= -1 math
execute if score 3-7 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 3-7 tagrush_match_windif_sheet *= -1 math
execute if score 3-8 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 3-8 tagrush_match_windif_sheet *= -1 math

execute if score 4-5 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 4-5 tagrush_match_windif_sheet *= -1 math
execute if score 4-6 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 4-6 tagrush_match_windif_sheet *= -1 math
execute if score 4-7 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 4-7 tagrush_match_windif_sheet *= -1 math
execute if score 4-8 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 4-8 tagrush_match_windif_sheet *= -1 math

execute if score 5-6 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 5-6 tagrush_match_windif_sheet *= -1 math
execute if score 5-7 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 5-7 tagrush_match_windif_sheet *= -1 math
execute if score 5-8 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 5-8 tagrush_match_windif_sheet *= -1 math

execute if score 6-7 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 6-7 tagrush_match_windif_sheet *= -1 math
execute if score 6-8 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 6-8 tagrush_match_windif_sheet *= -1 math

execute if score 7-8 tagrush_match_windif_sheet matches ..-1 run scoreboard players operation 7-8 tagrush_match_windif_sheet *= -1 math

# 对战表为
# 1: 红蓝 绿黄 青粉 橙紫
# 2: 红绿 蓝黄 青橙 粉紫
# 3: 红黄 蓝绿 青紫 橙粉
# 4: 红青 蓝粉 绿橙 黄紫
# 5: 红粉 蓝橙 绿紫 黄青
# 6: 红橙 蓝紫 绿青 黄粉
# 7: 红紫 蓝青 绿粉 黄橙

#  红蓝绿黄青粉橙紫
#红
#蓝
#绿
#黄
#青
#粉
#橙
#紫

# 结算各对战表的差值，希望轮空的队伍最多只有一个。
scoreboard players operation 1 tagrush_match_windif += 1-2 tagrush_match_windif_sheet
scoreboard players operation 2 tagrush_match_windif += 1-3 tagrush_match_windif_sheet
scoreboard players operation 3 tagrush_match_windif += 1-4 tagrush_match_windif_sheet
scoreboard players operation 4 tagrush_match_windif += 1-5 tagrush_match_windif_sheet
scoreboard players operation 5 tagrush_match_windif += 1-6 tagrush_match_windif_sheet
scoreboard players operation 6 tagrush_match_windif += 1-7 tagrush_match_windif_sheet
scoreboard players operation 7 tagrush_match_windif += 1-8 tagrush_match_windif_sheet

scoreboard players operation 1 tagrush_match_windif += 3-4 tagrush_match_windif_sheet
scoreboard players operation 2 tagrush_match_windif += 2-4 tagrush_match_windif_sheet
scoreboard players operation 3 tagrush_match_windif += 2-3 tagrush_match_windif_sheet
scoreboard players operation 4 tagrush_match_windif += 2-6 tagrush_match_windif_sheet
scoreboard players operation 5 tagrush_match_windif += 2-7 tagrush_match_windif_sheet
scoreboard players operation 6 tagrush_match_windif += 2-8 tagrush_match_windif_sheet
scoreboard players operation 7 tagrush_match_windif += 2-5 tagrush_match_windif_sheet

scoreboard players operation 1 tagrush_match_windif += 5-6 tagrush_match_windif_sheet
scoreboard players operation 2 tagrush_match_windif += 5-7 tagrush_match_windif_sheet
scoreboard players operation 3 tagrush_match_windif += 5-8 tagrush_match_windif_sheet
scoreboard players operation 4 tagrush_match_windif += 3-7 tagrush_match_windif_sheet
scoreboard players operation 5 tagrush_match_windif += 3-8 tagrush_match_windif_sheet
scoreboard players operation 6 tagrush_match_windif += 3-5 tagrush_match_windif_sheet
scoreboard players operation 7 tagrush_match_windif += 3-6 tagrush_match_windif_sheet

scoreboard players operation 1 tagrush_match_windif += 7-8 tagrush_match_windif_sheet
scoreboard players operation 2 tagrush_match_windif += 6-8 tagrush_match_windif_sheet
scoreboard players operation 3 tagrush_match_windif += 6-7 tagrush_match_windif_sheet
scoreboard players operation 4 tagrush_match_windif += 4-8 tagrush_match_windif_sheet
scoreboard players operation 5 tagrush_match_windif += 4-5 tagrush_match_windif_sheet
scoreboard players operation 6 tagrush_match_windif += 4-6 tagrush_match_windif_sheet
scoreboard players operation 7 tagrush_match_windif += 4-7 tagrush_match_windif_sheet

# 对于已使用的对战，差值置为infinite
execute if score 1 tagrush_matchtable matches 1 run scoreboard players set 1 tagrush_match_windif 20000000
execute if score 2 tagrush_matchtable matches 1 run scoreboard players set 2 tagrush_match_windif 20000000
execute if score 3 tagrush_matchtable matches 1 run scoreboard players set 3 tagrush_match_windif 20000000
execute if score 4 tagrush_matchtable matches 1 run scoreboard players set 4 tagrush_match_windif 20000000
execute if score 5 tagrush_matchtable matches 1 run scoreboard players set 5 tagrush_match_windif 20000000
execute if score 6 tagrush_matchtable matches 1 run scoreboard players set 6 tagrush_match_windif 20000000
execute if score 7 tagrush_matchtable matches 1 run scoreboard players set 7 tagrush_match_windif 20000000
