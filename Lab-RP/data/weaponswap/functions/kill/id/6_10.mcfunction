
# Player Specific
###
execute if entity @s[scores={univ_pid=6}] run execute as @p[advancements={utils:killed/6=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=6}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=6}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=6}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=7}] run execute as @p[advancements={utils:killed/7=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=7}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=7}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=7}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=8}] run execute as @p[advancements={utils:killed/8=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=8}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=8}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=8}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=9}] run execute as @p[advancements={utils:killed/9=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=9}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=9}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=9}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=10}] run execute as @p[advancements={utils:killed/10=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=10}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=10}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=10}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

tag @a remove step_killer