
scoreboard players set $temp_shouldpass tagrush_game 0
# Check if one person is tagged, the other is not tagged, and not drained.
$execute if entity @a[scores={univ_pid=$(attacker)},tag=tagrush_status_tagged] if entity @a[scores={univ_pid=$(victim)},tag=!tagrush_status_tagged,tag=!tagrush_status_drained] run scoreboard players set $temp_shouldpass tagrush_game 1

# Check if they are on same team
$scoreboard players operation $temp_team1 tagrush_game = @a[scores={univ_pid=$(attacker)},limit=1] tagrush_teamflag
$scoreboard players operation $temp_team2 tagrush_game = @a[scores={univ_pid=$(victim)},limit=1] tagrush_teamflag
execute if score $temp_team1 tagrush_game = $temp_team2 tagrush_game run scoreboard players set $temp_shouldpass tagrush_game 0

# Operate changes.
execute if score $temp_shouldpass tagrush_game matches 0 run return -1
$execute as @a[scores={univ_pid=$(attacker)}] at @s run function tagrush:player_action/remove_self_tag
$execute as @a[scores={univ_pid=$(victim)}] at @s run function tagrush:player_action/add_self_tag


## Notification Message
$execute if entity @a[scores={univ_pid=$(attacker)},tag=tagrush_arena_1] run tellraw @a[tag=tagrush_arena_1] ["§7[§r鄵§7] ",{"selector":"@a[scores={univ_pid=$(attacker)}]"},"§7将TNT传递给了",{"selector":"@a[scores={univ_pid=$(victim)}]"},"§7。"]
$execute if entity @a[scores={univ_pid=$(attacker)},tag=tagrush_arena_2] run tellraw @a[tag=tagrush_arena_2] ["§7[§r鄵§7] ",{"selector":"@a[scores={univ_pid=$(attacker)}]"},"§7将TNT传递给了",{"selector":"@a[scores={univ_pid=$(victim)}]"},"§7。"]
$execute if entity @a[scores={univ_pid=$(attacker)},tag=tagrush_arena_3] run tellraw @a[tag=tagrush_arena_3] ["§7[§r鄵§7] ",{"selector":"@a[scores={univ_pid=$(attacker)}]"},"§7将TNT传递给了",{"selector":"@a[scores={univ_pid=$(victim)}]"},"§7。"]
$execute if entity @a[scores={univ_pid=$(attacker)},tag=tagrush_arena_4] run tellraw @a[tag=tagrush_arena_4] ["§7[§r鄵§7] ",{"selector":"@a[scores={univ_pid=$(attacker)}]"},"§7将TNT传递给了",{"selector":"@a[scores={univ_pid=$(victim)}]"},"§7。"]