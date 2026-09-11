

scoreboard players add tick decisiondome_anim 1

execute if score tick decisiondome_anim matches 0 run function decisiondome:switch_anim/f1
execute if score tick decisiondome_anim matches 160 run function decisiondome:switch_anim/f2
execute if score tick decisiondome_anim matches 240 run function decisiondome:switch_anim/f3
execute if score tick decisiondome_anim matches 340 run function decisiondome:switch_anim/1
execute if score tick decisiondome_anim matches 420 run function decisiondome:switch_anim/2
execute if score tick decisiondome_anim matches 540 run function decisiondome:switch_anim/3
execute if score tick decisiondome_anim matches 580 run function decisiondome:switch_anim/4
execute if score tick decisiondome_anim matches 660 run function decisiondome:switch_anim/5
execute if score tick decisiondome_anim matches 700 run function decisiondome:switch_anim/6
execute if score tick decisiondome_anim matches 760 run function decisiondome:switch_anim/7
execute if score tick decisiondome_anim matches 780 run function decisiondome:switch_anim/8
execute if score tick decisiondome_anim matches 940 run function decisiondome:switch_anim/9
execute if score tick decisiondome_anim matches 960 run function decisiondome:switch_anim/10
execute if score tick decisiondome_anim matches 1080 run function decisiondome:switch_anim/11
execute if score tick decisiondome_anim matches 1120 run function decisiondome:switch_anim/12
execute if score tick decisiondome_anim matches 1260 run function decisiondome:switch_anim/13
execute if score tick decisiondome_anim matches 1440 run function decisiondome:switch_anim/14
execute if score tick decisiondome_anim matches 1640 run function decisiondome:switch_anim/15
execute if score tick decisiondome_anim matches 1800 run function decisiondome:switch_anim/16
execute if score tick decisiondome_anim matches 1900 run function decisiondome:switch_anim/17
execute if score tick decisiondome_anim matches 1910 run function decisiondome:switch_anim/18
execute if score tick decisiondome_anim matches 1920 run function decisiondome:switch_anim/19

execute if score tick decisiondome_anim matches ..1919 run schedule function decisiondome:switch_anim/loop 1t
