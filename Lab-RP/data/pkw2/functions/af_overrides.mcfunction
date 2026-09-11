
schedule clear master:latejoinspec
tag @a[x=-20000,y=-10,z=-20000,dx=9000,dz=9000,dy=300] add in_zone
tp @a[tag=!in_zone] -15000 99 -15043 0 0
tag @a remove in_zone

schedule function pkw2:af_overrides 1t