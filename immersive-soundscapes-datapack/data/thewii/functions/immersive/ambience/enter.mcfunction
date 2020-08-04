execute if score @s twis.enter matches 1 run function thewii:immersive/ambience/enter_sound
execute if score @s twis.enter matches 3 run function thewii:immersive/ambience/enter_sound

execute if score @s twis.enter matches 1 run scoreboard players set @s twis.loop 0

scoreboard players add @s twis.enter 1

scoreboard players reset @s[scores={twis.enter=4..}] twis.enter