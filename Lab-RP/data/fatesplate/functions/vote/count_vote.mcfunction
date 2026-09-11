
scoreboard objectives remove dd_vote
scoreboard objectives add dd_vote dummy
# Decides if the game is open for voting.
kill @e[type=area_effect_cloud,tag=dd]
execute unless score 1 tourney_games matches 0 run summon area_effect_cloud 11000 50 11000 {Duration:99999,Tags:["1","dd"]}
execute unless score 2 tourney_games matches 0 run summon area_effect_cloud 11000 50 11000 {Duration:99999,Tags:["2","dd"]}
execute unless score 3 tourney_games matches 0 run summon area_effect_cloud 11000 50 11000 {Duration:99999,Tags:["3","dd"]}
execute unless score 4 tourney_games matches 0 run summon area_effect_cloud 11000 50 11000 {Duration:99999,Tags:["4","dd"]}
execute unless score 5 tourney_games matches 0 run summon area_effect_cloud 11000 50 11000 {Duration:99999,Tags:["5","dd"]}
execute unless score 6 tourney_games matches 0 run summon area_effect_cloud 11000 50 11000 {Duration:99999,Tags:["6","dd"]}
execute unless score 7 tourney_games matches 0 run summon area_effect_cloud 11000 50 11000 {Duration:99999,Tags:["7","dd"]}
execute unless score 8 tourney_games matches 0 run summon area_effect_cloud 11000 50 11000 {Duration:99999,Tags:["8","dd"]}
# Gets Each player's last votes

scoreboard objectives add fatesplate_final_votecount dummy
scoreboard players set @a fatesplate_final_votecount 0

execute as @a[team=!spec,gamemode=!spectator] at @s run function fatesplate:vote/player_votecount

# Copy votes for display.
function fatesplate:vote/copyvote
# Start Ranking the votes
scoreboard players set maxvotes dd_vote -2147483648
execute as @e[type=area_effect_cloud,tag=dd] run scoreboard players operation maxvotes dd_vote > @s dd_vote
execute as @e[type=area_effect_cloud,tag=dd] if score @s dd_vote = maxvotes dd_vote run tag @s add topvote


kill @e[type=area_effect_cloud,tag=dd,tag=!topvote]
execute as @e[type=area_effect_cloud,tag=topvote] run scoreboard players add targets dd_vote 1
