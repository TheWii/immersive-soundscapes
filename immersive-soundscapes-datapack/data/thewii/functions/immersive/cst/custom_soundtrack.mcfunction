#> thewii:immersive/cst/custom_soundtrack

# Rng
scoreboard players operation #min twis.temp = #min_custom_soundtrack twis.cst_id
scoreboard players operation #max twis.temp = $register twis.cst_id

function thewii:immersive/core/lcg/ranged

# Get ID
execute if score @s twis.cst_id matches 0 run scoreboard players operation @s twis.cst_id = #result vp_math