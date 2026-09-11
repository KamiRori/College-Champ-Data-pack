

$execute as @a run execute store success score @s maze_room_card_got_cleared run clear @s phantom_membrane{roomCardId:$(roomId)}
execute as @a[scores={maze_room_card_got_cleared=1..}] run tellraw @s ["§c[§r鼱§c] ","§c另一名玩家先于你建立了对你持有的一张§6领地卡§c对应房间的占领，你所持有的该张领地卡已§7失效并消失§c。"]

$execute as @a[scores={maze_room_attempting=$(roomId)}] at @s run function maze:player_action/objective_abort