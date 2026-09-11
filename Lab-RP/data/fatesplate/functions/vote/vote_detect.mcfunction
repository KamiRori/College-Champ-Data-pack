

# Y Coordinate
scoreboard players set @a fatesplate_this_y 999999
execute as @a[team=!spec,gamemode=!spectator] run execute store result score @s fatesplate_this_y run data get entity @s Pos[1] 10

# Fell?
execute as @a[scores={fatesplate_this_y=..900}] at @s run function fatesplate:player_action/fell

# Respawn Invul
scoreboard players remove @a[scores={fatesplate_invul=0..}] fatesplate_invul 1
execute as @a[scores={fatesplate_invul=0}] run attribute @s generic.knockback_resistance base set 0

# 显示玩家所在位置得分
scoreboard players set @a fatesplate_multi_type 0
## Ring: (0.0x, 1.0x, 1.2, 1.5x, 2.0x)
execute as @a at @s if block ~ 77 ~ light_blue_glazed_terracotta[facing=east] run scoreboard players set @s fatesplate_multi_type 1
execute as @a at @s if block ~ 77 ~ light_blue_glazed_terracotta[facing=south] run scoreboard players set @s fatesplate_multi_type 2
execute as @a at @s if block ~ 77 ~ light_blue_glazed_terracotta[facing=west] run scoreboard players set @s fatesplate_multi_type 3
execute as @a at @s if block ~ 77 ~ light_blue_glazed_terracotta[facing=north] run scoreboard players set @s fatesplate_multi_type 4

execute as @a[team=!spec,gamemode=!spectator,scores={fatesplate_multi_type=0}] run title @s actionbar ["",{"text": "\ub096","color": "#4E5C24","font": "ui"},{"text": "75","font": "space:backspace"},{"text": "票数: ","color": "yellow","font": "hud_cs_offset_2"},{"score":{"name": "@s","objective": "fatesplate_playervotes"},"font": "hud_cs_offset_2"},"   ",{"text": "x0.0","color": "gray","font": "hud"}]
execute as @a[team=!spec,gamemode=!spectator,scores={fatesplate_multi_type=1}] run title @s actionbar ["",{"text": "\ub096","color": "#4E5C24","font": "ui"},{"text": "75","font": "space:backspace"},{"text": "票数: ","color": "yellow","font": "hud_cs_offset_2"},{"score":{"name": "@s","objective": "fatesplate_playervotes"},"font": "hud_cs_offset_2"},"   ",{"text": "x1.0","color": "white","font": "hud"}]
execute as @a[team=!spec,gamemode=!spectator,scores={fatesplate_multi_type=2}] run title @s actionbar ["",{"text": "\ub096","color": "#4E5C24","font": "ui"},{"text": "75","font": "space:backspace"},{"text": "票数: ","color": "yellow","font": "hud_cs_offset_2"},{"score":{"name": "@s","objective": "fatesplate_playervotes"},"font": "hud_cs_offset_2"},"   ",{"text": "x1.2","color": "green","font": "hud"}]
execute as @a[team=!spec,gamemode=!spectator,scores={fatesplate_multi_type=3}] run title @s actionbar ["",{"text": "\ub096","color": "#4E5C24","font": "ui"},{"text": "75","font": "space:backspace"},{"text": "票数: ","color": "yellow","font": "hud_cs_offset_2"},{"score":{"name": "@s","objective": "fatesplate_playervotes"},"font": "hud_cs_offset_2"},"   ",{"text": "x1.5","color": "gold","font": "hud"}]
execute as @a[team=!spec,gamemode=!spectator,scores={fatesplate_multi_type=4}] run title @s actionbar ["",{"text": "\ub096","color": "#4E5C24","font": "ui"},{"text": "75","font": "space:backspace"},{"text": "票数: ","color": "yellow","font": "hud_cs_offset_2"},{"score":{"name": "@s","objective": "fatesplate_playervotes"},"font": "hud_cs_offset_2"},"   ",{"text": "x2.0","color": "red","font": "hud"}]
# Loop
execute if score phase tourney_stats matches 3 run schedule function fatesplate:vote/vote_detect 1t