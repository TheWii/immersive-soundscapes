# OUTSIDE/INSIDE
scoreboard players set @s twis.outside 0
execute if predicate immersive:is_outside run scoreboard players set @s twis.outside 1

execute positioned ~2 ~ ~ if predicate immersive:is_outside run scoreboard players set @s twis.outside 1
execute positioned ~-2 ~ ~ if predicate immersive:is_outside run scoreboard players set @s twis.outside 1
execute positioned ~ ~ ~2 if predicate immersive:is_outside run scoreboard players set @s twis.outside 1
execute positioned ~ ~ ~-2 if predicate immersive:is_outside run scoreboard players set @s twis.outside 1

execute unless predicate immersive:height/on_surface run scoreboard players set @a twis.outside 0


# DETECT LOCATION
execute if score @s twis.river matches 0 run scoreboard players set @s twis.preloc 1
execute if predicate immersive:biome/on_desert run scoreboard players set @s twis.preloc 2
execute if predicate immersive:biome/on_beach run scoreboard players set @s twis.preloc 3
execute if predicate immersive:biome/on_ocean run scoreboard players set @s twis.preloc 4
execute if predicate immersive:biome/on_swamp run scoreboard players set @s twis.preloc 5

execute if predicate immersive:height/high_heights run scoreboard players set @s twis.preloc 100

execute unless predicate immersive:weather/is_sunny if predicate immersive:biome/on_cold_biomes run scoreboard players set @s twis.preloc 10
execute unless predicate immersive:weather/is_sunny if predicate immersive:biome/on_mountains unless entity @s[y=0,dy=90] run scoreboard players set @s twis.preloc 10
execute unless predicate immersive:weather/is_sunny if predicate immersive:biome/on_taiga unless entity @s[y=0,dy=130] run scoreboard players set @s twis.preloc 10

# STOP AMBIENCE IF RAINING(EXCEPT ON DRY BIOMES AND SNOWY BIOMES)
execute unless predicate immersive:weather/is_sunny unless score @s twis.loc matches 2 unless score @s twis.loc matches 10 run scoreboard players set @s twis.outside 0


# DETECT IF THERE IS A RIVER NEAR
scoreboard players set @s twis.river 0
execute if score @s twis.outside matches 1 if predicate immersive:height/river_height if predicate immersive:biome/on_river run scoreboard players set @s twis.river 1
execute if score @s twis.outside matches 1 if predicate immersive:height/river_height positioned ~5 ~ ~ if predicate immersive:biome/on_river run scoreboard players set @s twis.river 1
execute if score @s twis.outside matches 1 if predicate immersive:height/river_height positioned ~-5 ~ ~ if predicate immersive:biome/on_river run scoreboard players set @s twis.river 1
execute if score @s twis.outside matches 1 if predicate immersive:height/river_height positioned ~ ~ ~5 if predicate immersive:biome/on_river run scoreboard players set @s twis.river 1
execute if score @s twis.outside matches 1 if predicate immersive:height/river_height positioned ~ ~ ~-5 if predicate immersive:biome/on_river run scoreboard players set @s twis.river 1


# DETECT SPECIFIC LOCATIONS (AKA CAVES/MINESHAFTS/DIMENSIONS )
execute if predicate immersive:height/cave_height if predicate immersive:cave_air run scoreboard players set @s twis.preloc 101
execute if predicate immersive:structure/on_mineshaft run scoreboard players set @s twis.preloc 102

execute if predicate immersive:dimension/in_nether run scoreboard players set @s twis.preloc 201
execute if predicate immersive:dimension/in_end run scoreboard players set @s twis.preloc 202

# GET DIMENSION
execute if predicate immersive:dimension/in_nether run scoreboard players set @s twis.dim -1
execute if predicate immersive:dimension/in_overworld run scoreboard players set @s twis.dim 0
execute if predicate immersive:dimension/in_end run scoreboard players set @s twis.dim 1

# LOCATION TRANSITION DELAY
execute unless score @s twis.preloc = @s twis.loc run scoreboard players add @s twis.pretrans 1
execute if score @s twis.preloc matches 1..100 if predicate immersive:height/on_surface if score @s twis.pretrans matches 2.. run scoreboard players operation @s twis.loc = @s twis.preloc
execute if score @s twis.preloc matches 1..100 unless predicate immersive:height/on_surface if score @s twis.pretrans matches 6.. run scoreboard players operation @s twis.loc = @s twis.preloc
execute if score @s twis.preloc matches 101..199 if score @s twis.pretrans matches 3.. run scoreboard players operation @s twis.loc = @s twis.preloc
execute if score @s twis.preloc matches 200.. if score @s twis.pretrans matches 1.. run scoreboard players operation @s twis.loc = @s twis.preloc
execute if score @s twis.preloc = @s twis.loc run scoreboard players reset @s twis.pretrans