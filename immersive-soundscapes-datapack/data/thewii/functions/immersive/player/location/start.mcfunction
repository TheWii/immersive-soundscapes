#> thewii:immersive/player/location/start

# Outside/Inside

## Check 20 blocks above head
scoreboard players set @s twis.outside 0
execute if predicate thewii:immersive/is_outside run scoreboard players set @s twis.outside 1

## Check 20 blocks around
execute if score @s twis.outside matches 0 positioned ~2 ~ ~ if predicate thewii:immersive/is_outside run scoreboard players set @s twis.outside 1
execute if score @s twis.outside matches 0 positioned ~-2 ~ ~ if predicate thewii:immersive/is_outside run scoreboard players set @s twis.outside 1
execute if score @s twis.outside matches 0 positioned ~ ~ ~2 if predicate thewii:immersive/is_outside run scoreboard players set @s twis.outside 1
execute if score @s twis.outside matches 0 positioned ~ ~ ~-2 if predicate thewii:immersive/is_outside run scoreboard players set @s twis.outside 1

## Check minimum Y level(60)
execute unless predicate thewii:immersive/height/on_surface run scoreboard players set @a twis.outside 0



# Surface (Outside)
execute unless score @s twis.backgr matches 1 run scoreboard players set @s twis.preloc 1

execute if score @s twis.outside matches 1 run function thewii:immersive/player/location/surface


# Player dimension
scoreboard players set @s twis.dim 0
execute if predicate thewii:immersive/dimension/in_nether run scoreboard players set @s twis.dim -1
execute if predicate thewii:immersive/dimension/in_end run scoreboard players set @s twis.dim 1


# Cave (Cave air)
execute if predicate thewii:immersive/cave_air run function thewii:immersive/player/location/cave


# LOCATIONS

## Mineshaft
execute if predicate thewii:immersive/structure/on_mineshaft run scoreboard players set @s twis.preloc 105


# DIMENSIONS

## Nether
execute if score @s twis.dim matches -1 run scoreboard players set @s twis.preloc 201

## The End
execute if score @s twis.dim matches 1 run scoreboard players set @s twis.preloc 202



# PRE-TRANSITION (Some transitions between biomes take longer)

## Start pre-trans count if loc changed
execute unless score @s twis.preloc = @s twis.loc run scoreboard players add @s twis.pretrans 1

## On surface
execute if score @s twis.preloc matches 1..100 if predicate thewii:immersive/height/on_surface if score @s twis.pretrans matches 2.. run scoreboard players operation @s twis.loc = @s twis.preloc

## Silent underground (Leaving a cave)
execute if score @s twis.preloc matches 1..100 unless predicate thewii:immersive/height/on_surface if score @s twis.pretrans matches 6.. run scoreboard players operation @s twis.loc = @s twis.preloc

## On caves and mineshafts
execute if score @s twis.preloc matches 101..199 if score @s twis.pretrans matches 3.. run scoreboard players operation @s twis.loc = @s twis.preloc

## Dimensions
execute if score @s twis.preloc matches 200.. if score @s twis.pretrans matches 1.. run scoreboard players operation @s twis.loc = @s twis.preloc

## Reset
execute if score @s twis.preloc = @s twis.loc run scoreboard players reset @s twis.pretrans