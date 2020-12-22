#> thewii:immersive/core/tick/2

# Schedule
schedule function thewii:immersive/core/tick/2 2t replace


# Player

## Update location for 5 players at a time
scoreboard players set $checked_players twis.data 0
execute if score $check_toggle twis.data matches 0 as @a[tag=!twis.checked,limit=5] at @s run function thewii:immersive/player/location/start
execute if score $check_toggle twis.data matches 1 as @a[tag=twis.checked,limit=5] at @s run function thewii:immersive/player/location/start
execute if score $checked_players twis.data matches 0 store success score $check_toggle twis.data if score $check_toggle twis.data matches 0


## Settings trigger
execute as @a[scores={ImmerSoundscapes=-2146473648..}] run function thewii:immersive/settings/trigger

## Heartbeat loop
execute as @a[scores={twis.cfg_heart=1,twis.heart_loop=1..}] run function thewii:immersive/player/heartbeat/loop


## Ambience

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