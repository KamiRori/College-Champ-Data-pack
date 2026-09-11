
execute in minecraft:overworld run tp @s -50280.20 97.00 -50033.53 3121.95 9.69


item replace entity @s armor.chest with elytra{Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1}]}
item replace entity @s armor.feet with air

title @s actionbar ["",{"text": "+","color": "green"}," 䅄",{"text": " 鞘翅","color": "green"},"  ",{"text": "-","color": "red"}]
scoreboard players set @s ar_sectime 0