#> thewii:immersive/core/tick/1

# Time
scoreboard players set #time twis.data 0
execute if predicate thewii:immersive/weather/is_night run scoreboard players set #time twis.data 1


# Settings trigger
execute as @a[scores={ImmerSoundscapes=-2146473648..}] run function thewii:immersive/settings/trigger


# Joined
execute as @a[scores={twis.joined=-2146473648..}] run function thewii:immersive/player/joined


# Jumped
execute as @a[scores={twis.jump=-2146473648..}] run function thewii:immersive/player/jump


# Ambience
execute as @a at @s run function thewii:immersive/ambience/main
