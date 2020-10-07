#> thewii:immersive/ambience/underground_loop

# Increase counter
scoreboard players add @s twis.loop 1
execute if score @s twis.loop matches 161.. run scoreboard players set @s twis.loop 1


# Sound loop
execute if score @s twis.loop matches 1 run function thewii:immersive/ambience/sounds/loop

# Addition chance
execute if score @s twis.loop matches 30 if predicate thewii:immersive/addition_chance run function thewii:immersive/ambience/sounds/addition