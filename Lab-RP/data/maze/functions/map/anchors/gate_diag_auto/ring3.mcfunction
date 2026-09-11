
execute if block ~1 ~-1 ~1 diamond_block run summon marker ~ ~-1 ~ {Tags:["maze_anchors","room_gate","ring_3","diag_nw"]}
execute if block ~1 ~-1 ~-1 diamond_block run summon marker ~ ~-1 ~ {Tags:["maze_anchors","room_gate","ring_3","diag_ne"]}

execute if block ~1 ~-1 ~1 diamond_block run tellraw @s "[§6Dev§f] Placed an §6Gate §fanchor for §aRing 3. §bdiag_nw"
execute if block ~1 ~-1 ~-1 diamond_block run tellraw @s "[§6Dev§f] Placed an §6Gate §fanchor for §aRing 3. §bdiag_ne"
