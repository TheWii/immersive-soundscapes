#> thewii:immersive/core/load

# Clear schedules
schedule clear thewii:immersive/core/tick/5
schedule clear thewii:immersive/core/tick/20


# Check dependencies
scoreboard players set #load thewii.load 1

## Vanilla+ Lib Modules
scoreboard players set #expected.vplib.math vplib.load 1

execute unless score #vplib.math.current vplib.load >= #expected.vplib.math vplib.load run scoreboard players set #load thewii.load -1
execute if score #vplib.math.breaking vplib.load > #expected.vplib.math vplib.load run scoreboard players set #load thewii.load -2

## 1.15
function thewii:immersive/core/check_1.15
execute unless score $1.15 thewii.load matches 1 run scoreboard players set #load thewii.load 0


# Success load
execute if score #load thewii.load matches 1 run function thewii:immersive/core/load2

# Fail load messages
execute if score #load thewii.load matches 0 run tellraw @a [{"text":"[Debug]: ","color":"red","bold":true},{"text":"Immersive Soundscapes failed to load. It requires Minecraft 1.15 or above.","color":"white","bold":false}]
execute if score #load thewii.load matches -1 run tellraw @a [{"text":"[Debug]: ","color":"red","bold":true},{"text":"Immersive Soundscapes failed to load. Vanilla+ Library: Math is either missing or doesn't match the minimum version(Expected: ","color":"white","bold":false},{"score":{"name":"#expected.vplib.math","objective": "vplib.load"},"color":"white","bold":false},{"text":", Got: ","color":"white","bold":false},{"score":{"name":"#vplib.math.current","objective": "vplib.load"},"color":"white","bold":false},{"text":"). Please, download the ","color":"white","bold":false},{"text":"latest version.","color":"white","bold":false,"underlined":true,"clickEvent": {"action": "open_url","value": "https://github.com/TheWii/immersive-soundscapes/releases/latest"}}]
execute if score #load thewii.load matches -2 run tellraw @a [{"text":"[Debug]: ","color":"red","bold":true},{"text":"Immersive Soundscapes failed to load. Vanilla+ Library: Math version is too high and is not supported(Expected: ","color":"white","bold":false},{"score":{"name":"#expected.vplib.math","objective": "vplib.load"},"color":"white","bold":false},{"text":", Got: ","color":"white","bold":false},{"score":{"name":"#vplib.math.breaking","objective": "vplib.load"},"color":"white","bold":false},{"text":"). Wait","color":"white","bold":false},{"text":"latest version.","color":"white","bold":false,"underlined":true,"clickEvent": {"action": "open_url","value": "https://github.com/TheWii/immersive-soundscapes/releases/latest"}}]