execute if score @s twis.trans matches 1 run scoreboard players set @s twis.loop 0

execute if score @s twis.trans matches 1 run function thewii:immersive/ambience/transition_sound
execute if score @s twis.trans matches 4 run function thewii:immersive/ambience/transition_sound

execute if score @s twis.trans matches 4 run scoreboard players operation @s twis.locsw = @s twis.loc

scoreboard players add @s twis.trans 1

scoreboard players reset @s[scores={twis.trans=5..}] twis.trans