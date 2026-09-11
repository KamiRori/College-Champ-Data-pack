

tag @a[team=red] add sba_tf_red
tag @a[team=blue] add sba_tf_blue
tag @a[team=green] add sba_tf_green
tag @a[team=yellow] add sba_tf_yellow
tag @a[team=cyan] add sba_tf_cyan
tag @a[team=pink] add sba_tf_pink
tag @a[team=orange] add sba_tf_orange
tag @a[team=purple] add sba_tf_purple

team join red @a[team=red]
team join red @a[team=green]
team join red @a[team=cyan]
team join red @a[team=orange]

team join blue @a[team=blue]
team join blue @a[team=yellow]
team join blue @a[team=orange]
team join blue @a[team=purple]

tellraw @a ["§b[§r戭§b] ",{"text": "No So Teamfight","color": "#E3E3E3"},"§b: 玩家加入两个大队伍进行对抗，游戏结束时按个人分结算回原队伍。"]