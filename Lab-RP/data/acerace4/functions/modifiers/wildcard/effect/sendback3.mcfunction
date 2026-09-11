

scoreboard players remove @s ar_cp 3
execute if score @s ar_cp matches ..0 run scoreboard players set @s ar_cp 0
tellraw @s ["§c[§r鼱§c] ",{"selector":"@a[tag=ar_temp_caster]"},"§c使你倒退了至多§f3§c个存档点！"]
function acerace4:checkpoint/send_back_no_notif