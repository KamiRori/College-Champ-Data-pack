
scoreboard objectives add rrr_temp_randfw dummy
execute store result score $rand rrr_temp_randfw run random value 1..10

execute if score $rand rrr_temp_randfw matches 1 run summon firework_rocket ~ ~1 ~ {LifeTime:12,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;8073150]}]}}}}
execute if score $rand rrr_temp_randfw matches 2 run summon firework_rocket ~ ~1 ~ {LifeTime:7,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:3,Flicker:1,Trail:0,Colors:[I;12474927]}]}}}}
execute if score $rand rrr_temp_randfw matches 3 run summon firework_rocket ~ ~1 ~ {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:1,Trail:0,Colors:[I;10927663]}]}}}}
execute if score $rand rrr_temp_randfw matches 4 run summon firework_rocket ~ ~1 ~ {LifeTime:28,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:2,Flicker:0,Trail:1,Colors:[I;33023]}]}}}}
execute if score $rand rrr_temp_randfw matches 5 run summon firework_rocket ~ ~1 ~ {LifeTime:13,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:1,Trail:0,Colors:[I;8073150]}]}}}}
execute if score $rand rrr_temp_randfw matches 6 run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;65374]}]}}}}
execute if score $rand rrr_temp_randfw matches 7 run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;1330594]}]}}}}
execute if score $rand rrr_temp_randfw matches 8 run summon firework_rocket ~ ~1 ~ {LifeTime:9,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;16711680]}]}}}}
execute if score $rand rrr_temp_randfw matches 9 run summon firework_rocket ~ ~1 ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:2,Flicker:0,Trail:0,Colors:[I;16714881]}]}}}}
execute if score $rand rrr_temp_randfw matches 10 run summon firework_rocket ~ ~1 ~ {LifeTime:22,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:3,Flicker:1,Trail:0,Colors:[I;6077999]}]}}}}

scoreboard objectives remove rrr_temp_randfw