




scoreboard players set gameflag rsr_game 1
scoreboard players set @a carrotgun 0



scoreboard players set @a rsr_reload 0
scoreboard players set @a rsr_internal_cd 0

scoreboard players set @a rsr_dura_clips 0
scoreboard players set @a rsr_dura_recharge_tick 0
scoreboard players set @a rsr_dura_recharges 0

tag @a remove lost_elytra

scoreboard players operation dura_loss_per_struck rsr_game = struck_per_stack_1 rsr_game

scoreboard players set @a rsr_round_updraft 0
scoreboard players set @a rsr_updraft_time -1

# Dura Speed
scoreboard players operation dura_loss_per_tick rsr_game = dura_loss_1 rsr_game

# GUN
give @a[team=!spec] carrot_on_a_stick{Unbreakable:1b,HideFlags:25,Enchantments:[{id:"knockback",lvl:2}],CustomModelData:1,display:{Name:'"§r§6火箭发射器"'}}

# EFFECT
effect give @a resistance infinite 5 true

#
function rocketspleefrush:weapon/cd_dura
function rocketspleefrush:weapon/player_dura

function rocketspleefrush:weapon/tick
function rocketspleefrush:durability/init
