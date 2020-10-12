#> thewii:immersive/ambience/backgr_switch

# Start background loop
execute if score @s twis.trans matches 11 if score @s twis.backgr matches 1 at @s run playsound thewii:immersive.ambient.surface.river.loop ambient @s ~ ~ ~ 0.6 1

# Background fadeout
execute if score @s twis.trans matches 11 if score @s twis.backgrsw matches 1 at @s run playsound thewii:immersive.ambient.surface.river.fadeout ambient @s ~ ~ ~ 0.6 1

# Stop background
execute if score @s twis.trans matches 14 if score @s twis.backgrsw matches 1 at @s run stopsound @s ambient thewii:immersive.ambient.surface.river.loop


# Set switch
execute if score @s twis.trans matches 14 run scoreboard players operation @s twis.backgrsw = @s twis.backgr


# Increase counter and reset
scoreboard players add @s twis.trans 1
execute if score @s twis.trans matches 15..20 run scoreboard players reset @s twis.trans