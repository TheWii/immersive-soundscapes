scoreboard players operation #location twis.loop = @s twis.loc

execute if score @s twis.enter matches 1 run function thewii:immersive/ambience/sounds/fadeout
execute if score @s twis.enter matches 3 run function thewii:immersive/ambience/sounds/stopsound

scoreboard players reset #location twis.loop