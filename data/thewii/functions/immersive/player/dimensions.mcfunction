#> thewii:immersive/player/dimensions

# DEBUG
#tellraw @s[tag=mvis.debug] ["-- changed dimensions --"]

# Reset triggers
advancement revoke @s only thewii:immersive/player/changed_dimension
#scoreboard players operation @s mvis.dimsw = @s mvis.dim

# Reset loop
scoreboard players set @s mvis.loop 0

# Update location
function thewii:immersive/player/location/start

# Reset cst system
execute if score @s twis.cfg_cst matches 2.. run scoreboard players operation @s twis.cst_idle = $min_cst_idle twis.data
execute if score @s twis.cfg_cst matches 2.. if score @s twis.cst_idle matches 120.. run scoreboard players remove @s twis.cst_idle 120

scoreboard players reset @s twis.cst_playing
scoreboard players reset @s twis.cst_id
scoreboard players reset @s twis.cst_length

