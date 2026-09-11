
execute as @a[team=!spec,tag=!moveroyale_selected,tag=!moveroyale_eliminated,x=199982,y=0,z=199998,dx=4,dz=4,dy=1] run function moveroyale:difficulty_select/select_low
execute as @a[team=!spec,tag=!moveroyale_selected,tag=!moveroyale_eliminated,x=200014,y=0,z=199998,dx=4,dz=4,dy=1] run function moveroyale:difficulty_select/select_high


schedule function moveroyale:difficulty_select/detection 1t
execute if score minute master.timer matches 0 if score second master.timer matches 0 run function moveroyale:difficulty_select/select_end