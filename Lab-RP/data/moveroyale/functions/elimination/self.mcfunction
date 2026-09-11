
tag @s remove temp_mr_pre_elim
tag @s add moveroyale_eliminated

gamemode spectator @s
execute at @s run summon lightning_bolt ~ -64 ~
tellraw @a ["§7[§r楒§7] ",{"selector":"@s"},"§7被淘汰了。"]