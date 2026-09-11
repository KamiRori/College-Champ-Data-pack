
# Add 50ms to total timer and each player's current lap time.

## Total Time
scoreboard players add ms ar_totaltime 5
## Individual Laptime
scoreboard players add @a[scores={ar_laps=1..},tag=!ar_finishcourse_stay] ar_laptime 5
scoreboard players add @a[scores={ar_laps=1..},tag=!ar_finishcourse_stay] ar_sectime 5

## Checkpoints Check
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=0},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ blue_concrete run function acerace4:checkpoint/m/1
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=1},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ green_concrete run function acerace4:checkpoint/m/2
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=2},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ yellow_concrete run function acerace4:checkpoint/m/3
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=3},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ cyan_concrete run function acerace4:checkpoint/m/4
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=4},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ pink_concrete run function acerace4:checkpoint/m/5
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=5},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ orange_concrete run function acerace4:checkpoint/m/6
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=6},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ purple_concrete run function acerace4:checkpoint/m/7
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=7},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ red_concrete run function acerace4:checkpoint/m/8
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=8},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ light_blue_concrete run function acerace4:checkpoint/m/0

execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=2..8},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ blue_concrete run function acerace4:checkpoint/send_back

execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=0},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ green_concrete run function acerace4:checkpoint/send_back
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=3..8},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ green_concrete run function acerace4:checkpoint/send_back

execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=0..1},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ yellow_concrete run function acerace4:checkpoint/send_back
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=4..8},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ yellow_concrete run function acerace4:checkpoint/send_back

execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=0..2},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ cyan_concrete run function acerace4:checkpoint/send_back
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=5..8},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ cyan_concrete run function acerace4:checkpoint/send_back

execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=0..3},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ pink_concrete run function acerace4:checkpoint/send_back
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=6..8},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ pink_concrete run function acerace4:checkpoint/send_back

execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=0..4},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ orange_concrete run function acerace4:checkpoint/send_back
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=7..8},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ orange_concrete run function acerace4:checkpoint/send_back

execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=0..5},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ purple_concrete run function acerace4:checkpoint/send_back
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=8},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ purple_concrete run function acerace4:checkpoint/send_back

execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=0..6},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ red_concrete run function acerace4:checkpoint/send_back

execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=1..7},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ light_blue_concrete run function acerace4:checkpoint/send_back

#Fall into lava sendback
execute as @a[team=!spec,scores={ar_laps=1..},tag=!ar_finishcourse_stay] at @s if block ~ ~ ~ lava run function acerace4:checkpoint/return_cp

## Finish Line check (MODIFIED CHECK)
execute as @a[team=!spec,scores={ar_laps=1..,ar_cp=8},tag=!ar_finishcourse_stay] at @s if block ~ 0 ~ light_blue_concrete run function acerace4:timing/relaylapscheck

execute as @a[tag=ar_finishlap] run function acerace4:finish/relay_lap
execute as @a[tag=ar_finishcourse] run function acerace4:finish/relay_course
# Incomplete Players are given a score, according to how many laps they've completed, and the timing point they've reached.
## Timing point
#scoreboard players set @a ar_timing -2147483648
## Fetch the timing point from the nearest generated anchor
execute as @a[team=!spec,scores={ar_laps=1..},tag=!ar_finishcourse_stay] at @s run scoreboard players operation @s ar_timing = @e[type=area_effect_cloud,tag=posAnchor,tag=map4,limit=1,sort=nearest] anchorNo

## Add 1m score for each lap complete
scoreboard players add @a[team=!spec,scores={ar_laps=1,ar_timing=0..9999}] ar_timing 1000000
scoreboard players add @a[team=!spec,scores={ar_laps=2,ar_timing=0..9999}] ar_timing 2000000
scoreboard players add @a[team=!spec,scores={ar_laps=3,ar_timing=0..9999}] ar_timing 3000000
scoreboard players add @a[team=!spec,scores={ar_laps=4,ar_timing=0..9999}] ar_timing 4000000
scoreboard players add @a[team=!spec,scores={ar_laps=5,ar_timing=0..9999}] ar_timing 5000000
scoreboard players add @a[team=!spec,scores={ar_laps=6,ar_timing=0..9999}] ar_timing 6000000
scoreboard players add @a[team=!spec,scores={ar_laps=7,ar_timing=0..9999}] ar_timing 7000000
scoreboard players add @a[team=!spec,scores={ar_laps=8,ar_timing=0..9999}] ar_timing 8000000
scoreboard players add @a[team=!spec,scores={ar_laps=9,ar_timing=0..9999}] ar_timing 9000000
scoreboard players add @a[team=!spec,scores={ar_laps=10,ar_timing=0..9999}] ar_timing 10000000
scoreboard players add @a[team=!spec,scores={ar_laps=11,ar_timing=0..9999}] ar_timing 11000000
scoreboard players add @a[team=!spec,scores={ar_laps=12,ar_timing=0..9999}] ar_timing 12000000
scoreboard players add @a[team=!spec,scores={ar_laps=13,ar_timing=0..9999}] ar_timing 13000000
scoreboard players add @a[team=!spec,scores={ar_laps=14,ar_timing=0..9999}] ar_timing 14000000
scoreboard players add @a[team=!spec,scores={ar_laps=15..,ar_timing=0..9999}] ar_timing 15000000

# Calculates each player's current position
## Init Phase 1
scoreboard objectives add ar_temppos dummy
scoreboard players set $current ar_temppos 1
scoreboard players operation $current ar_temppos += completedplayers ar_game
scoreboard players set $total ar_temppos 0


#### 这块有问题
execute as @a[team=!spec,scores={ar_timing=1..}] run scoreboard players add $total ar_temppos 1
scoreboard players operation $total ar_temppos += completedplayers ar_game
#### 这块有问题

## Calculate phase
function acerace4:timing/rankcalc_relay

# Tells player their position in actionbar
scoreboard players remove @a ar_actionbarcd 1
execute as @a[scores={mvprank=1..,ar_actionbarcd=..0},team=!spec] run title @s actionbar ["",{"text": "你第"},{"score":{"name": "@s","objective": "mvprank"}},{"text": "个完成了比赛"}]
execute as @a[scores={mvprank=0,ar_temppos=1..,ar_actionbarcd=..0},team=!spec] run title @s actionbar ["",{"text": "你是第"},{"score":{"name": "@s","objective": "ar_temppos"}},{"text": "名"}]
# Cleanup
execute as @a run scoreboard players operation @s ar_prevpos = @s ar_temppos
execute as @a[scores={mvprank=1..}] run scoreboard players operation @s ar_prevpos = @s mvprank

scoreboard objectives remove ar_temppos
tag @a remove ar_finishlap
tag @a remove ar_finishcourse

# If the game should end, or loop
execute if score minute master.timer matches 0 if score second master.timer matches 0 if score gameflag ar_game matches 1 run function acerace4:end
execute if score liveplayers ar_game = completedplayers ar_game run function acerace4:end
execute if score gameflag ar_game matches 1 run schedule function acerace4:timing/master_relay 1t