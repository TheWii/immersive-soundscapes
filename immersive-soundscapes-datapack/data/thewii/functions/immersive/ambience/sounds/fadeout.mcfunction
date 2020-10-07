#> thewii:immersive/ambience/sounds/fadeout

# Forest
execute if score #location twis.loop matches 1 if score #time twis.data matches 0 run playsound thewii:immersive.ambient.surface.forest.day_fadeout ambient @s ~ ~ ~ 1 1
execute if score #location twis.loop matches 1 if score #time twis.data matches 1 run playsound thewii:immersive.ambient.surface.forest.night_fadeout ambient @s ~ ~ ~ 0.9 1

# Desert
execute if score #location twis.loop matches 2 if score #time twis.data matches 0 run playsound thewii:immersive.ambient.surface.desert.day_loop_fadeout ambient @s ~ ~ ~ 0.125 1
execute if score #location twis.loop matches 2 if score #time twis.data matches 1 run playsound thewii:immersive.ambient.surface.desert.night_loop_fadeout ambient @s ~ ~ ~ 0.2 1

# Swamp
execute if score #location twis.loop matches 5 if score #time twis.data matches 0 run playsound thewii:immersive.ambient.surface.swamp.day_fadeout ambient @s ~ ~ ~ 0.125 1
execute if score #location twis.loop matches 5 if score #time twis.data matches 1 run playsound thewii:immersive.ambient.surface.swamp.night_fadeout ambient @s ~ ~ ~ 0.2 1

# Beach
execute if score #location twis.loop matches 3 run playsound thewii:immersive.ambient.surface.beach.fadeout ambient @s ~ ~ ~ 0.2 1

# Sea
execute if score #location twis.loop matches 4 run playsound thewii:immersive.ambient.surface.sea.fadeout ambient @s ~ ~ ~ 0.2 1

# Snowy weather
execute if score #location twis.loop matches 10 run playsound thewii:immersive.ambient.surface.weather.snowy_fadeout ambient @s ~ ~ ~ 0.15 1

# Wind
execute if score #location twis.loop matches 100 run playsound thewii:immersive.ambient.surface.wind.fadeout ambient @s ~ ~ ~ 0.7 1

# Cave
execute if score #location twis.loop matches 101 run playsound thewii:immersive.ambient.caves.loop_fadeout ambient @s ~ ~ ~ 0.07 1

# Mineshaft
execute if score #location twis.loop matches 102 run playsound thewii:immersive.ambient.mineshaft.loop_fadeout ambient @s ~ ~ ~ 0.75 1