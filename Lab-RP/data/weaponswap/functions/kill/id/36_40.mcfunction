
# Player Specific
###
execute if entity @s[scores={univ_pid=36}] run execute as @p[advancements={utils:killed/36=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=36}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=36}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=36}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=37}] run execute as @p[advancements={utils:killed/37=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=37}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=37}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=37}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=38}] run execute as @p[advancements={utils:killed/38=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=38}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=38}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=38}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=39}] run execute as @p[advancements={utils:killed/39=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=39}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=39}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=39}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

execute if entity @s[scores={univ_pid=40}] run execute as @p[advancements={utils:killed/40=true}] at @s run function weaponswap:kill/score_kill
execute if entity @s[scores={univ_pid=40}] run execute as @a[team=!spec,tag=!ws_eliminated] at @s run function weaponswap:kill/score_survive
execute if entity @s[scores={univ_pid=40}] run execute as @a[tag=ws_eliminated] run function weaponswap:kill/killmsg_neutral
execute if entity @s[scores={univ_pid=40}] run execute as @a[team=spec] run function weaponswap:kill/killmsg_neutral

tag @a remove step_killer