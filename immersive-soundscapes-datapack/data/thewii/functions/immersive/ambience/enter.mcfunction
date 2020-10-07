#> thewii:immersive/ambience/enter

# Get location
scoreboard players operation #location twis.loop = @s twis.loc

# Fadeout
execute if score @s twis.enter matches 1 run function thewii:immersive/ambience/sounds/fadeout
execute if score @s twis.enter matches 1 run scoreboard players set @s twis.loop 0

# Stopsound
execute if score @s twis.enter matches 3 run function thewii:immersive/ambience/sounds/stopsound


# Increase enter counter and reset
scoreboard players add @s twis.enter 1
execute if score @s twis.enter matches 4.. run scoreboard players reset @s twis.enter