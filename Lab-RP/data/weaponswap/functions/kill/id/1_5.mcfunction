
# Player Specific
###
execute if entity @s[scores={univ_pid=1}] run execute as @p[advancements={utils:killed/1=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=1}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=1}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=1}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=2}] run execute as @p[advancements={utils:killed/2=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=2}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=2}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=2}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=3}] run execute as @p[advancements={utils:killed/3=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=3}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=3}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=3}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=4}] run execute as @p[advancements={utils:killed/4=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=4}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=4}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=4}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=5}] run execute as @p[advancements={utils:killed/5=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=5}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=5}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=5}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

tag @a remove step_killer