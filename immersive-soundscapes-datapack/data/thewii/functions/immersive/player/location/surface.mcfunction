#> thewii:immersive/player/location/surface

# BIOMES

## Desert
execute if predicate thewii:immersive/biome/on_desert run scoreboard players set @s twis.preloc 2

## Beach
execute if predicate thewii:immersive/biome/on_beach run scoreboard players set @s twis.preloc 3

## Ocean
execute if predicate thewii:immersive/biome/on_ocean run scoreboard players set @s twis.preloc 4

## Swamp
execute if predicate thewii:immersive/biome/on_swamp run scoreboard players set @s twis.preloc 5


# SPECIAL

## Elevated altitude
execute if predicate thewii:immersive/height/high_heights run scoreboard players set @s twis.preloc 100


# WEATHER

## Snowfall (Snowy biomes when raining)
execute if score #weather twis.data matches 1.. if predicate thewii:immersive/biome/on_cold_biomes run scoreboard players set @s twis.preloc 10
execute if score #weather twis.data matches 1.. if predicate thewii:immersive/biome/on_mountains unless entity @s[y=0,dy=90] run scoreboard players set @s twis.preloc 10
execute if score #weather twis.data matches 1.. if predicate thewii:immersive/biome/on_taiga unless entity @s[y=0,dy=130] run scoreboard players set @s twis.preloc 10

## Stop ambience if raining (except on deserts and snowy biomes)
execute if score #weather twis.data matches 1.. unless score @s twis.loc matches 2 unless score @s twis.loc matches 10 run scoreboard players set @s twis.outside 0


# BACKGROUND

## Reset
scoreboard players set @s twis.backgr 0

## River
execute store success score #river_height twvp.temp if predicate thewii:immersive/height/river_height

execute if score @s twis.backgr matches 0 if score #river_height twvp.temp matches 1 if predicate thewii:immersive/biome/on_river run scoreboard players set @s twis.backgr 1
execute if score @s twis.backgr matches 0 if score #river_height twvp.temp matches 1 positioned ~5 ~ ~ if predicate thewii:immersive/biome/on_river run scoreboard players set @s twis.backgr 1
execute if score @s twis.backgr matches 0 if score #river_height twvp.temp matches 1 positioned ~-5 ~ ~ if predicate thewii:immersive/biome/on_river run scoreboard players set @s twis.backgr 1
execute if score @s twis.backgr matches 0 if score #river_height twvp.temp matches 1 positioned ~ ~ ~5 if predicate thewii:immersive/biome/on_river run scoreboard players set @s twis.backgr 1
execute if score @s twis.backgr matches 0 if score #river_height twvp.temp matches 1 positioned ~ ~ ~-5 if predicate thewii:immersive/biome/on_river run scoreboard players set @s twis.backgr 1
