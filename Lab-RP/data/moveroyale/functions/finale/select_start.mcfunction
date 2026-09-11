# Flag
scoreboard players set phase_finale_prelude moveroyale_game 2
scoreboard players set canPlace moveroyale_behavior_config 1
# Blocks
give @a[tag=mr_finalist_1st] netherite_block{CanPlaceOn:[quartz_pillar]}
give @a[tag=mr_finalist_2nd] diamond_block{CanPlaceOn:[quartz_pillar]}

# fx
title @a times 5 40 5
title @a title "§c选择开始！"
title @a[tag=mr_finalist_1st] subtitle "§b将方块放到对应模式的§f石英柱§b上以选择！"

# Timer
team modify placeholder_3 prefix ["§c选定结束: "]
scoreboard players set timeleft_t moveroyale_game 900
function moveroyale:timer/finale_select

# Detection
function moveroyale:finale/detect
