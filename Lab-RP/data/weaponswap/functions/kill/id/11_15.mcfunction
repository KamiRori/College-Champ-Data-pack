
# Player Specific
###
execute if entity @s[scores={univ_pid=11}] run execute as @p[advancements={utils:killed/11=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=11}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=11}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=11}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=12}] run execute as @p[advancements={utils:killed/12=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=12}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=12}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=12}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=13}] run execute as @p[advancements={utils:killed/13=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=13}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=13}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=13}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=14}] run execute as @p[advancements={utils:killed/14=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=14}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=14}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=14}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=15}] run execute as @p[advancements={utils:killed/15=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=15}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=15}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=15}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

tag @a remove step_killer