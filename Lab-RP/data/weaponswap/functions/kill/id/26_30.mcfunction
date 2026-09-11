
# Player Specific
###
execute if entity @s[scores={univ_pid=26}] run execute as @p[advancements={utils:killed/26=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=26}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=26}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=26}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=27}] run execute as @p[advancements={utils:killed/27=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=27}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=27}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=27}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=28}] run execute as @p[advancements={utils:killed/28=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=28}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=28}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=28}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=29}] run execute as @p[advancements={utils:killed/29=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=29}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=29}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=29}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=30}] run execute as @p[advancements={utils:killed/30=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=30}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=30}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=30}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

tag @a remove step_killer