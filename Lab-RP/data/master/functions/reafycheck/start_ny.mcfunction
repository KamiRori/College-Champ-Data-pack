
schedule clear master:reafycheck/detect
scoreboard objectives remove reafycheck
scoreboard objectives add reafycheck trigger
scoreboard players enable @a reafycheck
scoreboard players set @a reafycheck 0
scoreboard players set total reafycheck 0
scoreboard players set ready reafycheck 0
scoreboard players set answered reafycheck 0
scoreboard players set timeout reafycheck 60
scoreboard players set timeout_t reafycheck 0

execute as @a run scoreboard players add total reafycheck 1

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a "§aAn individual reafy check is happening"

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a "  §e§l提示："
tellraw @a ""
tellraw @a [{"text": "","color": "#66CCFF"},"  - 本次活动未经测试。"]
tellraw @a ["  - 请不要把这次活动当作一次“活动”看待，整蛊活动都不算。"]
tellraw @a ["  - 没有必要反馈BUG."]
tellraw @a ["  - 扣问号还是会被禁言 7.5 秒。"]
tellraw @a ""
tellraw @a [{"text": "","color": "#66CCFF"},"  请选择： ",{"text": "同意","bold": true,"color": "green","clickEvent": {"action":"run_command","value": "/trigger reafycheck set 1"}},"        ",{"text": "如果我非要不同意呢","bold": true,"color":"gray","clickEvent": {"action":"run_command","value": ""}}]

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

function master:reafycheck/detect