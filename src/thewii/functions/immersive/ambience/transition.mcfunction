#> thewii:immersive/ambience/transition

# Reset loop
execute if score @s twis.trans matches 1 run scoreboard players set @s twis.loop 0


# Get location
scoreboard players operation #location twis.loop = @s twis.locsw

# Play fade
execute if score @s twis.trans matches 1 if score @s twis.locsw matches 1..100 if score @s twis.outside matches 1 run function thewii:immersive/ambience/sounds/fadeout
execute if score @s twis.trans matches 1 if score @s twis.locsw matches 101..200 run function thewii:immersive/ambience/sounds/fadeout

# Stop sound
execute if score @s twis.trans matches 2 if score @s twis.locsw matches 1..100 if score @s twis.outside matches 1 run function thewii:immersive/ambience/sounds/stopsound
execute if score @s twis.trans matches 2 if score @s twis.locsw matches 101..200 run function thewii:immersive/ambience/sounds/stopsound


# Update location switch
execute if score @s twis.trans matches 2 run scoreboard players operation @s twis.locsw = @s twis.loc

# Add transition counter and reset
scoreboard players add @s twis.trans 1
execute if score @s twis.trans matches 3.. run scoreboard players reset @s twis.trans