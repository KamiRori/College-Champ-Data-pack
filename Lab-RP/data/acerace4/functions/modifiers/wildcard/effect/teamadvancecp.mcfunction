
execute if score @s ar_cp matches 8 run return 0
scoreboard players add @s ar_cp 1

tellraw @s ["§b[§r莤§b] ",{"selector":"@a[tag=ar_temp_caster]"},"§b使你向前传送§f1§b个存档点！"]
function acerace4:checkpoint/send_back_no_notif