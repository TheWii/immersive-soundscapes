#> thewii:immersive/core/load

# Clear schedules
schedule clear thewii:immersive/core/tick/5
schedule clear thewii:immersive/core/tick/20


# Check dependencies
scoreboard players set #load thewii.load 1

# Vanilla+ Lib Modules
execute unless score $vplib.math thewii.load matches 010000 run scoreboard players set #load thewii.load -1

# 1.15
function thewii:immersive/core/check_1.15
execute unless score $1.15 thewii.load matches 1 run scoreboard players set #load thewii.load 0


# Success load
execute if score #load thewii.load matches 1 run function thewii:immersive/core/load2

# Fail load messages
execute if score #load thewii.load matches 0 run tellraw @a [{"text":"[Datapack]: ","color":"red","bold":true},{"text":"Immersive Soundscapes failed to load. It requires Minecraft 1.15 or above.","color":"white","bold":false}]
execute if score #load thewii.load matches -1 run tellraw @a [{"text":"[Datapack]: ","color":"red","bold":true},{"text":"Immersive Soundscapes failed to load. Library files are either missing or there are incompatibilities between installed datapacks. Please, download the ","color":"white","bold":false},{"text":"latest version.","color":"white","bold":false,"underlined":true,"clickEvent": {"action": "open_url","value": "https://github.com/TheWii/immersive-soundscapes/releases/latest"}}]
