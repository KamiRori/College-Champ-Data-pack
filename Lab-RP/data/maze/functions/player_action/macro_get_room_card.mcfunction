
tellraw @s ["§b[§r坕§b] 已获取所在房间的§6领地卡§b。将其带回本队基地以占领此房间！"]
$give @s phantom_membrane{roomCardId:$(roomId),CustomModelData:200001,display:{Name:'"§r§6领地卡"',Lore:['"§r§b房间编号§f$(roomId)§b的领地卡"','"§r§e将本卡带回本队基地以建立对领地的占领。"','"§r§7使用回城卡或换位卡时消失！"','"§r§c丢弃后消失"']}} 1