
# Core
scoreboard players set ActiveGame tourney_stats 20
scoreboard players set RoundActive tourney_stats 0
scoreboard objectives add maze_game dummy
scoreboard players set gameflag maze_game 0

# Anything temp
scoreboard objectives add maze_temp_1 dummy

# FX
scoreboard objectives add maze_fx_type dummy
scoreboard objectives add maze_fx_tick dummy

scoreboard players set @a maze_fx_type -1
scoreboard players set @a maze_fx_tick -1

# Challenge Objective (Attached to player)

## Refresh value table
function maze:objective/value_table
## PID
function maze:id_assign/init
## PID (FOR TP)
scoreboard objectives add maze_return_anchor_pid dummy

## Room Challenge Types
scoreboard objectives add maze_room_type_1 dummy
scoreboard objectives add maze_room_type_2 dummy
## Random select from two.
scoreboard objectives add maze_objective_rand dummy
## Challenge identifier
scoreboard objectives add maze_objective_id dummy
scoreboard players set $current maze_objective_id 0
## Room being attempted
scoreboard objectives add maze_objective_attempting dummy
scoreboard players set @a maze_objective_attempting -1

scoreboard objectives add maze_room_attempting dummy
scoreboard players set @a maze_room_attempting -1
## Progress
scoreboard objectives add maze_objective_done_1 dummy
scoreboard objectives add maze_objective_done_2 dummy
scoreboard objectives add maze_objective_done_3 dummy
scoreboard objectives add maze_objective_done_4 dummy
scoreboard objectives add maze_objective_done_5 dummy
scoreboard objectives add maze_objective_done_6 dummy
## Max
scoreboard objectives add maze_objective_max_1 dummy
scoreboard objectives add maze_objective_max_2 dummy
scoreboard objectives add maze_objective_max_3 dummy
scoreboard objectives add maze_objective_max_4 dummy
scoreboard objectives add maze_objective_max_5 dummy
scoreboard objectives add maze_objective_max_6 dummy
## Time Limit
scoreboard objectives add maze_objective_time_limit dummy
scoreboard objectives add maze_objective_time_elapsed dummy
## Each Team Attempted rooms for # amount of times, CLEARED after room capture state changes.
scoreboard objectives add maze_room_attempt_count_red dummy
scoreboard objectives add maze_room_attempt_count_blue dummy
scoreboard objectives add maze_room_attempt_count_green dummy
scoreboard objectives add maze_room_attempt_count_yellow dummy
scoreboard objectives add maze_room_attempt_count_cyan dummy
scoreboard objectives add maze_room_attempt_count_pink dummy
scoreboard objectives add maze_room_attempt_count_orange dummy
scoreboard objectives add maze_room_attempt_count_purple dummy

## Challenge Specific 
scoreboard objectives add maze_objective_search_progress_1 broken:diamond_block
scoreboard objectives add maze_objective_search_progress_2 broken:gold_block
scoreboard objectives add maze_objective_search_progress_3 broken:coal_block
scoreboard objectives add maze_objective_search_progress_4 broken:lapis_block
scoreboard objectives add maze_objective_search_progress_5 broken:raw_gold_block
scoreboard objectives add maze_objective_search_progress_6 broken:iron_block
scoreboard objectives add maze_objective_search_progress_7 broken:quartz_bricks
scoreboard objectives add maze_objective_search_progress_8 broken:prismarine_bricks
scoreboard objectives add maze_objective_search_progress_9 broken:basalt
scoreboard objectives add maze_objective_search_progress_10 broken:copper_block

scoreboard objectives add maze_objective_search_required_1 dummy
scoreboard objectives add maze_objective_search_required_2 dummy
scoreboard objectives add maze_objective_search_required_3 dummy
scoreboard objectives add maze_objective_search_required_4 dummy
scoreboard objectives add maze_objective_search_required_5 dummy
scoreboard objectives add maze_objective_search_required_6 dummy
scoreboard objectives add maze_objective_search_required_7 dummy
scoreboard objectives add maze_objective_search_required_8 dummy
scoreboard objectives add maze_objective_search_required_9 dummy
scoreboard objectives add maze_objective_search_required_10 dummy

# Hard Challenge Timer
scoreboard objectives add maze_hard_objective_timer dummy
scoreboard players set red maze_hard_objective_timer 0
scoreboard players set blue maze_hard_objective_timer 0
scoreboard players set green maze_hard_objective_timer 0
scoreboard players set yellow maze_hard_objective_timer 0
scoreboard players set cyan maze_hard_objective_timer 0
scoreboard players set pink maze_hard_objective_timer 0
scoreboard players set orange maze_hard_objective_timer 0
scoreboard players set purple maze_hard_objective_timer 0

# Payment Multi
scoreboard objectives add maze_challenge_payment_multi dummy
scoreboard players set red maze_challenge_payment_multi 5
scoreboard players set blue maze_challenge_payment_multi 5
scoreboard players set green maze_challenge_payment_multi 5
scoreboard players set yellow maze_challenge_payment_multi 5
scoreboard players set cyan maze_challenge_payment_multi 5
scoreboard players set pink maze_challenge_payment_multi 5
scoreboard players set orange maze_challenge_payment_multi 5
scoreboard players set purple maze_challenge_payment_multi 5

# Team Id
function maze:set_tid

# Map Capture State (see dev doc)
scoreboard objectives add maze_room_capture dummy
scoreboard objectives add maze_room_last_held_by dummy
scoreboard objectives add maze_free_take_cd dummy
function maze:debug/reset_room_capture_state

## Clear Room Card Action
scoreboard objectives add maze_room_card_got_cleared dummy

# Crystal and Economy
scoreboard objectives add maze_team_room_held dummy
scoreboard objectives add maze_team_crystals dummy
scoreboard objectives add maze_team_crystal_output dummy

# Button Press check auto expire
scoreboard objectives add maze_button_press_check_period dummy
scoreboard players set @a maze_button_press_check_period -1

# Gate State (0-4)
scoreboard objectives add maze_gate_state dummy

# Main Anchor Room id
scoreboard objectives add maze_main_anchor_room_id dummy
scoreboard objectives add maze_main_anchor_info dummy

