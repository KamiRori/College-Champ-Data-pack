
# Player Specific
###
execute if entity @s[scores={univ_pid=21}] run execute as @p[advancements={utils:killed/21=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=21}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=21}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=21}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=22}] run execute as @p[advancements={utils:killed/22=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=22}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=22}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=22}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=23}] run execute as @p[advancements={utils:killed/23=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=23}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=23}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=23}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=24}] run execute as @p[advancements={utils:killed/24=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=24}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=24}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=24}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=25}] run execute as @p[advancements={utils:killed/25=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=25}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=25}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=25}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

tag @a remove step_killer