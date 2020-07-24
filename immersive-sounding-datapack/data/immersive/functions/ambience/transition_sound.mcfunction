scoreboard players operation #location twis.loop = @s twis.locsw

execute if score @s twis.trans matches 1 if score @s twis.locsw matches 1..100 if score @s twis.outside matches 1 run function immersive:ambience/sounds/fadeout
execute if score @s twis.trans matches 1 if score @s twis.locsw matches 101..200 run function immersive:ambience/sounds/fadeout

execute if score @s twis.trans matches 4 if score @s twis.locsw matches 1..100 if score @s twis.outside matches 1 run function immersive:ambience/sounds/stopsound
execute if score @s twis.trans matches 4 if score @s twis.locsw matches 101..200 run function immersive:ambience/sounds/stopsound

scoreboard players reset #location twis.loop