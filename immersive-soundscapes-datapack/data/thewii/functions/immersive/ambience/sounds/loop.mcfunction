# LOCATION (Normal volume)
#tellraw @s ["Playing loop in ",{"score":{"name":"@s","objective":"twis.loc"}}]

## Forest
execute if score @s twis.loc matches 1 if score @s twis.backgr matches 0 if score $time twis.data matches 0 at @s run playsound thewii:immersive.ambient.surface.forest.day_loop ambient @s ~ ~ ~ 1 1
execute if score @s twis.loc matches 1 if score @s twis.backgr matches 0 if score $time twis.data matches 1 at @s run playsound thewii:immersive.ambient.surface.forest.day_loop ambient @s ~ ~ ~ 0.5 1
execute if score @s twis.loc matches 1 if score @s twis.backgr matches 0 if score $time twis.data matches 2 at @s run playsound thewii:immersive.ambient.surface.forest.night_loop ambient @s ~ ~ ~ 0.4 0.975
execute if score @s twis.loc matches 1 if score @s twis.backgr matches 0 if score $time twis.data matches 3 at @s run playsound thewii:immersive.ambient.surface.forest.night_loop ambient @s ~ ~ ~ 0.8 0.975

## Desert
execute if score @s twis.loc matches 2 if score @s twis.backgr matches 0 if score $time twis.data matches 0 at @s run playsound thewii:immersive.ambient.surface.desert.day_loop ambient @s ~ ~ ~ 0.125 1
execute if score @s twis.loc matches 2 if score @s twis.backgr matches 0 if score $time twis.data matches 1 at @s run playsound thewii:immersive.ambient.surface.desert.day_loop ambient @s ~ ~ ~ 0.075 1
execute if score @s twis.loc matches 2 if score @s twis.backgr matches 0 if score $time twis.data matches 2 at @s run playsound thewii:immersive.ambient.surface.desert.night_loop ambient @s ~ ~ ~ 0.1 1
execute if score @s twis.loc matches 2 if score @s twis.backgr matches 0 if score $time twis.data matches 3 at @s run playsound thewii:immersive.ambient.surface.desert.night_loop ambient @s ~ ~ ~ 0.2 1

## Swamp
execute if score @s twis.loc matches 5 if score @s twis.backgr matches 0 if score $time twis.data matches 0 at @s run playsound thewii:immersive.ambient.surface.swamp.day_loop ambient @s ~ ~ ~ 0.2 1
execute if score @s twis.loc matches 5 if score @s twis.backgr matches 0 if score $time twis.data matches 1 at @s run playsound thewii:immersive.ambient.surface.swamp.day_loop ambient @s ~ ~ ~ 0.1 1
execute if score @s twis.loc matches 5 if score @s twis.backgr matches 0 if score $time twis.data matches 2 at @s run playsound thewii:immersive.ambient.surface.swamp.night_loop ambient @s ~ ~ ~ 0.25 1
execute if score @s twis.loc matches 5 if score @s twis.backgr matches 0 if score $time twis.data matches 3 at @s run playsound thewii:immersive.ambient.surface.swamp.night_loop ambient @s ~ ~ ~ 0.5 1

## Beach
execute if score @s twis.loc matches 3 if score @s twis.backgr matches 0 at @s run playsound thewii:immersive.ambient.surface.beach.loop ambient @s ~ ~ ~ 0.2 1

## Sea
execute if score @s twis.loc matches 4 if score @s twis.backgr matches 0 at @s run playsound thewii:immersive.ambient.surface.sea.loop ambient @s ~ ~ ~ 0.2 1

## Snowfall
execute if score @s twis.loc matches 10 at @s run playsound thewii:immersive.ambient.surface.weather.snowy ambient @s ~ ~ ~ 0.15 1

## Wind
execute if score @s twis.loc matches 100 at @s run playsound thewii:immersive.ambient.surface.wind.loop ambient @s ~ ~ ~ 1 1



# BACKGROUND

## River
execute if score @s twis.backgr matches 1 at @s run playsound thewii:immersive.ambient.surface.river.loop ambient @s ~ ~ ~ 0.6 0.97


# LOCATION (Lower volume)

