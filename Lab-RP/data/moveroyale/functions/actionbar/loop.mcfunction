
tag @a[tag=moveroyale_bracket_high] add temp_sendbossbar
tag @a[tag=moveroyale_bracket_low] add temp_sendbossbar
tag @a[tag=moveroyale_bracket_finale] add temp_sendbossbar
#

execute as @a[tag=temp_sendbossbar] run title @s actionbar ["",{"text": "\ub048","color": "#4E5C24","font": "ui"},{"text":"644","font": "space:backspace"},{"text": "PT: ","color": "yellow","font":"hud"},{"score":{"name": "@s","objective": "moveroyale_indv"},"font": "hud"}] 



tag @a remove temp_sendbossbar
execute if score ActiveGame tourney_stats matches 18 run schedule function moveroyale:actionbar/loop 1t