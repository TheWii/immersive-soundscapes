#> thewii:immersive/cst/custom_soundtrack

# Rng
scoreboard players set #min vp_math 12
scoreboard players set #max vp_math 20

function thewii:immersive/rng/ranged_rng
execute if score @s twis.cst_id matches 0 run scoreboard players operation @s twis.cst_id = #result vp_math