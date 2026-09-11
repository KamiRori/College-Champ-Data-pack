
# Objective Build
clone ~-11 ~-15 ~-3 ~-5 ~-8 ~3 ~-11 ~ ~-3

# Item Given
give @a[tag=getting_challenge] iron_pickaxe{CanDestroy:[packed_ice],challengeItem:1}
give @a[tag=getting_challenge] packed_ice{CanPlaceOn:[packed_ice,white_concrete,white_concrete_powder],challengeItem:1} 32

# Teleport
tp @a[tag=getting_challenge] ~ ~ ~-16 0 0

# Flags the anchor as in use.
tag @s add state_inuse