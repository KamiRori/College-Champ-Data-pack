
tellraw @a ["§b[§r坕§b] ",{"text": "Amyotrophic Lateral Sclerosis","color": "#E3E3E3"},"§b: 挖掘奖励箱将使自身每秒叠加一定寒冷值，寒冷值达到100时陷入冻结。"]

scoreboard objectives add meltdown_modifiers_chill_meter dummy
scoreboard players set @a meltdown_modifiers_chill_meter 0

scoreboard objectives add meltdown_modifiers_crate_chill dummy
scoreboard players set @a meltdown_modifiers_crate_chill 0

function meltdown:modifiers/frozen_crate_loop
