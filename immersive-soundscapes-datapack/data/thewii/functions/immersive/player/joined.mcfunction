#> thewii:immersive/player/joined

# Reset triggers
scoreboard players reset @s twis.joined
advancement grant @s only thewii:immersive/player_joined


# Update location
function thewii:immersive/check_location


# Update sound loop
scoreboard players set @s twis.loop 0


# Update trigger
scoreboard players set @s ImmerSoundscapes 0
scoreboard players enable @s ImmerSoundscapes


# Reset cst system
execute unless score @s twis.cfg_cst matches 1.. run scoreboard players set @s twis.cfg_cst 3
execute unless score @s twis.cfg_csttrig matches 1.. run scoreboard players set @a twis.cfg_csttrig 2

execute if score @s twis.cfg_cst matches 2.. run scoreboard players operation @s twis.cst_idle = $min_cst_idle twis.data
execute if score @s twis.cfg_cst matches 2.. if score @s twis.cst_idle matches 60.. run scoreboard players remove @s twis.cst_idle 60

scoreboard players reset @s twis.cst_playing
scoreboard players reset @s twis.cst_id
scoreboard players reset @s twis.cst_length