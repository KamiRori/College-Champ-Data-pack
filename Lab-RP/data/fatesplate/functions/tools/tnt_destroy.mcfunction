

execute if block ~ ~ ~ water run kill @s
execute if block ~ ~ ~ water run return fail

fill ~2 ~ ~2 ~-2 ~-2 ~-2 air
particle explosion ~ ~ ~ 0 0 0 0.2 1 force @a
playsound entity.generic.explode block @a ~ ~ ~ 1.2

kill @s