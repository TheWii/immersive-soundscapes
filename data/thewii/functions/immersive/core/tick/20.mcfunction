#> thewii:immersive/core/tick/20

# Schedule
schedule function thewii:immersive/core/tick/20 20t replace


# Weather
scoreboard players set #weather twis.data 0
execute if predicate thewii:immersive/weather/is_raining run scoreboard players set #weather twis.data 1
execute if predicate thewii:immersive/weather/is_thundering run scoreboard players set #weather twis.data 2


# Setup players
execute as @a[tag=!twis.setup] run function thewii:immersive/player/setup

# Custom Soundtrack(CST) system
execute if score $soundtracks twis.data matches 1 as @a[scores={twis.cfg_cst=2..4}] at @s run function thewii:immersive/cst/main