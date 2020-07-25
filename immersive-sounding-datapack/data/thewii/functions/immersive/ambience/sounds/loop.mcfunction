# NORMAL
execute if score @s twis.loc matches 1 if score @s twis.backgr matches 0 if score #time twis.data matches 1 run playsound thewii:immersive/ambient.surface.forest.day_loop ambient @s ~ ~ ~ 0.2 1
execute if score @s twis.loc matches 1 if score @s twis.backgr matches 0 if score #time twis.data matches 2 run playsound thewii:immersive/ambient.surface.forest.night_loop ambient @s ~ ~ ~ 1 0.975

execute if score @s twis.loc matches 2 if score @s twis.backgr matches 0 if score #time twis.data matches 1 run playsound thewii:immersive/ambient.surface.desert.day_loop ambient @s ~ ~ ~ 0.125 1
execute if score @s twis.loc matches 2 if score @s twis.backgr matches 0 if score #time twis.data matches 2 run playsound thewii:immersive/ambient.surface.desert.night_loop ambient @s ~ ~ ~ 0.2 1

execute if score @s twis.loc matches 5 if score @s twis.backgr matches 0 if score #time twis.data matches 1 run playsound thewii:immersive/ambient.surface.swamp.day_loop ambient @s ~ ~ ~ 0.2 1
execute if score @s twis.loc matches 5 if score @s twis.backgr matches 0 if score #time twis.data matches 2 run playsound thewii:immersive/ambient.surface.swamp.night_loop ambient @s ~ ~ ~ 0.5 1

execute if score @s twis.loc matches 3 if score @s twis.backgr matches 0 run playsound thewii:immersive/ambient.surface.beach.loop ambient @s ~ ~ ~ 0.2 1

execute if score @s twis.loc matches 4 if score @s twis.backgr matches 0 run playsound thewii:immersive/ambient.surface.sea.loop ambient @s ~ ~ ~ 0.2 1

execute if score @s twis.loc matches 10 run playsound thewii:immersive/ambient.surface.weather.snowy ambient @s ~ ~ ~ 0.15 1

execute if score @s twis.loc matches 100 run playsound thewii:immersive/ambient.surface.wind.loop ambient @s ~ ~ ~ 1 1



# BACKGROUND
execute if score @s twis.backgr matches 1 run playsound thewii:immersive/ambient.surface.river.loop ambient @s ~ ~ ~ 0.6 0.97


execute if score @s twis.loc matches 1 if score @s twis.backgr matches 1.. if score #time twis.data matches 1 run playsound thewii:immersive/ambient.surface.forest.day_loop ambient @s ~ ~ ~ 0.15 1
execute if score @s twis.loc matches 1 if score @s twis.backgr matches 1.. if score #time twis.data matches 2 run playsound thewii:immersive/ambient.surface.forest.night_loop ambient @s ~ ~ ~ 0.6 1

execute if score @s twis.loc matches 2 if score @s twis.backgr matches 1.. if score #time twis.data matches 1 run playsound thewii:immersive/ambient.surface.desert.day_loop ambient @s ~ ~ ~ 0.075 1
execute if score @s twis.loc matches 2 if score @s twis.backgr matches 1.. if score #time twis.data matches 2 run playsound thewii:immersive/ambient.surface.desert.night_loop ambient @s ~ ~ ~ 0.15 1

execute if score @s twis.loc matches 5 if score @s twis.backgr matches 1.. if score #time twis.data matches 1 run playsound thewii:immersive/ambient.surface.swamp.day_loop ambient @s ~ ~ ~ 0.15 1
execute if score @s twis.loc matches 5 if score @s twis.backgr matches 1.. if score #time twis.data matches 2 run playsound thewii:immersive/ambient.surface.swamp.night_loop ambient @s ~ ~ ~ 0.3 1

execute if score @s twis.loc matches 3 if score @s twis.backgr matches 1.. run playsound thewii:immersive/ambient.surface.beach.loop ambient @s ~ ~ ~ 0.15 1

execute if score @s twis.loc matches 4 if score @s twis.backgr matches 1.. run playsound thewii:immersive/ambient.surface.sea.loop ambient @s ~ ~ ~ 0.15 1

execute if score @s twis.loc matches 10 run playsound thewii:immersive/ambient.surface.weather.snowy ambient @s ~ ~ ~ 0.075 1



# UNDERGROUND
execute if score @s twis.loc matches 101 run playsound thewii:immersive/ambient.caves.loop ambient @s ~ ~ ~ 0.07 1
execute if score @s twis.loc matches 102 run playsound thewii:immersive/ambient.mineshaft.loop ambient @s ~ ~ ~ 0.75 1



# DIMENSIONS
execute unless score $netherupdate twis.loop matches 1 if score @s twis.loc matches 201 run playsound thewii:immersive/ambient.nether.loop ambient @s ~ ~ ~ 0.15 1