#> thewii:immersive/core/update

# Add objectives
scoreboard objectives add twis.cfg_jump dummy
scoreboard objectives add twis.cfg_heart dummy
scoreboard objectives add twis.cfg_swords dummy
scoreboard objectives add twis.cfg_tools dummy


# Version
function thewii:immersive/core/version

# Updated message
tellraw @a [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Immersive Soundscapes was updated to v","color":"white","bold":false},{"score":{"name":"$version.major","objective":"twis.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.minor","objective":"twis.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.patch","objective":"twis.data"},"color":"white","bold":false},{"text":"!","color":"white","bold":false}]