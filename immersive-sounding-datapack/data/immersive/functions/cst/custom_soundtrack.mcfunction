#> Custom soundtracks(this is a conditional soundtrack list, it can be used for soundtracks that only play in certain situations)
#>   Choose an unique number to be the soundtrack ID.
execute if predicate immersive:cst/triggers/plains run scoreboard players set @s twis.cst_id 12
execute if predicate immersive:cst/triggers/desert run scoreboard players set @s twis.cst_id 13
execute if predicate immersive:cst/triggers/ocean run scoreboard players set @s twis.cst_id 14
execute if predicate immersive:cst/triggers/swamp run scoreboard players set @s twis.cst_id 15
execute if predicate immersive:cst/triggers/cold_biomes run scoreboard players set @s twis.cst_id 16
execute if predicate immersive:cst/triggers/jungle run scoreboard players set @s twis.cst_id 17
execute if predicate immersive:cst/triggers/savanna run scoreboard players set @s twis.cst_id 18
execute if predicate immersive:cst/triggers/mountains run scoreboard players set @s twis.cst_id 19
execute if predicate immersive:cst/triggers/badlands run scoreboard players set @s twis.cst_id 20

#> Rng(Random chosen soundtrack, this will take place if player has set their soundtrack trigger to "biomes". #max score should be the highest ID number)
execute if predicate immersive:dimension/in_overworld if score @s twis.cfg_csttrig matches 2 run scoreboard players set #max vp_math 20
execute if predicate immersive:dimension/in_overworld if score @s twis.cfg_csttrig matches 2 run function immersive:cst/randomized_custom_soundtrack