#> thewii:immersive/cst/vanilla_soundtrack

# Default overworld gameplay
execute if predicate thewii:immersive/dimension/in_overworld run scoreboard players set @s twis.cst_id 1

# Creative/Spectator in Overworld
execute if predicate thewii:immersive/dimension/in_overworld unless entity @s[gamemode=survival] unless entity @s[gamemode=adventure] run scoreboard players set @s twis.cst_id 2

# Under water
execute if predicate thewii:immersive/cst/underwater run scoreboard players set @s twis.cst_id 3

# General Nether(1.15)
execute if predicate thewii:immersive/dimension/in_nether run scoreboard players set @s twis.cst_id 4

# Nether biomes(1.16+)
execute if predicate thewii:immersive/biome/on_nether_wastes run scoreboard players set @s twis.cst_id 5
execute if predicate thewii:immersive/biome/on_soul_sand_valley run scoreboard players set @s twis.cst_id 6
execute if predicate thewii:immersive/biome/on_basalt_deltas run scoreboard players set @s twis.cst_id 7
execute if predicate thewii:immersive/biome/on_crimson_forest run scoreboard players set @s twis.cst_id 8
execute if predicate thewii:immersive/biome/on_warped_forest run scoreboard players set @s twis.cst_id 9

# End
execute if predicate thewii:immersive/dimension/in_end run scoreboard players set @s twis.cst_id 10