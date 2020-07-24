# Stop any music playing
stopsound @s music


# Play vanilla soundtrack
execute if score @s twis.cst_id matches 1 run playsound minecraft:soundtrack.game music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 2 run playsound minecraft:soundtrack.creative music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 3 run playsound minecraft:soundtrack.underwater music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 4 run playsound minecraft:soundtrack.nether music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 5 run playsound minecraft:soundtrack.nether.nether_wastes music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 6 run playsound minecraft:soundtrack.nether.soul_sand_valley music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 7 run playsound minecraft:soundtrack.nether.basalt_deltas music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 8 run playsound minecraft:soundtrack.nether.crimson_forest music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 9 run playsound minecraft:soundtrack.nether.warped_forest music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 10 run playsound minecraft:soundtrack.end music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 11 run playsound minecraft:soundtrack.dragon music @s ~ ~ ~ 1 1


#> Play custom soundtrack
#>  Use the soundtrack ID you chose in "custom_soundtrack.mcfunction" and play the soundtrack.
execute if score @s twis.cst_id matches 12 run playsound immersive:soundtrack.plains music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 13 run playsound immersive:soundtrack.desert music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 14 run playsound immersive:soundtrack.ocean music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 15 run playsound immersive:soundtrack.swamp music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 16 run playsound immersive:soundtrack.taiga music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 17 run playsound immersive:soundtrack.jungle music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 18 run playsound immersive:soundtrack.savanna music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 19 run playsound immersive:soundtrack.extreme_hills music @s ~ ~ ~ 1 1
execute if score @s twis.cst_id matches 20 run playsound immersive:soundtrack.mesa music @s ~ ~ ~ 1 1


#> Set soundtrack length (in seconds)
#> Datapacks can't know when a sound is not playing anymore, so this number will tell the system to finish the soundtrack and start idle time.

execute if score @s twis.cst_id matches 1 run scoreboard players set @s twis.cst_length 281
execute if score @s twis.cst_id matches 2 run scoreboard players set @s twis.cst_length 516
execute if score @s twis.cst_id matches 3 run scoreboard players set @s twis.cst_length 375
execute if score @s twis.cst_id matches 4 run scoreboard players set @s twis.cst_length 305
execute if score @s twis.cst_id matches 6 run scoreboard players set @s twis.cst_length 319
execute if score @s twis.cst_id matches 7 run scoreboard players set @s twis.cst_length 314
execute if score @s twis.cst_id matches 8 run scoreboard players set @s twis.cst_length 306
execute if score @s twis.cst_id matches 9 run scoreboard players set @s twis.cst_length 8
execute if score @s twis.cst_id matches 10 run scoreboard players set @s twis.cst_length 905
execute if score @s twis.cst_id matches 11 run scoreboard players set @s twis.cst_length 345


execute if score @s twis.cst_id matches 12 run scoreboard players set @s twis.cst_length 144
execute if score @s twis.cst_id matches 13 run scoreboard players set @s twis.cst_length 224
execute if score @s twis.cst_id matches 14 run scoreboard players set @s twis.cst_length 194
execute if score @s twis.cst_id matches 15 run scoreboard players set @s twis.cst_length 213
execute if score @s twis.cst_id matches 16 run scoreboard players set @s twis.cst_length 178
execute if score @s twis.cst_id matches 17 run scoreboard players set @s twis.cst_length 157
execute if score @s twis.cst_id matches 18 run scoreboard players set @s twis.cst_length 237
execute if score @s twis.cst_id matches 19 run scoreboard players set @s twis.cst_length 203
execute if score @s twis.cst_id matches 20 run scoreboard players set @s twis.cst_length 241



# Disable idle and enable playing time
scoreboard players reset @s twis.cst_idle
scoreboard players set @s twis.cst_playing 0