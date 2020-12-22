#> thewii:immersive/cst/main

# Idle management
execute if score @s twis.cst_idle matches 0.. if score @s twis.cst_playing matches 0.. run scoreboard players reset @s twis.cst_idle
execute unless score @s twis.cst_idle matches 0.. unless score @s twis.cst_playing matches 0.. run scoreboard players set @s twis.cst_idle 0

execute if score @s twis.cst_idle matches 0.. run scoreboard players add @s twis.cst_idle 1


# Start soundtrack

## Chance to check if idle is below max
execute if score @s twis.cst_idle >= $min_cst_idle twis.data if score @s twis.cst_idle < $max_cst_idle twis.data unless score @s twis.cst_playing matches 0.. if predicate thewii:immersive/cst/play_chance run function thewii:immersive/cst/check

## Instantly check if idle is higher than max
execute if score @s twis.cst_idle >= $max_cst_idle twis.data unless score @s twis.cst_playing matches 0.. run function thewii:immersive/cst/check


# Instant check

## Dragon Battle
execute unless score @s twis.cst_playing matches 0.. if predicate thewii:immersive/dimension/in_end if entity @e[type=minecraft:ender_dragon] run function thewii:immersive/cst/check


# Playing management
execute if score @s twis.cst_playing matches 0.. run scoreboard players add @s twis.cst_playing 1
execute if score @s twis.cst_playing matches 0.. if score @s twis.cst_playing >= @s twis.cst_length run function thewii:immersive/cst/ended