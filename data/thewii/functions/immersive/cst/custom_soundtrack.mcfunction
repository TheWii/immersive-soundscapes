#> thewii:immersive/cst/custom_soundtrack

# Rng
scoreboard players operation #min twis.math = #min_custom_soundtrack twis.cst_id
scoreboard players operation #max twis.math = $register twis.cst_id

function thewii:immersive/core/lcg/ranged

# Get ID
execute if score @s twis.cst_id matches 0 run scoreboard players operation @s twis.cst_id = #output twis.math