
function maze:room_state_change/macro_main with storage maze:objective
execute if score $newState maze_room_capture matches 1.. run function maze:clear_capture_card/macro with storage maze:objective