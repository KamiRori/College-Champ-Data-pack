
execute as @a at @s run playsound sound.timer_tick_high record @s ~ ~ ~
title @a title "第2回合"
title @a subtitle "§6方形地图 §f- §e破坏镐"
title @a times 0 40 10

give @a[team=!spec] golden_pickaxe{AttributeModifiers:[{Name:"1",AttributeName:"generic.attack_damage",Amount:0.0001,Operation:0,UUID:[I;1,2,3,4],Slot:"mainhand"}],Damage:31,Enchantments:[{id:"efficiency",lvl:10},{id:"knockback",lvl:2}],CanDestroy:[stone,smooth_stone,stone_bricks,mossy_cobblestone,mossy_stone_bricks,cracked_stone_bricks],display:{Name:'"§r§6破坏镐 | §7可破坏2个方块或击退1次敌人"'}} 1