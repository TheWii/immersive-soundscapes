# Install
execute unless data storage thewii:immersive/data {FirstReload:1b} run function thewii:immersive/install

# Loaded message
execute if data storage thewii:immersive/data {Version:"2.2"} run tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Immersive Sounding v","color":"white","bold":false},{"nbt":"Version","storage":"thewii:immersive/data","color":"white","bold":false},{"text":" is loaded! ","color":"white","bold":false},{"translate":"(Seems like you aren't using the resource pack for Immersive Sounding v2.2! Click here to download.)","color":"red","bold":false,"clickEvent":{"action":"open_url","value":"http://www.mediafire.com/file/9eieblz1rdhgiaj/immersive-sounding-resourcepack-v2-2.zip/file"}}]

# Check 1.16
scoreboard players set $1.16 twis.data 0
function thewii:immersive/detect_1.16

# Schedule 20 tick function
function thewii:immersive/main_20

# Reset trigger
scoreboard players enable @a ImmerSounding

# Update
execute unless data storage thewii:immersive/data {Version:"2.2"} run function thewii:immersive/update