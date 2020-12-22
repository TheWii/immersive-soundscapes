#> thewii:immersive/ambience/surface_loop

# Increase counter
scoreboard players add @s twis.loop 1
execute if score @s twis.loop matches 86.. run scoreboard players set @s twis.loop 1

# Play loop
execute if score @s twis.loop matches 1 run function thewii:immersive/ambience/sounds/loop

# Play addition
execute if score @s twis.loop matches 15 if predicate thewii:immersive/surface_addition_chance run function thewii:immersive/ambience/sounds/addition
execute if score @s twis.loop matches 60 if predicate thewii:immersive/surface_addition_chance run function thewii:immersive/ambience/sounds/addition
