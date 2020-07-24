scoreboard players add @s twis.loop 1
scoreboard players set @s[scores={twis.loop=161..}] twis.loop 1

execute if score @s twis.loop matches 80 if predicate immersive:addition_chance run function immersive:ambience/sounds/addition

execute if score @s twis.loop matches 1 run function immersive:ambience/sounds/loop