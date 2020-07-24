scoreboard players operation #location twis.loop = @s twis.loc

execute if score @s twis.enter matches 1 run function immersive:ambience/sounds/fadeout
execute if score @s twis.enter matches 3 run function immersive:ambience/sounds/stopsound

scoreboard players reset #location twis.loop