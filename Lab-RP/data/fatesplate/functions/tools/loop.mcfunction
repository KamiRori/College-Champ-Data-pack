

# Use
execute as @a[scores={fatesplate_toolused=1..,fatesplate_toolheld=1}] at @s run function fatesplate:tools/tool_use/instant_bonus_small
execute as @a[scores={fatesplate_toolused=1..,fatesplate_toolheld=2}] at @s run function fatesplate:tools/tool_use/instant_bonus_large
execute as @a[scores={fatesplate_toolused=1..,fatesplate_toolheld=3}] at @s run function fatesplate:tools/tool_use/hutao
execute as @a[scores={fatesplate_toolused=1..,fatesplate_toolheld=4}] at @s run function fatesplate:tools/tool_use/small_steal
execute as @a[scores={fatesplate_toolused=1..,fatesplate_toolheld=5}] at @s run function fatesplate:tools/tool_use/big_steal
execute as @a[scores={fatesplate_toolused=1..,fatesplate_toolheld=6}] at @s run function fatesplate:tools/tool_use/tnt
execute as @a[scores={fatesplate_toolused=1..,fatesplate_toolheld=7}] at @s run function fatesplate:tools/tool_use/forceful


# TNT Tool Passive
execute as @e[type=tnt,tag=toolsTNT,nbt={fuse:1s}] at @s run function fatesplate:tools/tnt_destroy

# Tools held detect
scoreboard players set @a fatesplate_toolheld -1
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:1}}}] fatesplate_toolheld 1
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:2}}}] fatesplate_toolheld 2
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:3}}}] fatesplate_toolheld 3
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:4}}}] fatesplate_toolheld 4
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:5}}}] fatesplate_toolheld 5
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:6}}}] fatesplate_toolheld 6
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:7}}}] fatesplate_toolheld 7
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:8}}}] fatesplate_toolheld 8
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:9}}}] fatesplate_toolheld 9
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:10}}}] fatesplate_toolheld 10
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:11}}}] fatesplate_toolheld 11


# Cleanup
kill @e[type=snowball,nbt={Item:{tag:{toolItem:1}}}]
scoreboard players set @a fatesplate_toolused 0
# Loop
execute if score phase tourney_stats matches 3..4 run schedule function fatesplate:tools/loop 1t