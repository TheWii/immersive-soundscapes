#> thewii:immersive/player/location/cave

# Cave depths
scoreboard players set #cave_depth twis.temp 0

## 50-60
execute if entity @s[y=50,dy=9] run scoreboard players set #cave_depth twis.temp 101

## 35-49
execute if score #cave_depth twis.temp matches 0 if entity @s[y=35,dy=14] run scoreboard players set #cave_depth twis.temp 102

## 20-34
execute if score #cave_depth twis.temp matches 0 if entity @s[y=20,dy=13] run scoreboard players set #cave_depth twis.temp 103

## 0--19
execute if score #cave_depth twis.temp matches 0 if entity @s[y=0,dy=19] run scoreboard players set #cave_depth twis.temp 104

execute if score #cave_depth twis.temp matches 1.. run scoreboard players operation @s twis.preloc = #cave_depth twis.temp