# Settings trigger
execute as @a[scores={ImmerSoundscapes=-2146473648..}] run function thewii:immersive/settings/trigger

# Joined
execute as @a[scores={twis.joined=-2146473648..}] run function thewii:immersive/player/joined

# Jumped
execute as @a[scores={twis.jump=-2146473648..}] run function thewii:immersive/player/jump

# Changed dimensions
execute as @a unless score @s twis.dim = @s twis.dimsw run function thewii:immersive/player/dimensions

# Time
execute unless predicate thewii:immersive/weather/is_night run scoreboard players set #time twis.data 1
execute if predicate thewii:immersive/weather/is_night run scoreboard players set #time twis.data 2

# Ambience
execute as @a[tag=!global.ignore,tag=!global.ignore.gui] at @s run function thewii:immersive/ambience/main
