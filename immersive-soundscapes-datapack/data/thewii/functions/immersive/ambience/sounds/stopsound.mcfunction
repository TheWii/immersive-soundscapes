#> thewii:immersive/ambience/sounds/stopsound

# Forest
execute if score #location twis.loop matches 1 if score #time twis.data matches 0 run stopsound @s ambient thewii:immersive.ambient.surface.forest.day_loop
execute if score #location twis.loop matches 1 if score #time twis.data matches 1 run stopsound @s ambient thewii:immersive.ambient.surface.forest.night_loop

# Desert
execute if score #location twis.loop matches 2 if score #time twis.data matches 0 run stopsound @s ambient thewii:immersive.ambient.surface.desert.day_loop
execute if score #location twis.loop matches 2 if score #time twis.data matches 1 run stopsound @s ambient thewii:immersive.ambient.surface.desert.night_loop

# Swamp
execute if score #location twis.loop matches 5 if score #time twis.data matches 0 run stopsound @s ambient thewii:immersive.ambient.surface.swamp.day_loop
execute if score #location twis.loop matches 5 if score #time twis.data matches 1 run stopsound @s ambient thewii:immersive.ambient.surface.swamp.night_loop

# Beach
execute if score #location twis.loop matches 3 run stopsound @s ambient thewii:immersive.ambient.surface.beach.loop

# Sea
execute if score #location twis.loop matches 4 run stopsound @s ambient thewii:immersive.ambient.surface.sea.loop

# Snowy weather
execute if score #location twis.loop matches 10 run stopsound @s ambient thewii:immersive.ambient.surface.weather.snowy

# Wind
execute if score #location twis.loop matches 100 run stopsound @s ambient thewii:immersive.ambient.surface.wind.loop

# Caves
execute if score #location twis.loop matches 101 run stopsound @s ambient thewii:immersive.ambient.caves.loop

# Mineshaft
execute if score #location twis.loop matches 102 run stopsound @s ambient thewii:immersive.ambient.mineshaft.loop