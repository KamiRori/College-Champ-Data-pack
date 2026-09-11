


summon chicken -10000 103 -10000 {ActiveEffects:[{Id:11b,Duration:40,Amplifier:60,ShowParticles:false}]}
scoreboard players add summoned dd_temp_rev_vote 1
execute if score summoned dd_temp_rev_vote matches 0..149 run function decisiondome:modifiers/reversed_vote/summon