# Clear schedules
schedule clear immersive:main_20

# Check required version
scoreboard objectives add twis.data dummy
scoreboard players set $1.15 twis.data 0
function immersive:detect_1.15

# Success
execute if score $1.15 twis.data matches 1 store result score $installed twis.data run data get storage immersive:data Installed
execute if score $1.15 twis.data matches 1 run function immersive:load_2

# Failed
execute if score $1.15 twis.data matches 0 run tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Datapack]: ","color":"red","bold":true},{"text":"Immersive Sounding failed to be loaded. It needs at least minecraft 1.15.","color":"white","bold":false}]
execute if score $1.15 twis.data matches 0 run scoreboard objectives remove twis.data