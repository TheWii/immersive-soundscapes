scoreboard players add @s twis.loop 1
scoreboard players set @s[scores={twis.loop=161..}] twis.loop 1

execute if score @s twis.loop matches 80 if predicate thewii:immersive/addition_chance run function thewii:immersive/ambience/sounds/addition

execute if score @s twis.loop matches 1 run function thewii:immersive/ambience/sounds/loop