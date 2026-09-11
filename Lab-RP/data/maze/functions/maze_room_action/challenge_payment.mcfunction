
# Payment Multi
execute if score $heldByTeam maze_main_anchor_info matches 1 run scoreboard players operation $paymentMulti maze_main_anchor_info = red maze_challenge_payment_multi
execute if score $heldByTeam maze_main_anchor_info matches 2 run scoreboard players operation $paymentMulti maze_main_anchor_info = blue maze_challenge_payment_multi
execute if score $heldByTeam maze_main_anchor_info matches 3 run scoreboard players operation $paymentMulti maze_main_anchor_info = green maze_challenge_payment_multi
execute if score $heldByTeam maze_main_anchor_info matches 4 run scoreboard players operation $paymentMulti maze_main_anchor_info = yellow maze_challenge_payment_multi
execute if score $heldByTeam maze_main_anchor_info matches 5 run scoreboard players operation $paymentMulti maze_main_anchor_info = cyan maze_challenge_payment_multi
execute if score $heldByTeam maze_main_anchor_info matches 6 run scoreboard players operation $paymentMulti maze_main_anchor_info = pink maze_challenge_payment_multi
execute if score $heldByTeam maze_main_anchor_info matches 7 run scoreboard players operation $paymentMulti maze_main_anchor_info = orange maze_challenge_payment_multi
execute if score $heldByTeam maze_main_anchor_info matches 8 run scoreboard players operation $paymentMulti maze_main_anchor_info = purple maze_challenge_payment_multi

# Presser Team
execute if score $presserTeam maze_main_anchor_info matches 1 run scoreboard players operation $paymentBase maze_main_anchor_info = red maze_team_crystals
execute if score $presserTeam maze_main_anchor_info matches 2 run scoreboard players operation $paymentBase maze_main_anchor_info = blue maze_team_crystals
execute if score $presserTeam maze_main_anchor_info matches 3 run scoreboard players operation $paymentBase maze_main_anchor_info = green maze_team_crystals
execute if score $presserTeam maze_main_anchor_info matches 4 run scoreboard players operation $paymentBase maze_main_anchor_info = yellow maze_team_crystals
execute if score $presserTeam maze_main_anchor_info matches 5 run scoreboard players operation $paymentBase maze_main_anchor_info = cyan maze_team_crystals
execute if score $presserTeam maze_main_anchor_info matches 6 run scoreboard players operation $paymentBase maze_main_anchor_info = pink maze_team_crystals
execute if score $presserTeam maze_main_anchor_info matches 7 run scoreboard players operation $paymentBase maze_main_anchor_info = orange maze_team_crystals
execute if score $presserTeam maze_main_anchor_info matches 8 run scoreboard players operation $paymentBase maze_main_anchor_info = purple maze_team_crystals

# Base Payment (default to 5%)
scoreboard players operation $paymentMax maze_main_anchor_info = $paymentBase maze_main_anchor_info
scoreboard players operation $paymentBase maze_main_anchor_info *= $paymentMulti maze_main_anchor_info
scoreboard players operation $paymentBase maze_main_anchor_info /= 100 math

# Fail Count Info
scoreboard players set $failCountMulti maze_main_anchor_info 0

$execute if score $presserTeam maze_main_anchor_info matches 1 run scoreboard players operation $failCountMulti maze_main_anchor_info = $(roomId) maze_room_attempt_count_red
$execute if score $presserTeam maze_main_anchor_info matches 2 run scoreboard players operation $failCountMulti maze_main_anchor_info = $(roomId) maze_room_attempt_count_blue
$execute if score $presserTeam maze_main_anchor_info matches 3 run scoreboard players operation $failCountMulti maze_main_anchor_info = $(roomId) maze_room_attempt_count_green
$execute if score $presserTeam maze_main_anchor_info matches 4 run scoreboard players operation $failCountMulti maze_main_anchor_info = $(roomId) maze_room_attempt_count_yellow
$execute if score $presserTeam maze_main_anchor_info matches 5 run scoreboard players operation $failCountMulti maze_main_anchor_info = $(roomId) maze_room_attempt_count_cyan
$execute if score $presserTeam maze_main_anchor_info matches 6 run scoreboard players operation $failCountMulti maze_main_anchor_info = $(roomId) maze_room_attempt_count_pink
$execute if score $presserTeam maze_main_anchor_info matches 7 run scoreboard players operation $failCountMulti maze_main_anchor_info = $(roomId) maze_room_attempt_count_orange
$execute if score $presserTeam maze_main_anchor_info matches 8 run scoreboard players operation $failCountMulti maze_main_anchor_info = $(roomId) maze_room_attempt_count_purple

scoreboard players add $failCountMulti maze_main_anchor_info 1

# Final Payment
scoreboard players operation $finalPayment maze_main_anchor_info = $paymentBase maze_main_anchor_info
scoreboard players operation $finalPayment maze_main_anchor_info *= $failCountMulti maze_main_anchor_info
## Cannot exceed 100% of team balance.
scoreboard players operation $finalPayment maze_main_anchor_info < $paymentMax maze_main_anchor_info