# Forest
execute if score @s twis.loc matches 1 if score @s twis.backgr matches 1.. if score $time twis.data matches 0 at @s run playsound thewii:immersive.ambient.surface.forest.day_loop ambient @s ~ ~ ~ 0.15 1
execute if score @s twis.loc matches 1 if score @s twis.backgr matches 1.. if score $time twis.data matches 1 at @s run playsound thewii:immersive.ambient.surface.forest.day_loop ambient @s ~ ~ ~ 0.075 1
execute if score @s twis.loc matches 1 if score @s twis.backgr matches 1.. if score $time twis.data matches 2 at @s run playsound thewii:immersive.ambient.surface.forest.night_loop ambient @s ~ ~ ~ 0.3 1
execute if score @s twis.loc matches 1 if score @s twis.backgr matches 1.. if score $time twis.data matches 3 at @s run playsound thewii:immersive.ambient.surface.forest.night_loop ambient @s ~ ~ ~ 0.6 1

# Desert
execute if score @s twis.loc matches 2 if score @s twis.backgr matches 1.. if score $time twis.data matches 0 at @s run playsound thewii:immersive.ambient.surface.desert.day_loop ambient @s ~ ~ ~ 0.075 1
execute if score @s twis.loc matches 2 if score @s twis.backgr matches 1.. if score $time twis.data matches 1 at @s run playsound thewii:immersive.ambient.surface.desert.day_loop ambient @s ~ ~ ~ 0.0375 1
execute if score @s twis.loc matches 2 if score @s twis.backgr matches 1.. if score $time twis.data matches 2 at @s run playsound thewii:immersive.ambient.surface.desert.night_loop ambient @s ~ ~ ~ 0.075 1
execute if score @s twis.loc matches 2 if score @s twis.backgr matches 1.. if score $time twis.data matches 3 at @s run playsound thewii:immersive.ambient.surface.desert.night_loop ambient @s ~ ~ ~ 0.15 1

# Swamp
execute if score @s twis.loc matches 5 if score @s twis.backgr matches 1.. if score $time twis.data matches 0 at @s run playsound thewii:immersive.ambient.surface.swamp.day_loop ambient @s ~ ~ ~ 0.15 1
execute if score @s twis.loc matches 5 if score @s twis.backgr matches 1.. if score $time twis.data matches 1 at @s run playsound thewii:immersive.ambient.surface.swamp.day_loop ambient @s ~ ~ ~ 0.075 1
execute if score @s twis.loc matches 5 if score @s twis.backgr matches 1.. if score $time twis.data matches 2 at @s run playsound thewii:immersive.ambient.surface.swamp.night_loop ambient @s ~ ~ ~ 0.15 1
execute if score @s twis.loc matches 5 if score @s twis.backgr matches 1.. if score $time twis.data matches 3 at @s run playsound thewii:immersive.ambient.surface.swamp.night_loop ambient @s ~ ~ ~ 0.3 1

# Beach
execute if score @s twis.loc matches 3 if score @s twis.backgr matches 1.. at @s run playsound thewii:immersive.ambient.surface.beach.loop ambient @s ~ ~ ~ 0.15 1

# Sea
execute if score @s twis.loc matches 4 if score @s twis.backgr matches 1.. at @s run playsound thewii:immersive.ambient.surface.sea.loop ambient @s ~ ~ ~ 0.15 1

# Snowfall
execute if score @s twis.loc matches 10 at @s run playsound thewii:immersive.ambient.surface.weather.snowy ambient @s ~ ~ ~ 0.075 1



# UNDERGROUND

# Cave
execute if score @s twis.loc matches 101 at @s run playsound thewii:immersive.ambient.caves.loop1 ambient @s ~ ~ ~ 0.01 1
execute if score @s twis.loc matches 102 at @s run playsound thewii:immersive.ambient.caves.loop2 ambient @s ~ ~ ~ 0.02 1
execute if score @s twis.loc matches 103 at @s run playsound thewii:immersive.ambient.caves.loop3 ambient @s ~ ~ ~ 0.04 1
execute if score @s twis.loc matches 104 at @s run playsound thewii:immersive.ambient.caves.loop4 ambient @s ~ ~ ~ 0.06 1

# Mineshaft
execute if score @s twis.loc matches 105 at @s run playsound thewii:immersive.ambient.mineshaft.loop ambient @s ~ ~ ~ 0.75 1



# DIMENSIONS

# Nether
execute unless score $1.16 twis.data matches 1 if score @s twis.loc matches 201 at @s run playsound thewii:immersive.ambient.nether.loop ambient @s ~ ~ ~ 0.15 1