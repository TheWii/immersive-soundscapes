scoreboard players add @s[scores={twis.outside=1}] twis.loop 1
scoreboard players set @s[scores={twis.loop=171..}] twis.loop 1

execute if entity @s[scores={twis.loop=1}] run function immersive:ambience/sounds/loop

execute if entity @s[scores={twis.loop=30}] if predicate immersive:surface_addition_chance run function immersive:ambience/sounds/addition
execute if entity @s[scores={twis.loop=120}] if predicate immersive:surface_addition_chance run function immersive:ambience/sounds/addition
