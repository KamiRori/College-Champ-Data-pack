
tag @s add fatesplate_death
# figure out how many votes to lose
scoreboard players operation $v1 fatesplate_playervotes = @s fatesplate_playervotes
scoreboard players operation $v2 fatesplate_playervotes = @s fatesplate_playervotes

scoreboard players operation $v1 fatesplate_playervotes /= 2 math
scoreboard players operation $v2 fatesplate_playervotes %= 2 math

execute if score $v2 fatesplate_playervotes matches 1 run scoreboard players add $v1 fatesplate_playervotes 1

# Find Attacker
execute if score @s univ_attacker matches 1.. run execute store result storage fatesplate:temp killerid int 1 run scoreboard players get @s univ_attacker
function fatesplate:player_action/macro_find_killer with storage fatesplate:temp

# Notify player about their lose
scoreboard players operation @s fatesplate_playervotes -= $v1 fatesplate_playervotes
execute if score @s univ_attacker matches -1 run tellraw @s ["§7[§r楒§7] 你掉出了平台！ ","§7(§c-",{"score":{"name": "$v1","objective": "fatesplate_playervotes"},"color": "red"},"§7)"]
execute if score @s univ_attacker matches 1.. run tellraw @s ["§7[§r楒§7] 你被",{"selector":"@a[tag=fatesplate_killer]"},"§7击落！ ","§7(§c-",{"score":{"name": "$v1","objective": "fatesplate_playervotes"},"color": "red"},"§7)"]
execute if score @s univ_attacker matches 1.. run tellraw @a[tag=!fatesplate_death,tag=!fatesplate_killer] ["§7[§r楒§7] ",{"selector":"@s"},"被",{"selector":"@a[tag=fatesplate_killer]"},"§7击落！"]

# Killer notice
execute if score @s univ_attacker matches 1.. run scoreboard players operation @a[tag=fatesplate_killer] fatesplate_playervotes += $v1 fatesplate_playervotes
execute if score @s univ_attacker matches 1.. run tellraw @a[tag=fatesplate_killer] ["§7[§r楒§7] 你击落了",{"selector":"@s"},"§7! ","§7(§a+",{"score":{"name": "$v1","objective": "fatesplate_playervotes"},"color": "green"},"§7)"]
execute if score @s univ_attacker matches 1.. run execute as @a[tag=fatesplate_killer] at @s run playsound minecraft:sound.lapcomplete record @s

execute if score @s univ_attacker matches 1.. run title @a[tag=fatesplate_killer] title ""
execute if score @s univ_attacker matches 1.. run title @a[tag=fatesplate_killer] subtitle ["[§a⚔§f] ",{"selector":"@s"}]
execute if score @s univ_attacker matches 1.. run title @a[tag=fatesplate_killer] times 0 20 10

# Invul
scoreboard players set @s fatesplate_invul 40
attribute @s generic.knockback_resistance base set 100
# Respawn Determine
## LAST 5s
execute if score second master.timer matches ..5 run gamemode spectator @s
execute if score second master.timer matches ..5 run execute at @s run tp @s ~ ~15 ~ facing 11000 100 11000
## ELSE
execute if score second master.timer matches 6.. run effect give @s blindness 1 0 true
execute if score second master.timer matches 6.. run effect give @s slow_falling 3 1 true
execute if score second master.timer matches 6.. run tp @s 11000 116 11000


# Cleanup
function utils:combattag/reset_self
tag @s remove fatesplate_death
tag @a remove fatesplate_killer
