#> thewii:immersive/core/tick/1

# Time
execute store result score $daytime twis.data run time query daytime

## Day
scoreboard players set $time twis.data 0

## Sunset/Sunrise 1
execute if score $daytime twis.data matches 12000..23999 run scoreboard players set $time twis.data 1

## Sunset/Sunrise 2
execute if score $daytime twis.data matches 12500..23500 run scoreboard players set $time twis.data 2

## Night
execute if score $daytime twis.data matches 13000..22999 run scoreboard players set $time twis.data 3



# Player

## Joined
execute as @a[scores={twis.joined=-2146473648..}] run function thewii:immersive/player/joined

## Jumped
execute as @a[scores={twis.jump=-2146473648..}] run function thewii:immersive/player/jump