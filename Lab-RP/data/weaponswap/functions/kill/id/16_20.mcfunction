
# Player Specific
###
execute if entity @s[scores={univ_pid=16}] run execute as @p[advancements={utils:killed/16=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=16}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=16}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=16}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=17}] run execute as @p[advancements={utils:killed/17=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=17}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=17}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=17}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=18}] run execute as @p[advancements={utils:killed/18=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=18}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=18}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=18}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=19}] run execute as @p[advancements={utils:killed/19=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=19}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=19}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=19}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=20}] run execute as @p[advancements={utils:killed/20=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=20}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=20}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=20}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

tag @a remove step_killer