#> thewii:immersive/ambience/sounds/addition

# Forest
execute if score @s twis.loc matches 1 if score $time twis.data matches 0 at @s run playsound thewii:immersive.ambient.surface.forest.day_addition ambient @s ~ ~ ~ 0.5 1
execute if score @s twis.loc matches 1 if score $time twis.data matches 1 at @s run playsound thewii:immersive.ambient.surface.forest.day_addition ambient @s ~ ~ ~ 0.25 1
execute if score @s twis.loc matches 1 if score $time twis.data matches 2 at @s run playsound thewii:immersive.ambient.surface.forest.night_addition ambient @s ~ ~ ~ 0.3 1
execute if score @s twis.loc matches 1 if score $time twis.data matches 3 at @s run playsound thewii:immersive.ambient.surface.forest.night_addition ambient @s ~ ~ ~ 0.15 1

# Swamp
execute if score @s twis.loc matches 5 at @s run playsound thewii:immersive.ambient.surface.swamp.addition ambient @s ~ ~ ~ 0.3 1


# Caves
execute if score @s twis.loc matches 101 at @s run playsound thewii:immersive.ambient.caves.addition ambient @s ~ ~ ~ 0.005 1
execute if score @s twis.loc matches 102 at @s run playsound thewii:immersive.ambient.caves.addition ambient @s ~ ~ ~ 0.01 1
execute if score @s twis.loc matches 103 at @s run playsound thewii:immersive.ambient.caves.addition ambient @s ~ ~ ~ 0.03 1
execute if score @s twis.loc matches 104 at @s run playsound thewii:immersive.ambient.caves.addition ambient @s ~ ~ ~ 0.05 1

# Mineshaft
execute if score @s twis.loc matches 105 at @s run playsound thewii:immersive.ambient.mineshaft.addition ambient @s ~ ~ ~ 0.5 1
