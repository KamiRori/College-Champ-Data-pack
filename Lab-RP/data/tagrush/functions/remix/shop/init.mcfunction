
# Remove previous Tags
tag @a remove p.center_lock_kill
tag @a remove p.center_lock_time
tag @a remove p.game_mod_haste
tag @a remove p.score_tweak_kill
tag @a remove p.score_tweak_win
tag @a remove p.score_tweak_overtime
tag @a remove p.score_tweak_survive
tag @a remove p.win_keepinv_3
tag @a remove p.win_keepinv_2
tag @a remove p.win_keepinv_1

# Keep Inventory Stacks
scoreboard objectives add tagrush_keepinv_stacks dummy
scoreboard players set @a tagrush_keepinv_stacks 0

# Objective
scoreboard objectives add tagrush_shop_coins dummy
scoreboard players set @a[team=red] tagrush_shop_coins 500
scoreboard players set @a[team=blue] tagrush_shop_coins 500
scoreboard players set @a[team=green] tagrush_shop_coins 500
scoreboard players set @a[team=yellow] tagrush_shop_coins 500
scoreboard players set @a[team=cyan] tagrush_shop_coins 500
scoreboard players set @a[team=pink] tagrush_shop_coins 500
scoreboard players set @a[team=orange] tagrush_shop_coins 500
scoreboard players set @a[team=purple] tagrush_shop_coins 500
scoreboard players set @a[team=spec] tagrush_shop_coins -999

# Shop Value
scoreboard objectives add tagrush_shop_price dummy
scoreboard players set wooden_sword tagrush_shop_price 2
scoreboard players set stone_sword tagrush_shop_price 8
scoreboard players set iron_sword tagrush_shop_price 18
scoreboard players set wooden_axe tagrush_shop_price 7
scoreboard players set stone_axe tagrush_shop_price 18

scoreboard players set bow tagrush_shop_price 3
scoreboard players set crossbow tagrush_shop_price 6
scoreboard players set arrow_3 tagrush_shop_price 2
scoreboard players set arrow_poison tagrush_shop_price 10
scoreboard players set arrow_slowness tagrush_shop_price 6
scoreboard players set arrow_weakness tagrush_shop_price 4
scoreboard players set trident_loyalty tagrush_shop_price 10
scoreboard players set fishing_rod tagrush_shop_price 4

scoreboard players set chestplate_leather tagrush_shop_price 3
scoreboard players set chestplate_gold tagrush_shop_price 8
scoreboard players set chestplate_iron tagrush_shop_price 14

scoreboard players set potion_splash_heal_1 tagrush_shop_price 5
scoreboard players set potion_splash_heal_2 tagrush_shop_price 8
scoreboard players set potion_splash_harm_1 tagrush_shop_price 6
scoreboard players set potion_splash_harm_2 tagrush_shop_price 14
scoreboard players set potion_splash_levitation tagrush_shop_price 7
scoreboard players set potion_speed tagrush_shop_price 7
scoreboard players set potion_resistance tagrush_shop_price 20
scoreboard players set potion_regeneration tagrush_shop_price 12
scoreboard players set cobweb tagrush_shop_price 3
scoreboard players set golden_apple tagrush_shop_price 10

scoreboard players set modif_kill_tweak tagrush_shop_price 60
scoreboard players set modif_win_tweak tagrush_shop_price 60
scoreboard players set modif_lose_overtime tagrush_shop_price 60
scoreboard players set modif_lose_survive tagrush_shop_price 60
scoreboard players set modif_lock_time tagrush_shop_price 45
scoreboard players set modif_lock_kill tagrush_shop_price 45
scoreboard players set modif_haste tagrush_shop_price 75
scoreboard players set modif_keepinv_stack tagrush_shop_price 60

# PreGame loop
scoreboard players set timeout_warn_remix tagrush_game 0
function tagrush:remix/shop/pregame_loop