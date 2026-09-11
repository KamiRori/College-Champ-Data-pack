
# TEST: IF OBJECTIVE IS NOT PRESENT, ADD A NEW OBJECTIVE.
scoreboard objectives add moveroyale_roundtype dummy
execute unless score 1 moveroyale_roundtype matches -2147483648..2147483647 run scoreboard players set 1 moveroyale_roundtype 0
execute unless score 2 moveroyale_roundtype matches -2147483648..2147483647 run scoreboard players set 2 moveroyale_roundtype 1
execute unless score 3 moveroyale_roundtype matches -2147483648..2147483647 run scoreboard players set 3 moveroyale_roundtype 1
execute unless score 4 moveroyale_roundtype matches -2147483648..2147483647 run scoreboard players set 4 moveroyale_roundtype 2
execute unless score 5 moveroyale_roundtype matches -2147483648..2147483647 run scoreboard players set 5 moveroyale_roundtype 2
execute unless score 6 moveroyale_roundtype matches -2147483648..2147483647 run scoreboard players set 6 moveroyale_roundtype 3
execute unless score 7 moveroyale_roundtype matches -2147483648..2147483647 run scoreboard players set 7 moveroyale_roundtype 3
execute unless score 8 moveroyale_roundtype matches -2147483648..2147483647 run scoreboard players set 8 moveroyale_roundtype 4
execute unless score 9 moveroyale_roundtype matches -2147483648..2147483647 run scoreboard players set 9 moveroyale_roundtype 0
execute unless score 10 moveroyale_roundtype matches -2147483648..2147483647 run scoreboard players set 10 moveroyale_roundtype 0
#
bossbar add moveroyale_round_types ""
bossbar set moveroyale_round_types players @a
bossbar set moveroyale_round_types color pink
bossbar set moveroyale_round_types name ["",{"text":"\ub255","font": "ui","color": "#4E5C24"},{"text": "87653","font": "space:backspace"},{"score":{"name": "1","objective": "moveroyale_roundtype"},"font":"font:moveroyale_modes","color": "#4E5C24"}," → ",{"score":{"name": "2","objective": "moveroyale_roundtype"},"font":"font:moveroyale_modes","color": "#4E5C24"}," → ",{"score":{"name": "3","objective": "moveroyale_roundtype"},"font":"font:moveroyale_modes","color": "#4E5C24"}," → ",{"score":{"name": "4","objective": "moveroyale_roundtype"},"font":"font:moveroyale_modes","color": "#4E5C24"}," → ",{"score":{"name": "5","objective": "moveroyale_roundtype"},"font":"font:moveroyale_modes","color": "#4E5C24"}," → ",{"score":{"name": "6","objective": "moveroyale_roundtype"},"font":"font:moveroyale_modes","color": "#4E5C24"}," → ",{"score":{"name": "7","objective": "moveroyale_roundtype"},"font":"font:moveroyale_modes","color": "#4E5C24"}," → ",{"score":{"name": "8","objective": "moveroyale_roundtype"},"font":"font:moveroyale_modes","color": "#4E5C24"}," §e→ ",{"score":{"name": "9","objective": "moveroyale_roundtype"},"font":"font:moveroyale_modes","color": "#4E5C24"}," §e→ ",{"score":{"name": "10","objective": "moveroyale_roundtype"},"font":"font:moveroyale_modes","color": "#4E5C24"}]
