
execute store result score $id maze_temp_1 store result storage maze:temp/search id int 1 run random value 1..10
function maze:objective/search/macro_set_item_amount with storage maze:temp/search

# Loops this action if assign isn't complete.
execute if score $itemsToAssign maze_temp_1 matches 1.. run function maze:objective/search/loop_get_target_item