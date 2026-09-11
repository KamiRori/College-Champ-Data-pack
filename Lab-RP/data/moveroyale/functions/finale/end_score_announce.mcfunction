

execute as @a[scores={moveroyale_finale_pos=1}] run tellraw @a [{"text":""},{"text": "1. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "moveroyale_finale_credits","name":"@s"}},"  ","§6+",{"score":{"objective": "moveroyale_finale_earn","name":"@s"},"color": "gold"},"§6pts"]
execute as @a[scores={moveroyale_finale_pos=2}] run tellraw @a [{"text":""},{"text": "2. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "moveroyale_finale_credits","name":"@s"}},"  ","§6+",{"score":{"objective": "moveroyale_finale_earn","name":"@s"},"color": "gold"},"§6pts"]
execute as @a[scores={moveroyale_finale_pos=3}] run tellraw @a [{"text":""},{"text": "3. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "moveroyale_finale_credits","name":"@s"}},"  ","§6+",{"score":{"objective": "moveroyale_finale_earn","name":"@s"},"color": "gold"},"§6pts"]
execute as @a[scores={moveroyale_finale_pos=4}] run tellraw @a [{"text":""},{"text": "4. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "moveroyale_finale_credits","name":"@s"}},"  ","§6+",{"score":{"objective": "moveroyale_finale_earn","name":"@s"},"color": "gold"},"§6pts"]
execute as @a[scores={moveroyale_finale_pos=5}] run tellraw @a [{"text":""},{"text": "5. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "moveroyale_finale_credits","name":"@s"}},"  ","§6+",{"score":{"objective": "moveroyale_finale_earn","name":"@s"},"color": "gold"},"§6pts"]
execute as @a[scores={moveroyale_finale_pos=6..}] run tellraw @s "……"
execute as @a[scores={moveroyale_finale_pos=6..}] run tellraw @s [{"text": ""},{"score":{"objective": "moveroyale_finale_pos","name": "@s"}},{"text": ". "},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "moveroyale_finale_credits","name":"@s"}}]
tellraw @a " "
