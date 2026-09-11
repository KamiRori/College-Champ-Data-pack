
# Matchmaking Method.
# 对战表为
# 1: 红蓝 绿黄 青粉 橙紫
# 2: 红绿 蓝黄 青橙 粉紫
# 3: 红黄 蓝绿 青紫 橙粉
# 4: 红青 蓝粉 绿橙 黄紫
# 5: 红粉 蓝橙 绿紫 黄青
# 6: 红橙 蓝紫 绿青 黄粉
# 7: 红紫 蓝青 绿粉 黄橙

# 储存各对战表是否已使用。
scoreboard objectives add tagrush_matchtable dummy
scoreboard players set 1 tagrush_matchtable 0
scoreboard players set 2 tagrush_matchtable 0
scoreboard players set 3 tagrush_matchtable 0
scoreboard players set 4 tagrush_matchtable 0
scoreboard players set 5 tagrush_matchtable 0
scoreboard players set 6 tagrush_matchtable 0
scoreboard players set 7 tagrush_matchtable 0

# 储存当前对战各队是哪个场景
scoreboard objectives add tagrush_team_arena dummy
# 轮空判定
scoreboard objectives add tagrush_round_off dummy