# Process Payment
execute if score $heldByTeam maze_main_anchor_info matches 1 run scoreboard players operation red maze_team_crystals += $finalPayment maze_main_anchor_info
execute if score $heldByTeam maze_main_anchor_info matches 2 run scoreboard players operation blue maze_team_crystals += $finalPayment maze_main_anchor_info
execute if score $heldByTeam maze_main_anchor_info matches 3 run scoreboard players operation green maze_team_crystals += $finalPayment maze_main_anchor_info
execute if score $heldByTeam maze_main_anchor_info matches 4 run scoreboard players operation yellow maze_team_crystals += $finalPayment maze_main_anchor_info
execute if score $heldByTeam maze_main_anchor_info matches 5 run scoreboard players operation cyan maze_team_crystals += $finalPayment maze_main_anchor_info
execute if score $heldByTeam maze_main_anchor_info matches 6 run scoreboard players operation pink maze_team_crystals += $finalPayment maze_main_anchor_info
execute if score $heldByTeam maze_main_anchor_info matches 7 run scoreboard players operation orange maze_team_crystals += $finalPayment maze_main_anchor_info
execute if score $heldByTeam maze_main_anchor_info matches 8 run scoreboard players operation purple maze_team_crystals += $finalPayment maze_main_anchor_info

execute if score $presserTeam maze_main_anchor_info matches 1 run scoreboard players operation red maze_team_crystals -= $finalPayment maze_main_anchor_info
execute if score $presserTeam maze_main_anchor_info matches 2 run scoreboard players operation blue maze_team_crystals -= $finalPayment maze_main_anchor_info
execute if score $presserTeam maze_main_anchor_info matches 3 run scoreboard players operation green maze_team_crystals -= $finalPayment maze_main_anchor_info
execute if score $presserTeam maze_main_anchor_info matches 4 run scoreboard players operation yellow maze_team_crystals -= $finalPayment maze_main_anchor_info
execute if score $presserTeam maze_main_anchor_info matches 5 run scoreboard players operation cyan maze_team_crystals -= $finalPayment maze_main_anchor_info
execute if score $presserTeam maze_main_anchor_info matches 6 run scoreboard players operation pink maze_team_crystals -= $finalPayment maze_main_anchor_info
execute if score $presserTeam maze_main_anchor_info matches 7 run scoreboard players operation orange maze_team_crystals -= $finalPayment maze_main_anchor_info
execute if score $presserTeam maze_main_anchor_info matches 8 run scoreboard players operation purple maze_team_crystals -= $finalPayment maze_main_anchor_info

# Notify
execute if score $heldByTeam maze_main_anchor_info matches 1 run tellraw @a[team=red] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对本队一个房间的进攻。"," §7[§d+",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]
execute if score $heldByTeam maze_main_anchor_info matches 2 run tellraw @a[team=blue] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对本队一个房间的进攻。"," §7[§d+",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]
execute if score $heldByTeam maze_main_anchor_info matches 3 run tellraw @a[team=green] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对本队一个房间的进攻。"," §7[§d+",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]
execute if score $heldByTeam maze_main_anchor_info matches 4 run tellraw @a[team=yellow] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对本队一个房间的进攻。"," §7[§d+",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]
execute if score $heldByTeam maze_main_anchor_info matches 5 run tellraw @a[team=cyan] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对本队一个房间的进攻。"," §7[§d+",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]
execute if score $heldByTeam maze_main_anchor_info matches 6 run tellraw @a[team=pink] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对本队一个房间的进攻。"," §7[§d+",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]
execute if score $heldByTeam maze_main_anchor_info matches 7 run tellraw @a[team=orange] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对本队一个房间的进攻。"," §7[§d+",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]
execute if score $heldByTeam maze_main_anchor_info matches 8 run tellraw @a[team=purple] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对本队一个房间的进攻。"," §7[§d+",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]

execute if score $presserTeam maze_main_anchor_info matches 1 run tellraw @a[team=red] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对一个房间的进攻。"," §7[§d-",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]
execute if score $presserTeam maze_main_anchor_info matches 2 run tellraw @a[team=blue] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对一个房间的进攻。"," §7[§d-",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]
execute if score $presserTeam maze_main_anchor_info matches 3 run tellraw @a[team=green] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对一个房间的进攻。"," §7[§d-",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]
execute if score $presserTeam maze_main_anchor_info matches 4 run tellraw @a[team=yellow] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对一个房间的进攻。"," §7[§d-",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]
execute if score $presserTeam maze_main_anchor_info matches 5 run tellraw @a[team=cyan] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对一个房间的进攻。"," §7[§d-",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]
execute if score $presserTeam maze_main_anchor_info matches 6 run tellraw @a[team=pink] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对一个房间的进攻。"," §7[§d-",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]
execute if score $presserTeam maze_main_anchor_info matches 7 run tellraw @a[team=orange] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对一个房间的进攻。"," §7[§d-",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]
execute if score $presserTeam maze_main_anchor_info matches 8 run tellraw @a[team=purple] ["§6[§r瀞§6] ",{"selector":"@a[tag=temp_room_initiatedBy]"},"§6发起了对一个房间的进攻。"," §7[§d-",{"score":{"name": "$finalPayment","objective": "maze_main_anchor_info"},"color": "light_purple"},"§r倐§7]"]