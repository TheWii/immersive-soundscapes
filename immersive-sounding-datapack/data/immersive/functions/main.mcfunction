# Settings trigger
execute as @a[scores={ImmerSounding=-2146473648..}] run function immersive:settings/trigger

# Joined
execute as @a[scores={twis.joined=-2146473648..}] run function immersive:player/joined

# Jumped
execute as @a[scores={twis.jump=-2146473648..}] run function immersive:player/jump

# Changed dimensions
execute as @a unless score @s twis.dim = @s twis.dimsw run function immersive:player/dimensions

# Time
execute unless predicate immersive:weather/is_night run scoreboard players set #time twis.data 1
execute if predicate immersive:weather/is_night run scoreboard players set #time twis.data 2

# Ambience
execute as @a[tag=!global.ignore,tag=!global.ignore.gui] at @s run function immersive:ambience/main
