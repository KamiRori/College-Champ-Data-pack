
# Player Specific
###
execute if entity @s[scores={univ_pid=31}] run execute as @p[advancements={utils:killed/31=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=31}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=31}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=31}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=32}] run execute as @p[advancements={utils:killed/32=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=32}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=32}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=32}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=33}] run execute as @p[advancements={utils:killed/33=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=33}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=33}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=33}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=34}] run execute as @p[advancements={utils:killed/34=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=34}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=34}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=34}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=35}] run execute as @p[advancements={utils:killed/35=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=35}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=35}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=35}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

tag @a remove step_killer