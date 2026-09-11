
scoreboard objectives add temp_rsr_chr dummy
execute store result score $result temp_rsr_chr run random value 1..10

execute if score $result temp_rsr_chr matches 1 run function rocketspleefrush:modifiers/random_updraft/effect/1
execute if score $result temp_rsr_chr matches 2 run function rocketspleefrush:modifiers/random_updraft/effect/2
execute if score $result temp_rsr_chr matches 3 run function rocketspleefrush:modifiers/random_updraft/effect/3
execute if score $result temp_rsr_chr matches 4 run function rocketspleefrush:modifiers/random_updraft/effect/4
execute if score $result temp_rsr_chr matches 5 run function rocketspleefrush:modifiers/random_updraft/effect/5
execute if score $result temp_rsr_chr matches 6 run function rocketspleefrush:modifiers/random_updraft/effect/6
execute if score $result temp_rsr_chr matches 7 run function rocketspleefrush:modifiers/random_updraft/effect/7
execute if score $result temp_rsr_chr matches 8 run function rocketspleefrush:modifiers/random_updraft/effect/8
execute if score $result temp_rsr_chr matches 9 run function rocketspleefrush:modifiers/random_updraft/effect/9
execute if score $result temp_rsr_chr matches 10 run function rocketspleefrush:modifiers/random_updraft/effect/10

scoreboard objectives remove temp_rsr_chr