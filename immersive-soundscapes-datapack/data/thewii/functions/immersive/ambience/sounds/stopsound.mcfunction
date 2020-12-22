#> thewii:immersive/ambience/sounds/stopsound
#tellraw @s ["Stopping sound from ",{"score":{"name":"#location","objective":"twis.loop"}}]

# Forest
execute if score #location twis.loop matches 1 if score $time twis.data matches 0..1 at @s run stopsound @s ambient thewii:immersive.ambient.surface.forest.day_loop
execute if score #location twis.loop matches 1 if score $time twis.data matches 2..3 at @s run stopsound @s ambient thewii:immersive.ambient.surface.forest.night_loop

# Desert
execute if score #location twis.loop matches 2 if score $time twis.data matches 0..1 at @s run stopsound @s ambient thewii:immersive.ambient.surface.desert.day_loop
execute if score #location twis.loop matches 2 if score $time twis.data matches 2..3 at @s run stopsound @s ambient thewii:immersive.ambient.surface.desert.night_loop

# Swamp
execute if score #location twis.loop matches 5 if score $time twis.data matches 0..1 at @s run stopsound @s ambient thewii:immersive.ambient.surface.swamp.day_loop
execute if score #location twis.loop matches 5 if score $time twis.data matches 2..3 at @s run stopsound @s ambient thewii:immersive.ambient.surface.swamp.night_loop

# Beach
execute if score #location twis.loop matches 3 at @s run stopsound @s ambient thewii:immersive.ambient.surface.beach.loop

# Sea
execute if score #location twis.loop matches 4 at @s run stopsound @s ambient thewii:immersive.ambient.surface.sea.loop

# Snowy weather
execute if score #location twis.loop matches 10 at @s run stopsound @s ambient thewii:immersive.ambient.surface.weather.snowy

# Wind
execute if score #location twis.loop matches 100 at @s run stopsound @s ambient thewii:immersive.ambient.surface.wind.loop

# Caves
execute if score #location twis.loop matches 101 at @s run stopsound @s ambient thewii:immersive.ambient.caves.loop1
execute if score #location twis.loop matches 102 at @s run stopsound @s ambient thewii:immersive.ambient.caves.loop2
execute if score #location twis.loop matches 103 at @s run stopsound @s ambient thewii:immersive.ambient.caves.loop3
execute if score #location twis.loop matches 104 at @s run stopsound @s ambient thewii:immersive.ambient.caves.loop4

# Mineshaft
execute if score #location twis.loop matches 105 at @s run stopsound @s ambient thewii:immersive.ambient.mineshaft.loop