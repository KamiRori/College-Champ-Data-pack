
# 1: 红蓝 绿黄 青粉 橙紫
# 2: 红绿 蓝黄 青橙 粉紫
# 3: 红黄 蓝绿 青紫 橙粉
# 4: 红青 蓝粉 绿橙 黄紫
# 5: 红粉 蓝橙 绿紫 黄青
# 6: 红橙 蓝紫 绿青 黄粉
# 7: 红紫 蓝青 绿粉 黄橙

# 标记值
scoreboard players set 2 tagrush_matchtable 1
scoreboard players set selected_match tagrush_game 2

tag @a[team=red] add tagrush_arena_1
tag @a[team=blue] add tagrush_arena_2
tag @a[team=green] add tagrush_arena_1
tag @a[team=yellow] add tagrush_arena_2
tag @a[team=cyan] add tagrush_arena_3
tag @a[team=pink] add tagrush_arena_4
tag @a[team=orange] add tagrush_arena_3
tag @a[team=purple] add tagrush_arena_4

tag @a[team=green] add tagrush_arena_secondary
tag @a[team=yellow] add tagrush_arena_secondary
tag @a[team=orange] add tagrush_arena_secondary
tag @a[team=purple] add tagrush_arena_secondary

scoreboard players set red tagrush_team_arena 1
scoreboard players set blue tagrush_team_arena 2
scoreboard players set green tagrush_team_arena 1
scoreboard players set yellow tagrush_team_arena 2
scoreboard players set cyan tagrush_team_arena 3
scoreboard players set pink tagrush_team_arena 4
scoreboard players set orange tagrush_team_arena 3
scoreboard players set purple tagrush_team_arena 4

# 检查轮空
execute as @a[team=red] unless entity @a[team=!red,tag=tagrush_arena_1] run scoreboard players set red tagrush_round_off 1
execute as @a[team=blue] unless entity @a[team=!blue,tag=tagrush_arena_2] run scoreboard players set blue tagrush_round_off 1
execute as @a[team=green] unless entity @a[team=!green,tag=tagrush_arena_1] run scoreboard players set green tagrush_round_off 1
execute as @a[team=yellow] unless entity @a[team=!yellow,tag=tagrush_arena_2] run scoreboard players set yellow tagrush_round_off 1
execute as @a[team=cyan] unless entity @a[team=!cyan,tag=tagrush_arena_3] run scoreboard players set cyan tagrush_round_off 1
execute as @a[team=pink] unless entity @a[team=!pink,tag=tagrush_arena_4] run scoreboard players set pink tagrush_round_off 1
execute as @a[team=orange] unless entity @a[team=!orange,tag=tagrush_arena_3] run scoreboard players set orange tagrush_round_off 1
execute as @a[team=purple] unless entity @a[team=!purple,tag=tagrush_arena_4] run scoreboard players set purple tagrush_round_off 1

# 在储存空间标记对战表
data modify storage tagrush:opponent red set value "green"
data modify storage tagrush:opponent blue set value "yellow"
data modify storage tagrush:opponent green set value "red"
data modify storage tagrush:opponent yellow set value "blue"
data modify storage tagrush:opponent cyan set value "orange"
data modify storage tagrush:opponent pink set value "purple"
data modify storage tagrush:opponent orange set value "cyan"
data modify storage tagrush:opponent purple set value "pink"

data modify storage tagrush:arena/1/team_1 team set value "red"
data modify storage tagrush:arena/1/team_2 team set value "green"
data modify storage tagrush:arena/2/team_1 team set value "blue"
data modify storage tagrush:arena/2/team_2 team set value "yellow"
data modify storage tagrush:arena/3/team_1 team set value "cyan"
data modify storage tagrush:arena/3/team_2 team set value "orange"
data modify storage tagrush:arena/4/team_1 team set value "pink"
data modify storage tagrush:arena/4/team_2 team set value "purple"
# Debug
tellraw @a[tag=admin] ["§b[§6Dev§b] ","§bMatch ",{"text": "2","color": "#E3E3E3"}," §bselected."]
