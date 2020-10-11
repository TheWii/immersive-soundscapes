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

## Settings trigger
execute as @a[scores={ImmerSoundscapes=-2146473648..}] run function thewii:immersive/settings/trigger

## Joined
execute as @a[scores={twis.joined=-2146473648..}] run function thewii:immersive/player/joined

## Jumped
execute as @a[scores={twis.jump=-2146473648..}] run function thewii:immersive/player/jump

## Heartbeat loop
execute as @a[scores={twis.heart_loop=1..}] run function thewii:immersive/player/heartbeat/loop


## Ambience

### Changed dimensions
execute as @a unless score @s twis.dim = @s twis.dimsw run function thewii:immersive/player/dimensions

### Manage ambience transitions
execute as @a unless score @s twis.loc = @s twis.locsw unless score @s twis.trans matches 1.. run scoreboard players set @s twis.trans 1
execute as @a[scores={twis.trans=1..10}] run function thewii:immersive/ambience/transition

### Manage background ambience
execute as @a unless score @s twis.backgr = @s twis.backgrsw unless score @s twis.trans matches 1.. run scoreboard players set @s twis.trans 11
execute as @a[scores={twis.trans=11..20}] run function thewii:immersive/ambience/backgr_switch

### Manage ambience loop
execute as @a[scores={twis.loc=1..100}] if score @s twis.outside matches 1 run function thewii:immersive/ambience/surface_loop
execute as @a[scores={twis.loc=101..300}] run function thewii:immersive/ambience/underground_loop

### Manage inside/outside transition
execute as @a[scores={twis.loc=1..100}] if score @s twis.outside matches 0 if score @s twis.loop matches 1.. unless score @s twis.enter matches 1.. run scoreboard players set @s twis.enter 1
execute as @a[scores={twis.enter=1..}] run function thewii:immersive/ambience/enter