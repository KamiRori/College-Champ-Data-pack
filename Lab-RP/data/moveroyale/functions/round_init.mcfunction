
execute store result storage moveroyale:game_info round int 1 run scoreboard players add round moveroyale_game 1
scoreboard players set completions_high moveroyale_game 0
scoreboard players set completions_low moveroyale_game 0
scoreboard players set completions_finale moveroyale_game 0

scoreboard players set @a moveroyale_finale_roundtime -1
# SCB LINE
execute if score round moveroyale_game matches 1..8 run data modify storage moveroyale:game_info finale_hint set value ""
execute if score round moveroyale_game matches 9.. run data modify storage moveroyale:game_info finale_hint set value "§c（决胜回合）"

# Clear Map Author
team modify placeholder_8 suffix ["-"]

# Round info
execute if score round moveroyale_game matches 1..3 run data modify storage moveroyale:game_info elim_score set value "-"
execute if score round moveroyale_game matches 4 run execute store result storage moveroyale:game_info elim_score int 1 run scoreboard players get 4 moveroyale_score_border 
execute if score round moveroyale_game matches 5 run execute store result storage moveroyale:game_info elim_score int 1 run scoreboard players get 5 moveroyale_score_border 
execute if score round moveroyale_game matches 6 run execute store result storage moveroyale:game_info elim_score int 1 run scoreboard players get 6 moveroyale_score_border 
execute if score round moveroyale_game matches 7 run execute store result storage moveroyale:game_info elim_score int 1 run scoreboard players get 7 moveroyale_score_border 
execute if score round moveroyale_game matches 8 run execute store result storage moveroyale:game_info elim_score int 1 run scoreboard players get 8 moveroyale_score_border 
execute if score round moveroyale_game matches 9.. run data modify storage moveroyale:game_info elim_score set value "-"

function moveroyale:scoreboard/macro_roundline with storage moveroyale:game_info
# Clear Round Ranking (Only used on rate based ranks)
scoreboard players set @a moveroyale_roundrank -1
scoreboard players set @a[team=!spec,tag=moveroyale_eliminated] moveroyale_progress_rank -1
scoreboard players set @a[team=!spec,tag=!moveroyale_eliminated] moveroyale_progress_rank 1

# Clear CP Clears
scoreboard players set 1 moveroyale_cp_high 0
scoreboard players set 2 moveroyale_cp_high 0
scoreboard players set 3 moveroyale_cp_high 0
scoreboard players set 4 moveroyale_cp_high 0
scoreboard players set 5 moveroyale_cp_high 0
scoreboard players set 6 moveroyale_cp_high 0
scoreboard players set 7 moveroyale_cp_high 0
scoreboard players set 8 moveroyale_cp_high 0
scoreboard players set 9 moveroyale_cp_high 0
scoreboard players set 10 moveroyale_cp_high 0

scoreboard players set 1 moveroyale_cp_low 0
scoreboard players set 2 moveroyale_cp_low 0
scoreboard players set 3 moveroyale_cp_low 0
scoreboard players set 4 moveroyale_cp_low 0
scoreboard players set 5 moveroyale_cp_low 0
scoreboard players set 6 moveroyale_cp_low 0
scoreboard players set 7 moveroyale_cp_low 0
scoreboard players set 8 moveroyale_cp_low 0
scoreboard players set 9 moveroyale_cp_low 0
scoreboard players set 10 moveroyale_cp_low 0

scoreboard players set @a moveroyale_cleared_cps 0

# Clear Finale Times
scoreboard players set @a moveroyale_finale_roundtime -1

# Select a difficulty, or lock in difficulty on Round 3.
execute if score round moveroyale_game matches 1..2 run function moveroyale:difficulty_select/init
execute if score round moveroyale_game matches 3 run function moveroyale:difficulty_lockin/init

# On Rounds 4..8, setup the next challenge immediately.
execute if score round moveroyale_game matches 4..8 run function moveroyale:round_challenge_setup

# On Round 9, init the prelude phase first
execute if score round moveroyale_game matches 9 run function moveroyale:finale/prelude/init

# On Round 10, init the final challenge setup.
execute if score round moveroyale_game matches 10 run function moveroyale:round_challenge_setup

